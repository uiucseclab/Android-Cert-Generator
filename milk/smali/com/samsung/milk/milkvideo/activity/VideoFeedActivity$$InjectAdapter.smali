.class public final Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "VideoFeedActivity$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private edgeVideoPagerAdapter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;",
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

.field private feedVideosRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;",
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
            "Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    const-string v0, "com.samsung.milk.milkvideo.activity.VideoFeedActivity"

    const-string v1, "members/com.samsung.milk.milkvideo.activity.VideoFeedActivity"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 44
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.samsung.milk.milkvideo.utils.SlookUtil"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.samsung.milk.milkvideo.repository.FeedVideosRepository"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->feedVideosRepository:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.samsung.milk.milkvideo.adapters.EdgeVideoPagerAdapter"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->edgeVideoPagerAdapter:Ldagger/internal/Binding;

    .line 50
    const-string v1, "members/com.samsung.milk.milkvideo.activity.BaseNachosActivity"

    const-class v2, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 51
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;-><init>()V

    .line 75
    .local v0, "result":Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;)V

    .line 76
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

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
    .line 59
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->feedVideosRepository:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->edgeVideoPagerAdapter:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 87
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    .line 88
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 89
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->feedVideosRepository:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->feedVideosRepository:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    .line 90
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->edgeVideoPagerAdapter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    .line 91
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;)V

    return-void
.end method
