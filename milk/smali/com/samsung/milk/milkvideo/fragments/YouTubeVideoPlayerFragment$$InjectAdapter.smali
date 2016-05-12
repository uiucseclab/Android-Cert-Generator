.class public final Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "YouTubeVideoPlayerFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private afChangeListener:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private appsFlyerTracker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;",
            ">;"
        }
    .end annotation
.end field

.field private audioManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private bufferingTracker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;",
            ">;"
        }
    .end annotation
.end field

.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;"
        }
    .end annotation
.end field

.field private mixpanelTracker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;",
            ">;"
        }
    .end annotation
.end field

.field private nachosRestService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/api/NachosRestService;",
            ">;"
        }
    .end annotation
.end field

.field private nachosauthenticator:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/services/LoginState;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;",
            ">;"
        }
    .end annotation
.end field

.field private timeService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/TimeService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    const-string v0, "com.samsung.milk.milkvideo.fragments.YouTubeVideoPlayerFragment"

    const-string v1, "members/com.samsung.milk.milkvideo.fragments.YouTubeVideoPlayerFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 47
    const-string v0, "com.samsung.milk.milkvideo.utils.TimeService"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->timeService:Ldagger/internal/Binding;

    .line 48
    const-string v0, "android.media.AudioManager"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->audioManager:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.samsung.milk.milkvideo.analytics.AppsFlyerTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->nachosauthenticator:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.samsung.milk.milkvideo.analytics.BufferingTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->bufferingTracker:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.samsung.milk.milkvideo.fragments.listeners.VideoOnAudioFocusChangeListener"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->afChangeListener:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->mixpanelTracker:Ldagger/internal/Binding;

    .line 56
    const-string v1, "members/com.google.android.youtube.player.YouTubePlayerSupportFragment"

    const-class v2, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 57
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;-><init>()V

    .line 84
    .local v0, "result":Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;)V

    .line 85
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->timeService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->audioManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->nachosauthenticator:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->bufferingTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->afChangeListener:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->mixpanelTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->timeService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/TimeService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    .line 95
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->audioManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    .line 98
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 99
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->nachosauthenticator:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->nachosauthenticator:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 100
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->bufferingTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->bufferingTracker:Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;

    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->afChangeListener:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    .line 102
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->mixpanelTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 103
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;)V

    return-void
.end method
