.class public final Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "NetworkChangeReceiver$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "com.samsung.milk.milkvideo.receiver.NetworkChangeReceiver"

    const-string v1, "members/com.samsung.milk.milkvideo.receiver.NetworkChangeReceiver"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 38
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 39
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;-><init>()V

    .line 57
    .local v0, "result":Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;)V

    .line 58
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

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
    .line 47
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public injectMembers(Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;)V
    .locals 1
    .param p1, "object"    # Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    iput-object v0, p1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;->eventBus:Lcom/squareup/otto/Bus;

    .line 68
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$$InjectAdapter;->injectMembers(Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;)V

    return-void
.end method
