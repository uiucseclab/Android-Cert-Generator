.class public Lcom/facebook/video/analytics/VideoChainingSessionManager;
.super Ljava/lang/Object;
.source "ta"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Integer;

.field private static volatile i:Lcom/facebook/video/analytics/VideoChainingSessionManager;


# instance fields
.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->VIDEO_DISPLAYED:Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;

    iget-object v2, v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->value:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->VIDEO_REQUESTED_PLAYING:Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;

    iget-object v2, v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->value:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->VIDEO_START:Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;

    iget-object v3, v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->VIDEO_UNPAUSED:Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;

    iget-object v3, v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->VIDEO_UNMUTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;

    iget-object v3, v3, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->a:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->b:Ljava/util/HashSet;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsEvents;->VIDEO_CHAINING_IMPRESSION:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsEvents;

    iget-object v2, v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsEvents;->value:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->c:Ljava/util/HashSet;

    .line 37
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    .line 40
    iput-object v1, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->f:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->g:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->h:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/VideoChainingSessionManager;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->i:Lcom/facebook/video/analytics/VideoChainingSessionManager;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/video/analytics/VideoChainingSessionManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->i:Lcom/facebook/video/analytics/VideoChainingSessionManager;

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

    invoke-static {}, Lcom/facebook/video/analytics/VideoChainingSessionManager;->b()Lcom/facebook/video/analytics/VideoChainingSessionManager;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->i:Lcom/facebook/video/analytics/VideoChainingSessionManager;
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
    sget-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->i:Lcom/facebook/video/analytics/VideoChainingSessionManager;

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

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->g:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 52
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/facebook/common/identifiers/SafeUUIDGenerator;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->f:Ljava/lang/String;

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->h:Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 118
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/facebook/video/analytics/VideoChainingSessionManager;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b()Lcom/facebook/video/analytics/VideoChainingSessionManager;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;

    invoke-direct {v0}, Lcom/facebook/video/analytics/VideoChainingSessionManager;-><init>()V

    .line 17
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/facebook/analytics/logger/HoneyClientEvent;)V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/analytics/HoneyAnalyticsEvent;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsAttributes;->VIDEO_ID:Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsAttributes;

    iget-object v0, v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsAttributes;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics/logger/HoneyClientEvent;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 68
    sget-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/analytics/HoneyAnalyticsEvent;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    invoke-direct {p0, v1}, Lcom/facebook/video/analytics/VideoChainingSessionManager;->a(Ljava/lang/String;)V

    .line 78
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 79
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->VIDEO_CHAINING_SESSION_ID:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    iget-object v0, v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/analytics/HoneyAnalyticsEvent;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->VIDEO_CHAINING_DEPTH_LEVEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    iget-object v0, v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lcom/facebook/video/analytics/VideoChainingSessionManager;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/analytics/HoneyAnalyticsEvent;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->VIDEO_REQUESTED_PLAYING:Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;

    iget-object v2, v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/facebook/analytics/HoneyAnalyticsEvent;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->VIDEO_UNMUTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;

    iget-object v2, v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoAnalyticsEvents;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoChainingSessionManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/video/analytics/VideoChainingSessionManager;->a(Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/video/analytics/VideoChainingSessionManager;->a(Ljava/util/List;)V

    goto :goto_0
.end method
