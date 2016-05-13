.class public final Lcom/facebook/video/analytics/VideoPerformanceTrackingMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "results_page_mixed_media"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/video/analytics/VideoPerformanceTracking;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lcom/facebook/video/analytics/VideoPerformanceTracking;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoPerformanceTracking;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/video/analytics/VideoPerformanceTrackingMethodAutoProvider;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/video/analytics/VideoPerformanceTrackingMethodAutoProvider;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/video/analytics/VideoPerformanceTrackingMethodAutoProvider;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->a()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/facebook/inject/ScopeSet;->b()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v3

    .line 48
    :try_start_1
    const-class v0, Lcom/facebook/inject/SingletonScope;

    invoke-interface {p0, v0}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/SingletonScope;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 51
    :try_start_2
    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/video/analytics/VideoPerformanceTrackingMethodAutoProvider;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoPerformanceTracking;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/analytics/VideoPerformanceTrackingMethodAutoProvider;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :cond_1
    sget-object v0, Lcom/facebook/video/analytics/VideoPerformanceTrackingMethodAutoProvider;->a:Lcom/facebook/video/analytics/VideoPerformanceTracking;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    throw v0

    .line 59
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoPerformanceTracking;
    .locals 6

    .prologue
    .line 16
    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p0}, Lcom/facebook/video/analytics/VideoCacheCounters;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoCacheCounters;

    move-result-object v1

    check-cast v1, Lcom/facebook/video/analytics/VideoCacheCounters;

    invoke-static {p0}, Lcom/facebook/common/executors/ScheduledExecutorService_BackgroundExecutorServiceMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0}, Lcom/facebook/analytics/AnalyticsLoggerMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/analytics/logger/AnalyticsLogger;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics/logger/AnalyticsLogger;

    invoke-static {p0}, Lcom/facebook/common/network/FbNetworkManager;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/network/FbNetworkManager;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/network/FbNetworkManager;

    invoke-static {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    move-result-object v5

    check-cast v5, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;

    invoke-static/range {v0 .. v5}, Lcom/facebook/video/analytics/VideoAnalyticsModule;->a(Landroid/content/Context;Lcom/facebook/video/analytics/VideoCacheCounters;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/analytics/logger/AnalyticsLogger;Lcom/facebook/common/network/FbNetworkManager;Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;)Lcom/facebook/video/analytics/VideoPerformanceTracking;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    .line 16
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/inject/AbstractProvider;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p0}, Lcom/facebook/video/analytics/VideoCacheCounters;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoCacheCounters;

    move-result-object v1

    check-cast v1, Lcom/facebook/video/analytics/VideoCacheCounters;

    invoke-static {p0}, Lcom/facebook/common/executors/ScheduledExecutorService_BackgroundExecutorServiceMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0}, Lcom/facebook/analytics/AnalyticsLoggerMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/analytics/logger/AnalyticsLogger;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics/logger/AnalyticsLogger;

    invoke-static {p0}, Lcom/facebook/common/network/FbNetworkManager;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/network/FbNetworkManager;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/network/FbNetworkManager;

    invoke-static {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    move-result-object v5

    check-cast v5, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;

    invoke-static/range {v0 .. v5}, Lcom/facebook/video/analytics/VideoAnalyticsModule;->a(Landroid/content/Context;Lcom/facebook/video/analytics/VideoCacheCounters;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/analytics/logger/AnalyticsLogger;Lcom/facebook/common/network/FbNetworkManager;Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;)Lcom/facebook/video/analytics/VideoPerformanceTracking;

    move-result-object v0

    return-object v0
.end method
