.class public final Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "FollowsFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private facebookListAdapter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private googleListAdapter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;",
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

.field private restService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/api/NachosRestService;",
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

.field private userListAdapter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    const-string v0, "com.samsung.milk.milkvideo.fragments.FollowsFragment"

    const-string v1, "members/com.samsung.milk.milkvideo.fragments.FollowsFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 43
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->restService:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.samsung.milk.milkvideo.adapters.UserListAdapter"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->userListAdapter:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.samsung.milk.milkvideo.adapters.UserListAdapter"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->googleListAdapter:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.samsung.milk.milkvideo.adapters.UserListAdapter"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->facebookListAdapter:Ldagger/internal/Binding;

    .line 48
    const-string v1, "members/com.samsung.milk.milkvideo.fragments.BaseNachosFragment"

    const-class v2, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 49
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;-><init>()V

    .line 72
    .local v0, "result":Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    .line 73
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

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
    .line 57
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->restService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->userListAdapter:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->googleListAdapter:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->facebookListAdapter:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->restService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 84
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->userListAdapter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .line 85
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->googleListAdapter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->facebookListAdapter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .line 87
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    return-void
.end method
