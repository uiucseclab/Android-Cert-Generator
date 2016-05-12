.class public final Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BaseNachosActivity$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private accountManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/accounts/AccountManager;",
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

.field private packageInfoUtil:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "com.samsung.milk.milkvideo.activity.BaseNachosActivity"

    const-string v1, "members/com.samsung.milk.milkvideo.activity.BaseNachosActivity"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

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
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    .line 44
    const-string v0, "android.accounts.AccountManager"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->accountManager:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.samsung.milk.milkvideo.views.MessageNotifier"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->messageNotifier:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.samsung.milk.milkvideo.utils.PackageInfoUtil"

    const-class v1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->packageInfoUtil:Ldagger/internal/Binding;

    .line 47
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    .line 69
    .local v0, "result":Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;)V

    .line 70
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

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
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->accountManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->messageNotifier:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->packageInfoUtil:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->eventBus:Lcom/squareup/otto/Bus;

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->accountManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->accountManager:Landroid/accounts/AccountManager;

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->messageNotifier:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->packageInfoUtil:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->packageInfoUtil:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    .line 84
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;)V

    return-void
.end method
