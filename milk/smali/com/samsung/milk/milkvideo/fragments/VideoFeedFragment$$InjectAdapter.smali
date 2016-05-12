.class public final Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "VideoFeedFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private bandwidthDetector:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;",
            ">;"
        }
    .end annotation
.end field

.field private currentBlurBackground:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;",
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

.field private featureFlags:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/FeatureFlags;",
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

.field private slookUtil:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/SlookUtil;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 38
    const-string v0, "com.samsung.milk.milkvideo.fragments.VideoFeedFragment"

    const-string v1, "members/com.samsung.milk.milkvideo.fragments.VideoFeedFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 48
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.samsung.milk.milkvideo.utils.CurrentBlurBackground"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->currentBlurBackground:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.squareup.picasso.Picasso"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.samsung.milk.milkvideo.widgets.NachosToast"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->nachosToast:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    .line 56
    const-string v0, "com.samsung.milk.milkvideo.utils.SlookUtil"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    .line 57
    const-string v0, "com.samsung.milk.milkvideo.utils.BandwidthDetector"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->bandwidthDetector:Ldagger/internal/Binding;

    .line 58
    const-string v1, "members/com.samsung.milk.milkvideo.fragments.BaseNachosFragment"

    const-class v2, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 59
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;-><init>()V

    .line 87
    .local v0, "result":Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    .line 88
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

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
    .line 67
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->currentBlurBackground:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->nachosToast:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->bandwidthDetector:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    .line 98
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 99
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->currentBlurBackground:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    .line 100
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 102
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->picasso:Lcom/squareup/picasso/Picasso;

    .line 103
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->nachosToast:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 105
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    .line 106
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->bandwidthDetector:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->bandwidthDetector:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    return-void
.end method
