.class public final Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "LoginCoordinator$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/services/LoginCoordinator;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/services/LoginCoordinator;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/services/LoginCoordinator;",
        ">;"
    }
.end annotation


# instance fields
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

.field private crashlyticsTracker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private deviceRegistrar:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;",
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
    const-string v0, "com.samsung.milk.milkvideo.services.LoginCoordinator"

    const-string v1, "members/com.samsung.milk.milkvideo.services.LoginCoordinator"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 42
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.samsung.milk.milkvideo.analytics.AppsFlyerTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.samsung.milk.milkvideo.analytics.CrashlyticsTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->crashlyticsTracker:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.samsung.milk.milkvideo.notifications.DeviceRegistrar"

    const-class v1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->deviceRegistrar:Ldagger/internal/Binding;

    .line 47
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/services/LoginCoordinator;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;-><init>()V

    .line 69
    .local v0, "result":Lcom/samsung/milk/milkvideo/services/LoginCoordinator;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/services/LoginCoordinator;)V

    .line 70
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

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
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->crashlyticsTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->deviceRegistrar:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/services/LoginCoordinator;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->tracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->crashlyticsTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->crashlyticsTracker:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->deviceRegistrar:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->deviceRegistrar:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    .line 84
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/services/LoginCoordinator;)V

    return-void
.end method
