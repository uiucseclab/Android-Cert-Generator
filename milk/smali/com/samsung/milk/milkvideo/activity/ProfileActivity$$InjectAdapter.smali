.class public final Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ProfileActivity$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/ProfileActivity;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/ProfileActivity;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/ProfileActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private brandVideosRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;",
            ">;"
        }
    .end annotation
.end field

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

.field private repostVideosRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;",
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

.field private starredVideosRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;",
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
    .line 36
    const-string v0, "com.samsung.milk.milkvideo.activity.ProfileActivity"

    const-string v1, "members/com.samsung.milk.milkvideo.activity.ProfileActivity"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 46
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.samsung.milk.milkvideo.repository.BrandVideosRepository"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->brandVideosRepository:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.samsung.milk.milkvideo.repository.RepostVideosRepository"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->repostVideosRepository:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.samsung.milk.milkvideo.repository.StarredVideosRepository"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->starredVideosRepository:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.samsung.milk.milkvideo.utils.SlookUtil"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.samsung.milk.milkvideo.adapters.EdgeVideoPagerAdapter"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->edgeVideoPagerAdapter:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.samsung.milk.milkvideo.services.NachosSettings"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->settings:Ldagger/internal/Binding;

    .line 54
    const-string v1, "members/com.samsung.milk.milkvideo.activity.BaseNachosActivity"

    const-class v2, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 55
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/activity/ProfileActivity;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;-><init>()V

    .line 81
    .local v0, "result":Lcom/samsung/milk/milkvideo/activity/ProfileActivity;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/activity/ProfileActivity;)V

    .line 82
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

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
    .line 63
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->brandVideosRepository:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->repostVideosRepository:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->starredVideosRepository:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->edgeVideoPagerAdapter:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->settings:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/activity/ProfileActivity;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    .line 92
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->brandVideosRepository:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->brandVideosRepository:Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;

    .line 93
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->repostVideosRepository:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->repostVideosRepository:Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;

    .line 94
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->starredVideosRepository:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->starredVideosRepository:Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;

    .line 95
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->slookUtil:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->edgeVideoPagerAdapter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    .line 98
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->settings:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/NachosSettings;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    .line 99
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/activity/ProfileActivity;)V

    return-void
.end method
