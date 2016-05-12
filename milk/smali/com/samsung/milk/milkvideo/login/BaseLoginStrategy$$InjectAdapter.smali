.class public final Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BaseLoginStrategy$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;",
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

.field private loginCoordinator:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/services/LoginCoordinator;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    const-string v0, "com.samsung.milk.milkvideo.login.BaseLoginStrategy"

    const-string v1, "members/com.samsung.milk.milkvideo.login.BaseLoginStrategy"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 41
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.samsung.milk.milkvideo.services.LoginCoordinator"

    const-class v1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->loginCoordinator:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;-><init>()V

    .line 66
    .local v0, "result":Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;)V

    .line 67
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

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
    .line 53
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->loginCoordinator:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->loginCoordinator:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    .line 80
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;)V

    return-void
.end method
