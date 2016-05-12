package sample;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.input.DragEvent;
import javafx.scene.input.Dragboard;
import javafx.scene.input.TransferMode;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;
import javafx.stage.Stage;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;

/*
    APK Signer by Timothy Miller and Jake Hamill

    -- Features: drag unsigned APK onto application window to output
    [apkname]_signed.apk in the current directory.

    Two signing procedures:
    1. Random, but believable certificate. Uses location information
    of company headquarters among many other educated guesses to generate
    a random certificate that should pass a simple heuristic test for apk integrity

    2. Resign with original certificate. Uses .PEM files from decompiled apk
    folder to recreate the certificate used to sign it by the original developer.

 */

public class Main extends Application {


    private static final int WINDOW_WIDTH = 960;
    private static final int WINDOW_HEIGHT = 480;

    private Rectangle rectLeft;
    private Rectangle rectRight;

    private String password = "custom_password_here";

    public static void main(String[] args) {
        Application.launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        primaryStage.setTitle("APK Recompile & Certificate Signer");
        Group root = new Group();

        final Text tvRandom = new Text(WINDOW_WIDTH / 8, 48, "Random but believable certificate");
        tvRandom.setScaleX(2.0);
        tvRandom.setScaleY(2.0);

        final Text tvOriginal = new Text(WINDOW_WIDTH / 2 + WINDOW_WIDTH / 4, 48, "Original certificate");
        tvOriginal.setScaleX(2.0);
        tvOriginal.setScaleY(2.0);

        rectLeft = new Rectangle(0, 0, WINDOW_WIDTH / 2, WINDOW_HEIGHT);
        rectLeft.setFill(Color.WHITE);
        rectLeft.setStroke(Color.BLACK);
        rectRight = new Rectangle(WINDOW_WIDTH / 2, 0, WINDOW_WIDTH / 2, WINDOW_HEIGHT);
        rectRight.setFill(Color.WHITE);
        rectRight.setStroke(Color.BLACK);
        root.getChildren().add(rectLeft);
        root.getChildren().add(rectRight);


        Scene scene = new Scene(root, WINDOW_WIDTH, WINDOW_HEIGHT);
        scene.setOnDragOver(new EventHandler<DragEvent>() {
            @Override
            public void handle(DragEvent event) {
                if (event.getX() < WINDOW_WIDTH / 2) {
                    rectLeft.setFill(Color.GREEN);
                    rectRight.setFill(Color.WHITE);
                } else {
                    rectRight.setFill(Color.GREEN);
                    rectLeft.setFill(Color.WHITE);
                }
                Dragboard db = event.getDragboard();
                if (db.hasFiles()) {
                    event.acceptTransferModes(TransferMode.COPY);
                } else {
                    event.consume();
                }
            }
        });

        scene.setOnDragExited(new EventHandler<DragEvent>() {
            @Override
            public void handle(DragEvent event) {
                rectLeft.setFill(Color.WHITE);
                rectRight.setFill(Color.WHITE);
                rectLeft.setStroke(Color.BLACK);
                rectRight.setStroke(Color.BLACK);
            }
        });

        // Dropping over surface
        scene.setOnDragDropped(new EventHandler<DragEvent>() {
            @Override
            public void handle(DragEvent event) {

                Dragboard db = event.getDragboard();
                boolean success = false;
                if (db.hasFiles()) {
                    success = true;
                    String filePath = null;

                    for (File file : db.getFiles()) {
                        if (file.isDirectory()) {
                            filePath = file.getAbsolutePath();
                            rectLeft.setFill(Color.WHITE);
                            rectRight.setFill(Color.WHITE);
                            compileProject(filePath, event.getX() >= Main.WINDOW_WIDTH / 2);
                        }
                    }
                }
                event.setDropCompleted(success);
                event.consume();
            }
        });


        root.getChildren().add(tvRandom);
        root.getChildren().add(tvOriginal);
        primaryStage.setScene(scene);
        primaryStage.show();
    }


    private void compileProject(String folderPath, boolean useOriginalInfo) {
        String[] temp = folderPath.split("/");
        String myCommand = "apktool b " + folderPath;
        runScript(myCommand);
        String[] names = folderPath.split("/");
        String apkName = names[names.length - 1];

        // Should output into filePath/dist/apkName
        // [apkName].apk
        String pathToUnsignedApk = folderPath + "/dist/" + apkName + ".apk";
        // Sign APK magic happens here

        String keyStorePath = generateKeystore(folderPath, useOriginalInfo);
        if (keyStorePath == null) {
            System.out.println("Failure to find .RSA file");
            return;
        }

        signAPK(keyStorePath, pathToUnsignedApk, password);


    }


    private String generateKeystore(String folderPath, boolean useOriginalInfo) {

        String folderWithRSAFileMaybe = folderPath + "/original/META-INF/";
        File f = new File(folderWithRSAFileMaybe);
        ArrayList<String> names = new ArrayList<String>(Arrays.asList(f.list()));
        String rsaFileName = null;
        for (String fileName : names) {
            if (fileName.contains(".RSA")) {
                rsaFileName = fileName;
            }
        }
        if (rsaFileName == null) {
            return null;
        }
        String pathToKeystore = "";
        String[] commands = new String[0];

        if (useOriginalInfo) {
            // .RSA to .pem
            //openssl pkcs7 -in CERT.RSA -inform DER -print_certs -out cert.pem
            String fullPath = folderPath + "/original/META-INF/" + rsaFileName;
            String pathToPem = folderPath + "/original/META-INF/cert.pem";
            String command = "openssl pkcs7 -in " + fullPath + " -inform DER -print_certs -out " + pathToPem;
            runScript(command);
            pathToPem = folderWithRSAFileMaybe + "cert.pem";
            commands = parsePemFile(pathToPem);
        } else {
            // Wolfram alpha

            // TODO
        }


        String keystoreName = "temp_keystore.keystore";
        pathToKeystore = folderPath + "/" + keystoreName;

        String createNewKeystoreCommand = "keytool -genkey -v " +
                "-keystore " + pathToKeystore + " -alias "
                + pathToKeystore + " -alias alias_name -keyalg " +
                "RSA -keysize 2048 -validity 10000";

        // password first
        // Order of operations
        // first and last name
        // organizational unit
        // organization
        // city or locality
        // state
        // two-letter country
        // enter "yes"
        // reenter password
        // reenter password
        String otherPassword = "whatis";
        createNewKeystoreCommand += "\n" + otherPassword;
        createNewKeystoreCommand += "\n" + otherPassword;
        for (int i = commands.length - 1; i >= 0; i--) {
            createNewKeystoreCommand += "\n" + commands[i];
        }
        createNewKeystoreCommand += "\nyes";
        createNewKeystoreCommand += "\n"; // + otherPassword;
        createNewKeystoreCommand += "\n"; // + otherPassword + "\n";

        runScript(createNewKeystoreCommand);

        return pathToKeystore;
    }


    private void signAPK(String pathToKeystore, String pathToUnsignedApk, String keystorePassword) {
        String[] names = pathToUnsignedApk.split("/");
        String apkName = names[names.length - 1];
        String aliasName = apkName.replace(".apk", "");
        aliasName = aliasName + "_signed" + ".apk";
        String folderPath = pathToUnsignedApk.replace(apkName, "");
        aliasName = folderPath + aliasName;
        keystorePassword = "whatis";
        // jarsigner -keystore <keystore_file> -storepass <storepassword> <filenameTosigned> <alias>

        String myCommand = "jarsigner -keystore " + pathToKeystore + " -storepass " + keystorePassword +
                " " + pathToUnsignedApk + " customalias";
        runScript(myCommand);

        // PROBLEM
        // // Certificate chain not found for: mname.  mname must reference a valid KeyStore key entry containing a private key and corresponding public key certificate chain.



        /*
        // Show dialog of Sucess and path to signed apk
        Alert alert = new Alert(Alert.AlertType.INFORMATION, "APK compiled & signed successfully!\n\n" + pathToSignedApk, ButtonType.OK);
        alert.showAndWait();

        if (alert.getResult() == ButtonType.OK) {
            System.out.println("Closing app. This is a feature, not a bug");
            //runScript("open /Users/Tim/Desktop/hello.txt");
            System.exit(0);
        }
        */
        Logcat.i("APK compiled & signed successfully!\n\n" + aliasName);

    }


    public static void runScript(String command) {
        Logcat.i("Terminal:" + command);
        try {
            Runtime.getRuntime().exec(command).waitFor();
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }


    public static String[] parsePemFile(String pathToPem) {
        String[] commands = new String[7];
        String fileContents = readFile(pathToPem);
        int end = fileContents.indexOf("\nissuer=/");
        String s = fileContents.substring(0, end);
        s = s.replaceFirst("subject=/C=", "");
        s = s.replaceFirst("/ST=", ",");
        s = s.replaceFirst("/L=", ",");
        s = s.replaceFirst("/O=", ",");
        s = s.replaceFirst("/OU=", ",");
        s = s.replaceFirst("/CN=", ",");
        commands = s.split(",");
        return commands;
    }

    public static String readFile(String path) {
        byte[] encoded = new byte[0];
        try {
            encoded = Files.readAllBytes(Paths.get(path));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new String(encoded, StandardCharsets.UTF_8);
    }

}