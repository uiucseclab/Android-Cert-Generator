.class public Lcom/facebook/video/analytics/VideoAnalyticsModule;
.super Lcom/facebook/inject/AbstractLibraryModule;
.source "result"


# annotations
.annotation build Lcom/facebook/inject/InjectorModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/inject/AbstractLibraryModule;-><init>()V

    .line 51
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/facebook/video/analytics/VideoCacheCounters;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/analytics/logger/AnalyticsLogger;Lcom/facebook/common/network/FbNetworkManager;Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;)Lcom/facebook/video/analytics/VideoPerformanceTracking;
    .locals 3
    .annotation build Lcom/facebook/inject/ProviderMethod;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "video-performance-tracking.data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/facebook/video/analytics/TimedMicroStorage;

    const/16 v2, 0x7530

    invoke-direct {v1, v0, p2, v2, p5}, Lcom/facebook/video/analytics/TimedMicroStorage;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;ILcom/facebook/common/errorreporting/AbstractFbErrorReporter;)V

    .line 84
    new-instance v0, Lcom/facebook/video/analytics/VideoPerformanceTracking;

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/facebook/video/analytics/VideoPerformanceTracking;-><init>(Lcom/facebook/video/analytics/VideoCacheCounters;Lcom/facebook/analytics/logger/AnalyticsLogger;Lcom/facebook/common/network/FbNetworkManager;Lcom/facebook/video/analytics/TimedMicroStorage;)V

    .line 90
    invoke-virtual {v0}, Lcom/facebook/video/analytics/VideoPerformanceTracking;->a()V

    .line 91
    return-object v0
.end method


# virtual methods
.method protected configure()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/facebook/inject/AbstractModule;->getBinder()Lcom/facebook/inject/BinderImpl;

    .line 66
    return-void
.end method
