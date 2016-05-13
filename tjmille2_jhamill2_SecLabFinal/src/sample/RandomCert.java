package sample;

import com.wolfram.alpha.*;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.Normalizer;
import java.util.*;

/**
 * Created by Jake on 5/5/16.
 */
public class RandomCert {
    public String appid = "89TRTX-QWKVG8852W";
    private Map<String, String> countryCodes = new HashMap<>();
    private ArrayList<String> americanMales = new ArrayList<>();
    private ArrayList<String> americanFemales = new ArrayList<>();
    private ArrayList<String> americanSurnames = new ArrayList<>();
    private ArrayList<String> chineseMales = new ArrayList<>();
    private ArrayList<String> chineseFemales = new ArrayList<>();
    private ArrayList<String> chineseSurnames = new ArrayList<>();
    private ArrayList<String> spanishMales = new ArrayList<>();
    private ArrayList<String> spanishFemales = new ArrayList<>();
    private ArrayList<String> spanishSurnames = new ArrayList<>();
    private ArrayList<String> germanMales = new ArrayList<>();
    private ArrayList<String> germanFemales = new ArrayList<>();
    private ArrayList<String> germanSurnames = new ArrayList<>();

    public RandomCert() {
        loadCountryCodes("./Country_Codes.csv");
        loadAmericanNames("./american_names.csv");
        loadChineseNames("./chinese_names.csv");
        loadSpanishNames("./spanish_names.csv");
        loadGermanNames("./german_names.csv");
    }

    private static String flattenToAscii(String string) {
        StringBuilder sb = new StringBuilder(string.length());
        string = Normalizer.normalize(string, Normalizer.Form.NFD);
        for (char c : string.toCharArray()) {
            if (c <= '\u007F') sb.append(c);
        }
        return sb.toString();
    }

    public static String getWebsite(String packageName) {
        String url = null;
        String httpBase = "https://play.google.com/store/apps/details?id=" + packageName;
        try {
            Document doc = Jsoup.connect(httpBase).get();
            String websiteText = doc.toString();
            String tag = "<a class=\"dev-link\" href=\"";
            int indexWebsiteTag = websiteText.indexOf(tag);
            if (indexWebsiteTag != -1) {
                int endQuoteIndex = websiteText.indexOf("\"", indexWebsiteTag + tag.length());
                if (endQuoteIndex != -1) {
                    url = websiteText.substring(indexWebsiteTag + tag.length(), endQuoteIndex);
                } else {
                    Logcat.i("No end tag");
                }
            } else {
                Logcat.i("No start tag");
            }
        } catch (IOException e) {
            e.printStackTrace();
            Logcat.i("Retrying connection to Google Play...");
        }

        return url;
    }

    public static String getDeveloperName(String packageName) {
        Logcat.i(packageName);
        String url = null;
        String httpBase = "https://play.google.com/store/apps/details?id=" + packageName;
        try {
            Document doc = Jsoup.connect(httpBase).get();
            String websiteText = doc.toString();
            //Logcat.i(websiteText);
            String tag = "<span itemprop=\"name\">";
            int indexWebsiteTag = websiteText.indexOf(tag);
            if (indexWebsiteTag != -1) {
                int endQuoteIndex = websiteText.indexOf("<", indexWebsiteTag + tag.length());
                if (endQuoteIndex != -1) {
                    url = websiteText.substring(indexWebsiteTag + tag.length(), endQuoteIndex);
                } else {
                    Logcat.i("No end tag");
                }
            } else {
                Logcat.i("No start tag");
            }
        } catch (IOException e) {
            e.printStackTrace();
            Logcat.i("Failed to connect to Google Play...");
        }

        return url;
    }

    public static String getPackageName(String folderPath) {

        String flag = "package=\"";
        try {
            String manifest = readFile(folderPath + "/AndroidManifest.xml");
            int start = manifest.indexOf(flag);
            if (start != -1) {
                start = start + flag.length();
                int end = manifest.substring(start).indexOf("\"");
                if (end != -1) {
                    return manifest.substring(start).substring(0, end);
                    //return manifest.substring(start, end);
                } else {
                    Logcat.i("No end tag");
                }
            } else {
                Logcat.i("No start tag");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        return "";
    }

    public static String readFile(String file) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(file));
        String line = null;
        StringBuilder stringBuilder = new StringBuilder();
        String ls = System.getProperty("line.separator");

        while ((line = reader.readLine()) != null) {
            stringBuilder.append(line);
            stringBuilder.append(ls);
        }

        return stringBuilder.toString();
    }

    public String determineNameFromCountry(String country) {
        String continent = callWolfram(country + " continent", "Result");
        String name = "";
        Random r = new Random();
        if (continent.contains("South America")) {
            int i = r.nextInt(1);
            if (i == 0) {
                //pick male
                i = r.nextInt(spanishMales.size());
                name += spanishMales.get(i);
            } else {
                //pick female
                i = r.nextInt(spanishFemales.size());
                name += spanishFemales.get(i);
            }
            i = r.nextInt(spanishSurnames.size());
            name += " ";
            name += spanishSurnames.get(i);
        } else if (continent.contains("Asia")) {
            int i = r.nextInt(1);
            if (i == 0) {
                //pick male
                i = r.nextInt(chineseMales.size());
                name += chineseMales.get(i);
            } else {
                //pick female
                i = r.nextInt(chineseFemales.size());
                name += chineseFemales.get(i);
            }
            i = r.nextInt(chineseSurnames.size());
            name += " ";
            name += chineseSurnames.get(i);
        } else if (continent.contains("Europe")) {
            int i = r.nextInt(2);
            if (i == 0) {
                i = r.nextInt(1);
                if (i == 0) {
                    //pick male
                    i = r.nextInt(germanMales.size());
                    name += germanMales.get(i);
                } else {
                    //pick female
                    i = r.nextInt(germanFemales.size());
                    name += germanFemales.get(i);
                }
                i = r.nextInt(germanSurnames.size());
                name += " ";
                name += germanSurnames.get(i);
            } else if (i == 1) {
                i = r.nextInt(1);
                if (i == 0) {
                    //pick male
                    i = r.nextInt(spanishMales.size());
                    name += spanishMales.get(i);
                } else {
                    //pick female
                    i = r.nextInt(spanishFemales.size());
                    name += spanishFemales.get(i);
                }
                i = r.nextInt(spanishSurnames.size());
                name += " ";
                name += spanishSurnames.get(i);
            } else {
                i = r.nextInt(1);
                if (i == 0) {
                    //pick male
                    i = r.nextInt(americanMales.size());
                    name += americanMales.get(i);
                } else {
                    //pick female
                    i = r.nextInt(americanFemales.size());
                    name += americanFemales.get(i);
                }
                i = r.nextInt(americanSurnames.size());
                name += " ";
                name += americanSurnames.get(i);
            }
        } else {
            int i = r.nextInt(1);
            if (i == 0) {
                //pick male
                i = r.nextInt(americanMales.size());
                name += americanMales.get(i);
            } else {
                //pick female
                i = r.nextInt(americanFemales.size());
                name += americanFemales.get(i);
            }
            i = r.nextInt(americanSurnames.size());
            name += " ";
            name += americanSurnames.get(i);
        }
        return name;
    }

    public String[] getCityStateCountry(String input) {
        String location = getLocation(input);
        if(location == null) {
            Logcat.i("Wolfram Alpha issues");
            System.exit(0);
        }
        String[] locArr = location.split(",");
        String city = locArr[0];
        String state;
        String country;
        if (locArr.length == 3) {
            state = locArr[1];
            country = locArr[2];
        } else {
            state = locArr[0];
            country = locArr[1];
        }
        state = state.replaceFirst(" ", "");
        country = country.replaceFirst(" ", "");
        String cc = countryCodes.get(country);
        //if we do not find the country code, randomly pick one from the list
        if (cc == null) {
            Random random = new Random();
            List<String> keys = new ArrayList<String>(countryCodes.keySet());
            String randomKey = keys.get(random.nextInt(keys.size()));
            cc = countryCodes.get(randomKey);
        }
        return new String[]{city, state, cc};
    }

    public boolean loadCountryCodes(String filePath) {
        BufferedReader br = null;
        String line = "";
        boolean success = true;
        try {
            br = new BufferedReader(new FileReader(filePath));
            //read in file, line by line
            while ((line = br.readLine()) != null) {
                //split the CSV line into an array of values
                String[] lineData = line.split(",");
                if (lineData.length == 2) {
                    countryCodes.put(lineData[0], lineData[1]);
                }
            }

        } catch (FileNotFoundException e) {
            //alert the user of the incorrect file path
            System.out.println("No file was found at the given file path.  Make sure your file path argument is correct when running this program.");
            success = false;
        } catch (IOException e) {
            e.printStackTrace();
            success = false;
        } finally {
            if (br != null) {
                //close file
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return success;
        }
    }

    public boolean loadAmericanNames(String filePath) {
        BufferedReader br = null;
        String line = "";
        boolean success = true;
        try {
            br = new BufferedReader(new FileReader(filePath));
            //read in file, line by line
            while ((line = br.readLine()) != null) {
                //split the CSV line into an array of values
                String[] lineData = line.split(",");
                if (lineData.length == 3) {
                    americanMales.add(lineData[0]);
                    americanFemales.add(lineData[1]);
                    americanSurnames.add(lineData[2].charAt(0) + lineData[2].substring(1).toLowerCase());
                }
            }

        } catch (FileNotFoundException e) {
            //alert the user of the incorrect file path
            System.out.println("No file was found at the given file path.  Make sure your file path argument is correct when running this program.");
            success = false;
        } catch (IOException e) {
            e.printStackTrace();
            success = false;
        } finally {
            if (br != null) {
                //close file
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return success;
        }
    }

    public boolean loadChineseNames(String filePath) {
        BufferedReader br = null;
        String line = "";
        boolean success = true;
        try {
            br = new BufferedReader(new FileReader(filePath));
            //read in file, line by line
            while ((line = br.readLine()) != null) {
                //split the CSV line into an array of values
                String[] lineData = line.split(",");
                if (lineData.length == 3) {
                    chineseMales.add(lineData[0]);
                    chineseFemales.add(lineData[1]);
                    chineseSurnames.add(lineData[2]);
                } else if (lineData.length == 2) {
                    chineseMales.add(lineData[0]);
                    chineseFemales.add(lineData[1]);
                }
            }

        } catch (FileNotFoundException e) {
            //alert the user of the incorrect file path
            System.out.println("No file was found at the given file path.  Make sure your file path argument is correct when running this program.");
            success = false;
        } catch (IOException e) {
            e.printStackTrace();
            success = false;
        } finally {
            if (br != null) {
                //close file
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return success;
        }
    }

    public boolean loadSpanishNames(String filePath) {
        BufferedReader br = null;
        String line = "";
        boolean success = true;
        try {
            br = new BufferedReader(new FileReader(filePath));
            //read in file, line by line
            while ((line = br.readLine()) != null) {
                //split the CSV line into an array of values
                String[] lineData = line.split(",");
                if (lineData.length == 3) {
                    spanishMales.add(lineData[0]);
                    spanishFemales.add(lineData[1]);
                    spanishSurnames.add(lineData[2]);
                }
            }

        } catch (FileNotFoundException e) {
            //alert the user of the incorrect file path
            System.out.println("No file was found at the given file path.  Make sure your file path argument is correct when running this program.");
            success = false;
        } catch (IOException e) {
            e.printStackTrace();
            success = false;
        } finally {
            if (br != null) {
                //close file
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return success;
        }
    }

    public boolean loadGermanNames(String filePath) {
        BufferedReader br = null;
        String line = "";
        boolean success = true;
        try {
            br = new BufferedReader(new FileReader(filePath));
            //read in file, line by line
            while ((line = br.readLine()) != null) {
                //split the CSV line into an array of values
                String[] lineData = line.split(",");
                if (lineData.length == 3) {
                    String first = lineData[0];
                    if (first.contains("/")) {
                        int i = first.indexOf(" /");
                        germanMales.add(first.substring(0, i));
                    } else {
                        germanMales.add(first);
                    }
                    first = lineData[1];
                    if (first.contains("/")) {
                        int i = first.indexOf(" /");
                        germanFemales.add(first.substring(0, i));
                    } else {
                        germanFemales.add(first);
                    }
                    String last = lineData[2];
                    int begin = last.indexOf(" ");
                    int end = last.indexOf(" ", 4);
                    String surname = last.substring(begin, end);
                    if (!surname.equals("")) {
                        germanSurnames.add(surname);
                    }
                }
            }

        } catch (FileNotFoundException e) {
            //alert the user of the incorrect file path
            System.out.println("No file was found at the given file path.  Make sure your file path argument is correct when running this program.");
            success = false;
        } catch (IOException e) {
            e.printStackTrace();
            success = false;
        } finally {
            if (br != null) {
                //close file
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return success;
        }
    }

    public String getLocation(String input) {
        return callWolfram(input + " location", "Result");
    }

    public boolean isName(String name) {
        String result = callWolfram(name, "Input interpretation");
        if (result != null && result.toLowerCase().contains(name.toLowerCase()) && (result.contains("name") || result.contains("surname"))) {
            return true;
        }
        return false;
    }

    public String callWolfram(String input, String result) {

        // The WAEngine is a factory for creating WAQuery objects,
        // and it also used to perform those queries. You can set properties of
        // the WAEngine (such as the desired API output format types) that will
        // be inherited by all WAQuery objects created from it. Most applications
        // will only need to crete one WAEngine object, which is used throughout
        // the life of the application.
        WAEngine engine = new WAEngine();

        // These properties will be set in all the WAQuery objects created from this WAEngine.
        engine.setAppID(appid);
        engine.addFormat("plaintext");

        // Create the query.
        WAQuery query = engine.createQuery();

        // Set properties of the query.
        query.setInput(input);

        try {
            // This sends the URL to the Wolfram|Alpha server, gets the XML result
            // and parses it into an object hierarchy held by the WAQueryResult object.
            WAQueryResult queryResult = engine.performQuery(query);

            if (queryResult.isError()) {
                System.out.println("Query error");
                System.out.println("  error code: " + queryResult.getErrorCode());
                System.out.println("  error message: " + queryResult.getErrorMessage());
            } else if (!queryResult.isSuccess()) {
                System.out.println("Query was not understood; no results available.");
            } else {
                // Got a result.
                WAPod[] pods = queryResult.getPods();
                for (WAPod pod : queryResult.getPods()) {
                    if (pod.getTitle().contains(result) && !pod.isError()) {
                        for (WASubpod subpod : pod.getSubpods()) {
                            for (Object element : subpod.getContents()) {
                                if (element instanceof WAPlainText) {
                                    return ((WAPlainText) element).getText();
                                }
                            }
                        }
                    }
                }
                // We ignored many other types of Wolfram|Alpha output, such as warnings, assumptions, etc.
                // These can be obtained by methods of WAQueryResult or objects deeper in the hierarchy.
            }
        } catch (WAException e) {
            e.printStackTrace();
        }
        return null;
    }
}
