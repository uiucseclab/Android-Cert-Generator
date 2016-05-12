.class public final Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "VideoPlayerContainerFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;",
        ">;"
    }
.end annotation


# instance fields
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

.field private gestureDetectorFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/GestureDetectorFactory;",
            ">;"
        }
    .end annotation
.end field

.field private googleTracker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private loginState:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/services/LoginState;",
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

.field private nachosToast:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/widgets/NachosToast;",
            ">;"
        }
    .end annotation
.end field

.field private ooyalaVideoPlayerFragmentProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private picasso:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/services/NachosSettings;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;",
            ">;"
        }
    .end annotation
.end field

.field private telephonyManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private tracker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;",
            ">;"
        }
    .end annotation
.end field

.field private youTubeVideoPlayerFragmentProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    const-string v0, "com.samsung.milk.milkvideo.fragments.VideoPlayerContainerFragment"

    const-string v1, "members/com.samsung.milk.milkvideo.fragments.VideoPlayerContainerFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 50
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.samsung.milk.milkvideo.analytics.GoogleAnalyticsTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->googleTracker:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.samsung.milk.milkvideo.utils.GestureDetectorFactory"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->gestureDetectorFactory:Ldagger/internal/Binding;

    .line 56
    const-string v0, "com.samsung.milk.milkvideo.widgets.NachosToast"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->nachosToast:Ldagger/internal/Binding;

    .line 57
    const-string v0, "com.samsung.milk.milkvideo.services.NachosSettings"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->settings:Ldagger/internal/Binding;

    .line 58
    const-string v0, "com.squareup.picasso.Picasso"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    .line 59
    const-string v0, "@javax.inject.Named(value=youtube)/javax.inject.Provider<com.samsung.milk.milkvideo.fragments.VideoPlayerFragment>"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->youTubeVideoPlayerFragmentProvider:Ldagger/internal/Binding;

    .line 60
    const-string v0, "@javax.inject.Named(value=ooyala)/javax.inject.Provider<com.samsung.milk.milkvideo.fragments.VideoPlayerFragment>"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->ooyalaVideoPlayerFragmentProvider:Ldagger/internal/Binding;

    .line 61
    const-string v0, "android.telephony.TelephonyManager"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->telephonyManager:Ldagger/internal/Binding;

    .line 62
    const-string v1, "members/com.samsung.milk.milkvideo.fragments.BaseNachosFragment"

    const-class v2, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 63
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;-><init>()V

    .line 93
    .local v0, "result":Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    .line 94
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

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
    .line 71
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->googleTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->gestureDetectorFactory:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->nachosToast:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->settings:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->youTubeVideoPlayerFragmentProvider:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->ooyalaVideoPlayerFragmentProvider:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->telephonyManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 105
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 106
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->googleTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    .line 108
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->gestureDetectorFactory:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/GestureDetectorFactory;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->gestureDetectorFactory:Lcom/samsung/milk/milkvideo/utils/GestureDetectorFactory;

    .line 109
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->nachosToast:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    .line 110
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->settings:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/NachosSettings;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    .line 111
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->picasso:Lcom/squareup/picasso/Picasso;

    .line 112
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->youTubeVideoPlayerFragmentProvider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragmentProvider:Ljavax/inject/Provider;

    .line 113
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->ooyalaVideoPlayerFragmentProvider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->ooyalaVideoPlayerFragmentProvider:Ljavax/inject/Provider;

    .line 114
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->telephonyManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 115
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    return-void
.end method
