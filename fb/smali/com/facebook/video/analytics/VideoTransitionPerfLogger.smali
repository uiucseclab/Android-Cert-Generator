.class public Lcom/facebook/video/analytics/VideoTransitionPerfLogger;
.super Ljava/lang/Object;
.source "report_type"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile b:Lcom/facebook/video/analytics/VideoTransitionPerfLogger;


# instance fields
.field private a:Lcom/facebook/quicklog/QuickPerformanceLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/quicklog/QuickPerformanceLogger;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->a:Lcom/facebook/quicklog/QuickPerformanceLogger;

    .line 26
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoTransitionPerfLogger;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b:Lcom/facebook/video/analytics/VideoTransitionPerfLogger;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b:Lcom/facebook/video/analytics/VideoTransitionPerfLogger;

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

    invoke-static {v0}, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoTransitionPerfLogger;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b:Lcom/facebook/video/analytics/VideoTransitionPerfLogger;
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
    sget-object v0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b:Lcom/facebook/video/analytics/VideoTransitionPerfLogger;

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

.method private static b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/facebook/common/util/StringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoTransitionPerfLogger;
    .locals 2

    .prologue
    .line 16
    new-instance v1, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;

    invoke-static {p0}, Lcom/facebook/quicklog/module/QuickPerformanceLoggerMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/quicklog/QuickPerformanceLogger;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickPerformanceLogger;

    invoke-direct {v1, v0}, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;-><init>(Lcom/facebook/quicklog/QuickPerformanceLogger;)V

    .line 18
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->a:Lcom/facebook/quicklog/QuickPerformanceLogger;

    const v1, 0x1d0003

    invoke-static {p1}, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/quicklog/QuickPerformanceLogger;->f(II)V

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->a:Lcom/facebook/quicklog/QuickPerformanceLogger;

    const v1, 0x1d0003

    invoke-static {p1}, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "was_playing_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/quicklog/QuickPerformanceLogger;->b(IILjava/lang/String;)V

    .line 37
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->a:Lcom/facebook/quicklog/QuickPerformanceLogger;

    const v1, 0x1d0003

    invoke-static {p1}, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reuse_player_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/quicklog/QuickPerformanceLogger;->b(IILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->a:Lcom/facebook/quicklog/QuickPerformanceLogger;

    const v1, 0x1d0003

    invoke-static {p1}, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new_player_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/quicklog/QuickPerformanceLogger;->b(IILjava/lang/String;)V

    .line 51
    return-void
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const v3, 0x1d0003

    .line 54
    invoke-static {p1}, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->b(Ljava/lang/String;)I

    move-result v1

    .line 55
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->a:Lcom/facebook/quicklog/QuickPerformanceLogger;

    invoke-interface {v0, v3, v1}, Lcom/facebook/quicklog/QuickPerformanceLogger;->i(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/facebook/video/analytics/VideoTransitionPerfLogger;->a:Lcom/facebook/quicklog/QuickPerformanceLogger;

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-interface {v2, v3, v1, v0}, Lcom/facebook/quicklog/QuickPerformanceLogger;->b(IIS)V

    .line 61
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method
