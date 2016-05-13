.class public Lcom/facebook/video/analytics/VideoCacheCounters;
.super Lcom/facebook/analytics/counter/AnalyticsCounters;
.source "retry_count"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile b:Lcom/facebook/video/analytics/VideoCacheCounters;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics/counter/CountersPrefWriter;)V
    .locals 0
    .param p1    # Lcom/facebook/analytics/counter/CountersPrefWriter;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/analytics/counter/AnalyticsCounters;-><init>(Lcom/facebook/analytics/counter/CountersPrefWriter;)V

    .line 23
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoCacheCounters;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/video/analytics/VideoCacheCounters;->b:Lcom/facebook/video/analytics/VideoCacheCounters;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/video/analytics/VideoCacheCounters;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/video/analytics/VideoCacheCounters;->b:Lcom/facebook/video/analytics/VideoCacheCounters;

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

    invoke-static {v0}, Lcom/facebook/video/analytics/VideoCacheCounters;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoCacheCounters;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/analytics/VideoCacheCounters;->b:Lcom/facebook/video/analytics/VideoCacheCounters;
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
    sget-object v0, Lcom/facebook/video/analytics/VideoCacheCounters;->b:Lcom/facebook/video/analytics/VideoCacheCounters;

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

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoCacheCounters;
    .locals 2

    .prologue
    .line 16
    new-instance v1, Lcom/facebook/video/analytics/VideoCacheCounters;

    invoke-static {p0}, Lcom/facebook/analytics/counter/CountersPrefWriterMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/analytics/counter/CountersPrefWriter;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics/counter/CountersPrefWriter;

    invoke-direct {v1, v0}, Lcom/facebook/video/analytics/VideoCacheCounters;-><init>(Lcom/facebook/analytics/counter/CountersPrefWriter;)V

    .line 18
    return-object v1
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "video_cachecounters"

    return-object v0
.end method
