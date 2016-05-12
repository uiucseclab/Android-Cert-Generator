.class public final Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "NachosApplication$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/NachosApplication;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/NachosApplication;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/NachosApplication;",
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

.field private googleAnalyticsTracker:Ldagger/internal/Binding;
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

.field private mixpanelTracker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 36
    const-string v0, "com.samsung.milk.milkvideo.NachosApplication"

    const-string v1, "members/com.samsung.milk.milkvideo.NachosApplication"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 46
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->mixpanelTracker:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.samsung.milk.milkvideo.analytics.GoogleAnalyticsTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->googleAnalyticsTracker:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.samsung.milk.milkvideo.analytics.AppsFlyerTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.samsung.milk.milkvideo.analytics.CrashlyticsTracker"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->crashlyticsTracker:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->restService:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.samsung.milk.milkvideo.notifications.DeviceRegistrar"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->deviceRegistrar:Ldagger/internal/Binding;

    .line 55
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/NachosApplication;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/NachosApplication;-><init>()V

    .line 81
    .local v0, "result":Lcom/samsung/milk/milkvideo/NachosApplication;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/NachosApplication;)V

    .line 82
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/NachosApplication;

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
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->mixpanelTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->googleAnalyticsTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->crashlyticsTracker:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->restService:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->deviceRegistrar:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/NachosApplication;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/NachosApplication;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->eventBus:Lcom/squareup/otto/Bus;

    .line 92
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->mixpanelTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 93
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->googleAnalyticsTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->googleAnalyticsTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    .line 94
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->appsFlyerTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    .line 95
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->crashlyticsTracker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->crashlyticsTracker:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;

    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->featureFlags:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 98
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->restService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 99
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->deviceRegistrar:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/NachosApplication;->deviceRegistrar:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    .line 100
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/NachosApplication;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/NachosApplication$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/NachosApplication;)V

    return-void
.end method
