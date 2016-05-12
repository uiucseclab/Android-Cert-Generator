.class public final Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "UserInfoFragment$$InjectAdapter.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private featureFlag:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private localProfilePhotoManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;",
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

.field private messageNotifier:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/views/MessageNotifier;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    const/4 v0, 0x0

    const-string v1, "members/com.samsung.milk.milkvideo.fragments.userinfo.UserInfoFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 41
    const-string v0, "com.squareup.picasso.Picasso"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.samsung.milk.milkvideo.utils.LocalProfilePhotoManager"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->localProfilePhotoManager:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->featureFlag:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.samsung.milk.milkvideo.services.LoginCoordinator"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->loginCoordinator:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.samsung.milk.milkvideo.views.MessageNotifier"

    const-class v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->messageNotifier:Ldagger/internal/Binding;

    .line 48
    const-string v1, "members/com.samsung.milk.milkvideo.fragments.BaseNachosFragment"

    const-class v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 49
    return-void
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
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->localProfilePhotoManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->featureFlag:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->loginCoordinator:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->messageNotifier:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->picasso:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->picasso:Lcom/squareup/picasso/Picasso;

    .line 74
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->localProfilePhotoManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->localProfilePhotoManager:Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->featureFlag:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->featureFlag:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->loginCoordinator:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->messageNotifier:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V

    return-void
.end method
