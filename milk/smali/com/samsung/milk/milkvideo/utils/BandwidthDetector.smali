.class public Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;
.super Ljava/lang/Object;
.source "BandwidthDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;
    }
.end annotation


# static fields
.field public static final BANDWIDTH_HIGH:I = 0x2

.field public static final BANDWIDTH_LOW:I = 0x0

.field public static final BANDWIDTH_MEDIUM:I = 0x1

.field private static final MED_HIGH_THRESHOLD_MBPS:F = 6.0f

.field private static final TEST_FILE:Ljava/lang/String; = "https://nachosimages.s3.amazonaws.com/downloadSpeedTestFile/test_tiger.jpg"

.field private static final TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private bandwidthTask:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;

.field private fileSizeInBytes:J

.field private handler:Landroid/os/Handler;

.field private startTime:J

.field timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

.field private timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/utils/TimeService;)V
    .locals 1
    .param p1, "timeService"    # Lcom/samsung/milk/milkvideo/utils/TimeService;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->applicationContext:Landroid/content/Context;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->handler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$1;-><init>(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->timeoutRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->bandwidthTask:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->calculateNetworkBandwidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->startTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->fileSizeInBytes:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->writeBandwidthToSharedPreferences(I)V

    return-void
.end method

.method private calculateNetworkBandwidth()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->startTime:J

    .line 64
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v4, Ljava/net/URL;

    const-string v5, "https://nachosimages.s3.amazonaws.com/downloadSpeedTestFile/test_tiger.jpg"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 65
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpGet;
    const-string v4, "Cache-Control"

    const-string v5, "no-cache"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 67
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 69
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 70
    const-string v4, "Content-Length"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->fileSizeInBytes:J
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    .end local v1    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httpRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MalformedURLException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URISyntaxException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v0

    .line 76
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientProtocolException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeBandwidthToSharedPreferences(I)V
    .locals 4
    .param p1, "bandwidth"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->applicationContext:Landroid/content/Context;

    const-string v2, "nachos_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bandwidth"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method


# virtual methods
.method protected getBandwidthTask()Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->bandwidthTask:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;

    return-object v0
.end method

.method public getCurrentBandwidth()I
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->applicationContext:Landroid/content/Context;

    const-string v1, "nachos_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bandwidth"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateNetworkBandwidth()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;-><init>(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->bandwidthTask:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;

    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->bandwidthTask:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
.end method
