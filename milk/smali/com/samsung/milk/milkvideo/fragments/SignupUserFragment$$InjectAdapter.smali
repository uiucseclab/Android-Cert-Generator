.class public final Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SignupUserFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;",
        ">;"
    }
.end annotation


# instance fields
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

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/LoginFragment;",
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
    .line 32
    const-string v0, "com.samsung.milk.milkvideo.fragments.SignupUserFragment"

    const-string v1, "members/com.samsung.milk.milkvideo.fragments.SignupUserFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 42
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    .line 46
    const-string v1, "members/com.samsung.milk.milkvideo.fragments.LoginFragment"

    const-class v2, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 47
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;-><init>()V

    .line 69
    .local v0, "result":Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;)V

    .line 70
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

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
    .line 55
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;)V

    return-void
.end method