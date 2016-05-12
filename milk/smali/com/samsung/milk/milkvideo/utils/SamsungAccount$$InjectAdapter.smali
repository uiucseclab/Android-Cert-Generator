.class public final Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SamsungAccount$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/utils/SamsungAccount;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/utils/SamsungAccount;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/utils/SamsungAccount;",
        ">;"
    }
.end annotation


# instance fields
.field private field_loginState:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/services/LoginState;",
            ">;"
        }
    .end annotation
.end field

.field private parameter_accountManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/accounts/AccountManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "com.samsung.milk.milkvideo.utils.SamsungAccount"

    const-string v1, "members/com.samsung.milk.milkvideo.utils.SamsungAccount"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 39
    const-string v0, "android.accounts.AccountManager"

    const-class v1, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->parameter_accountManager:Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->field_loginState:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/utils/SamsungAccount;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->parameter_accountManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;-><init>(Landroid/accounts/AccountManager;)V

    .line 60
    .local v0, "result":Lcom/samsung/milk/milkvideo/utils/SamsungAccount;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/utils/SamsungAccount;)V

    .line 61
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/utils/SamsungAccount;

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
    .line 49
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->parameter_accountManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->field_loginState:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/utils/SamsungAccount;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/utils/SamsungAccount;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->field_loginState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/services/LoginState;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 71
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/utils/SamsungAccount;)V

    return-void
.end method
