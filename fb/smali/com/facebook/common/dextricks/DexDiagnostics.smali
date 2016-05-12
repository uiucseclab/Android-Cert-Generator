.class public Lcom/facebook/common/dextricks/DexDiagnostics;
.super Ljava/lang/Object;
.source "wrong_story_type"


# instance fields
.field private final mDataDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/dextricks/DexDiagnostics;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    iput-object v0, p0, Lcom/facebook/common/dextricks/DexDiagnostics;->mDataDirectory:Ljava/lang/String;

    .line 50
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    const-string v2, "DexDiagnostics"

    const-string v3, "unable to find app data directory"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static dumpFileMetadata(Ljava/io/File;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const-string v0, " (deleted)\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    :goto_0
    return-object p1

    .line 172
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    .line 176
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 177
    invoke-static {v3, p1}, Lcom/facebook/common/dextricks/DexDiagnostics;->dumpFileMetadata(Ljava/io/File;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_2
    const-string v0, " s:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getDataDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dumpAllDexDirectories()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexDiagnostics;->mDataDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "n/a"

    .line 142
    :goto_0
    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexDiagnostics;->mDataDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/facebook/common/dextricks/DexDiagnostics;->dumpFileMetadata(Ljava/io/File;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dumpLogcatData()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 150
    :try_start_0
    new-instance v0, Lcom/facebook/debug/logcat/raw/RawLogcatDumper;

    invoke-direct {v0}, Lcom/facebook/debug/logcat/raw/RawLogcatDumper;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/debug/logcat/raw/RawLogcatDumper;->a()Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 152
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    const-string v1, "Exception during logcat dump: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryOwnerUid()I
    .locals 4

    .prologue
    const/4 v0, -0x2

    .line 70
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexDiagnostics;->mDataDirectory:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 85
    :goto_0
    return v0

    .line 75
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexDiagnostics;->mDataDirectory:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/dalvik/DalvikInternals;->getOwnerUid(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 81
    const-class v2, Lcom/facebook/common/dextricks/DexDiagnostics;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to read directory owner uid"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDirectoryOwnedByMe()Z
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexDiagnostics;->getDirectoryOwnerUid()I

    move-result v0

    .line 97
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 99
    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readProcFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 110
    .line 113
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 115
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 118
    if-eqz p2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 129
    :cond_2
    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw v0

    .line 123
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 127
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    .line 126
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method
