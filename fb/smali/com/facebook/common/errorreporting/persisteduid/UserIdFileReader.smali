.class public Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;
.super Ljava/lang/Object;
.source "video_chaining_request_result"

# interfaces
.implements Lcom/facebook/acra/CustomReportDataSupplier;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;->a:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;->b:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 42
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 43
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileUtils;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-static {v0}, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/facebook/common/errorreporting/persisteduid/UserIdFileReader;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
