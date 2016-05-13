.class public abstract Lcom/facebook/soloader/UnpackingSoSource;
.super Lcom/facebook/soloader/DirectorySoSource;
.source "video_cache_request_aborted"


# instance fields
.field protected final e:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 41
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->e:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;)V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 206
    const-string v0, "fb-UnpackingSoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "regenerating DSO store "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    const-string v5, "dso_manifest"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v6, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    if-ne p1, v4, :cond_2

    .line 212
    :try_start_0
    invoke-static {v6}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->a(Ljava/io/DataInput;)Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .line 218
    :goto_0
    if-nez v0, :cond_9

    .line 219
    :try_start_1
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/facebook/soloader/UnpackingSoSource$Dso;

    invoke-direct {v0, v3}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    move-object v5, v0

    .line 222
    :goto_1
    iget-object v0, p2, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->a:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    invoke-direct {p0, v0}, Lcom/facebook/soloader/UnpackingSoSource;->a([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    .line 223
    const v0, 0x8000

    new-array v7, v0, [B

    .line 224
    :cond_0
    :goto_2
    invoke-virtual {p3}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 225
    invoke-virtual {p3}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->b()Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v8

    move v3, v1

    move v0, v4

    .line 227
    :goto_3
    if-eqz v0, :cond_3

    :try_start_2
    iget-object v9, v5, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->a:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    array-length v9, v9

    if-ge v3, v9, :cond_3

    .line 228
    iget-object v9, v5, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->a:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/facebook/soloader/UnpackingSoSource$Dso;->c:Ljava/lang/String;

    iget-object v10, v8, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->a:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v10, v10, Lcom/facebook/soloader/UnpackingSoSource$Dso;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v5, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->a:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/facebook/soloader/UnpackingSoSource$Dso;->d:Ljava/lang/String;

    iget-object v10, v8, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->a:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v10, v10, Lcom/facebook/soloader/UnpackingSoSource$Dso;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v9

    if-eqz v9, :cond_1

    move v0, v1

    .line 227
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :try_start_3
    const-string v3, "fb-UnpackingSoSource"

    const-string v5, "error reading existing DSO manifest"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 233
    :cond_3
    if-eqz v0, :cond_4

    .line 234
    :try_start_4
    invoke-direct {p0, v8, v7}, Lcom/facebook/soloader/UnpackingSoSource;->a(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 236
    :cond_4
    if-eqz v8, :cond_0

    :try_start_5
    invoke-virtual {v8}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 208
    :catch_1
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 238
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :goto_5
    throw v0

    .line 225
    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 236
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_6
    if-eqz v8, :cond_5

    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v8}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_5
    :goto_7
    :try_start_a
    throw v0

    .line 238
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 236
    :catch_3
    move-exception v3

    invoke-static {v1, v3}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6
    invoke-virtual {v8}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    .line 238
    :cond_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catch_4
    move-exception v1

    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5

    .line 236
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :cond_9
    move-object v5, v0

    goto/16 :goto_1
.end method

.method private a(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[B)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 175
    const-string v0, "fb-UnpackingSoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extracting DSO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->a:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v2, v2, Lcom/facebook/soloader/UnpackingSoSource$Dso;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->a:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v1, v1, Lcom/facebook/soloader/UnpackingSoSource$Dso;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 187
    :goto_0
    :try_start_1
    iget-object v0, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->b:Ljava/io/InputStream;

    .line 188
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 189
    if-le v0, v5, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/facebook/soloader/SysUtil;->a(Ljava/io/FileDescriptor;J)V

    .line 192
    :cond_0
    iget-object v0, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->b:Ljava/io/InputStream;

    const v3, 0x7fffffff

    invoke-static {v1, v0, v3, p2}, Lcom/facebook/soloader/SysUtil;->a(Ljava/io/RandomAccessFile;Ljava/io/InputStream;I[B)I

    .line 193
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 194
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot make file executable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "fb-UnpackingSoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error overwriting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trying to delete and start over"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 183
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 199
    return-void
.end method

.method private a([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 146
    if-nez v4, :cond_0

    .line 147
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to list directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 150
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_4

    .line 151
    aget-object v5, v4, v0

    .line 152
    const-string v2, "dso_state"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dso_lock"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dso_deps"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dso_manifest"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v3, v1

    move v2, v1

    .line 160
    :goto_1
    if-nez v2, :cond_2

    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 161
    aget-object v6, p1, v3

    iget-object v6, v6, Lcom/facebook/soloader/UnpackingSoSource$Dso;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    const/4 v2, 0x1

    .line 160
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    :cond_2
    if-nez v2, :cond_3

    .line 167
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    const-string v3, "fb-UnpackingSoSource"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleting unaccounted-for file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v2}, Lcom/facebook/soloader/SysUtil;->a(Ljava/io/File;)V

    .line 150
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_4
    return-void
.end method

.method private a(Lcom/facebook/soloader/FileLocker;I[B)Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 245
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    const-string v2, "dso_state"

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, v5, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    :try_start_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 250
    if-eq v0, v7, :cond_0

    .line 251
    const-string v0, "fb-UnpackingSoSource"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "dso store "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " regeneration interrupted: wiping clean"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move v0, v1

    .line 257
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 259
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    const-string v6, "dso_deps"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v6, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v4, v8

    new-array v4, v4, [B

    .line 263
    invoke-virtual {v6, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    array-length v9, v4

    if-eq v8, v9, :cond_1

    .line 264
    const-string v0, "fb-UnpackingSoSource"

    const-string v8, "short read of so store deps file: marking unclean"

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 268
    :cond_1
    invoke-static {v4, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 269
    const-string v0, "fb-UnpackingSoSource"

    const-string v4, "deps mismatch on deps store: regenerating"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 273
    :cond_2
    if-nez v0, :cond_d

    .line 274
    const-string v4, "fb-UnpackingSoSource"

    const-string v8, "so store dirty: regenerating"

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lcom/facebook/soloader/UnpackingSoSource;->b(Ljava/io/File;B)V

    .line 277
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->a()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v8

    .line 278
    :try_start_2
    invoke-virtual {v8}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->a()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    move-result-object v4

    .line 279
    invoke-virtual {v8}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->b()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v9

    .line 280
    :try_start_3
    invoke-direct {p0, v0, v4, v9}, Lcom/facebook/soloader/UnpackingSoSource;->a(BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 281
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 282
    :cond_3
    if-eqz v8, :cond_4

    :try_start_5
    invoke-virtual {v8}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 284
    :cond_4
    :goto_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 286
    if-nez v4, :cond_b

    .line 334
    :goto_2
    return v1

    .line 255
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 257
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_3
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v3, v1}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_4

    .line 279
    :catch_3
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 281
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v9, :cond_6

    if-eqz v1, :cond_8

    :try_start_9
    invoke-virtual {v9}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_6
    :goto_6
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 277
    :catch_4
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 282
    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_7
    if-eqz v8, :cond_7

    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v8}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_7
    :goto_8
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 261
    :catch_5
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 284
    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_9
    if-eqz v3, :cond_a

    :try_start_f
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    :goto_a
    throw v0

    .line 281
    :catch_6
    move-exception v2

    :try_start_10
    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 282
    :catchall_4
    move-exception v0

    move-object v1, v3

    goto :goto_7

    .line 281
    :cond_8
    invoke-virtual {v9}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_6

    .line 282
    :catch_7
    move-exception v2

    :try_start_11
    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 284
    :catchall_5
    move-exception v0

    goto :goto_9

    .line 282
    :cond_9
    invoke-virtual {v8}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_8

    .line 284
    :catch_8
    move-exception v1

    invoke-static {v3, v1}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_a
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_a

    .line 292
    :cond_b
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$1;

    move-object v1, p0

    move-object v3, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/soloader/UnpackingSoSource$1;-><init>(Lcom/facebook/soloader/UnpackingSoSource;Ljava/io/File;[BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Ljava/io/File;Lcom/facebook/soloader/FileLocker;)V

    .line 328
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_c

    .line 329
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SoSync:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_b
    move v1, v7

    .line 334
    goto/16 :goto_2

    .line 331
    :cond_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    .line 281
    :catchall_6
    move-exception v0

    move-object v1, v3

    goto :goto_5

    .line 257
    :catchall_7
    move-exception v0

    goto/16 :goto_3

    :cond_d
    move-object v4, v3

    goto/16 :goto_1
.end method

.method public static final b(Ljava/io/File;B)V
    .locals 7

    .prologue
    .line 133
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 134
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 135
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 136
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 137
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 133
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.end method

.method protected final a(I)V
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/soloader/SysUtil;->b(Ljava/io/File;)V

    .line 370
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    const-string v2, "dso_lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    invoke-static {v0}, Lcom/facebook/soloader/FileLocker;->a(Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object v1

    .line 373
    :try_start_0
    const-string v0, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locked dso store "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->b()[B

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/soloader/UnpackingSoSource;->a(Lcom/facebook/soloader/FileLocker;I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 380
    :goto_0
    if-eqz v0, :cond_1

    .line 381
    const-string v1, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "releasing dso store lock for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v0}, Lcom/facebook/soloader/FileLocker;->close()V

    .line 387
    :goto_1
    return-void

    .line 377
    :cond_0
    :try_start_1
    const-string v0, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dso store is up-to-date: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 384
    :cond_1
    const-string v0, "fb-UnpackingSoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not releasing dso store lock for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (syncer thread started)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 381
    const-string v2, "fb-UnpackingSoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "releasing dso store lock for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v1}, Lcom/facebook/soloader/FileLocker;->close()V

    .line 384
    :goto_2
    throw v0

    :cond_2
    const-string v1, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not releasing dso store lock for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/soloader/UnpackingSoSource;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (syncer thread started)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected b()[B
    .locals 7

    .prologue
    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 350
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->a()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;

    move-result-object v3

    const/4 v1, 0x0

    .line 351
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->a()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    move-result-object v0

    iget-object v4, v0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->a:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    .line 352
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 353
    array-length v0, v4

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 355
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/facebook/soloader/UnpackingSoSource$Dso;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/facebook/soloader/UnpackingSoSource$Dso;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V

    .line 359
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 360
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 361
    return-object v0

    .line 350
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v3}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
