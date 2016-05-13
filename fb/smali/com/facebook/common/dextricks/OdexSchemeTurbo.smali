.class public Lcom/facebook/common/dextricks/OdexSchemeTurbo;
.super Lcom/facebook/common/dextricks/OdexScheme;
.source "video renderer is null"


# direct methods
.method protected constructor <init>(I[Lcom/facebook/common/dextricks/DexManifest$Dex;)V
    .locals 5

    .prologue
    .line 39
    .line 47
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 49
    aget-object v3, p2, v1

    invoke-static {v3}, Lcom/facebook/common/dextricks/OdexSchemeTurbo;->makeDexName(Lcom/facebook/common/dextricks/DexManifest$Dex;)Ljava/lang/String;

    move-result-object v3

    .line 50
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    aput-object v3, v2, v4

    .line 51
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3}, Lcom/facebook/common/dextricks/OdexSchemeTurbo;->makeOdexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    move-object v0, v2

    invoke-direct {p0, p1, v0}, Lcom/facebook/common/dextricks/OdexScheme;-><init>(I[Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method constructor <init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/facebook/common/dextricks/OdexSchemeTurbo;-><init>(I[Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    .line 44
    return-void
.end method

.method public static makeDexName(Lcom/facebook/common/dextricks/DexManifest$Dex;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prog-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexManifest$Dex;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dex.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final makeDummyZip(Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 82
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 83
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 84
    :try_start_2
    const-string v0, "Manifest-Version: 1.0"

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    const-string v0, "Created-By: OdexSchemeTurbo"

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 87
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 88
    :try_start_3
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 89
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 90
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-void

    .line 83
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_1
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 81
    :catch_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 89
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_1

    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_3
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 80
    :catch_2
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 90
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_2

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    :goto_5
    throw v0

    .line 88
    :catch_3
    move-exception v5

    :try_start_d
    invoke-static {v1, v5}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 89
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 88
    :cond_0
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_1

    .line 89
    :catch_4
    move-exception v4

    :try_start_e
    invoke-static {v1, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 90
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 89
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_3

    .line 90
    :catch_5
    move-exception v1

    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    .line 88
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public static makeOdexName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/common/dextricks/Fs;->stripLastExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".odex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final configureClassLoader(Ljava/io/File;Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/common/dextricks/OdexSchemeTurbo;->expectedFiles:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 68
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/common/dextricks/OdexSchemeTurbo;->expectedFiles:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/OdexSchemeTurbo;->expectedFiles:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->addDex(Ljava/io/File;Ljava/io/File;)V

    .line 67
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method final makeCompiler(Lcom/facebook/common/dextricks/DexStore;I)Lcom/facebook/common/dextricks/OdexScheme$Compiler;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboCompiler;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboCompiler;-><init>(Lcom/facebook/common/dextricks/DexStore;I)V

    return-object v0
.end method
