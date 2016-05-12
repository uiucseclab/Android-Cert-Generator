.class public final Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "DeviceRegistrar$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;",
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

.field private gcm:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/notifications/GcmProvider;",
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
    const-string v0, "com.samsung.milk.milkvideo.notifications.DeviceRegistrar"

    const-string v1, "members/com.samsung.milk.milkvideo.notifications.DeviceRegistrar"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

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
    const-string v0, "com.samsung.milk.milkvideo.notifications.GcmProvider"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->gcm:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;-><init>()V

    .line 66
    .local v0, "result":Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)V

    .line 67
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

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
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->gcm:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->gcm:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->nachosRestService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 80
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)V

    return-void
.end method
