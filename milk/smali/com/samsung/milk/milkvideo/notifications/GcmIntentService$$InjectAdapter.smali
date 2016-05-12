.class public final Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "GcmIntentService$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;",
        ">;"
    }
.end annotation


# instance fields
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

.field private notificationFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private notificationManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private previousNotifications:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    const-string v0, "com.samsung.milk.milkvideo.notifications.GcmIntentService"

    const-string v1, "members/com.samsung.milk.milkvideo.notifications.GcmIntentService"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 43
    const-string v0, "com.samsung.milk.milkvideo.notifications.GcmProvider"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->gcm:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.samsung.milk.milkvideo.notifications.NotificationFactory"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->notificationFactory:Ldagger/internal/Binding;

    .line 45
    const-string v0, "android.app.NotificationManager"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->notificationManager:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.samsung.milk.milkvideo.services.NachosSettings"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->settings:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.samsung.milk.milkvideo.notifications.PreviousNotifications"

    const-class v1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->previousNotifications:Ldagger/internal/Binding;

    .line 49
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;-><init>()V

    .line 72
    .local v0, "result":Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;)V

    .line 73
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

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
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->gcm:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->notificationFactory:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->notificationManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->settings:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->previousNotifications:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->gcm:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->notificationFactory:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->notificationFactory:Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;

    .line 84
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->notificationManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->notificationManager:Landroid/app/NotificationManager;

    .line 85
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->settings:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/NachosSettings;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 87
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->previousNotifications:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->previousNotifications:Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;

    .line 88
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;)V

    return-void
.end method
