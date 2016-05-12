.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "NachosModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideRestServiceProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/samsung/milk/milkvideo/api/NachosRestService;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/api/NachosRestService;",
        ">;"
    }
.end annotation


# instance fields
.field private authenticator:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/samsung/milk/milkvideo/services/LoginState;",
            ">;"
        }
    .end annotation
.end field

.field private builder:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lretrofit/RestAdapter$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private bus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/samsung/milk/milkvideo/NachosModule;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/NachosModule;)V
    .locals 4
    .param p1, "module"    # Lcom/samsung/milk/milkvideo/NachosModule;

    .prologue
    .line 912
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    const/4 v1, 0x1

    const-string v2, "com.samsung.milk.milkvideo.NachosModule"

    const-string v3, "provideRestService"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 913
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->setLibrary(Z)V

    .line 915
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 924
    const-string v0, "retrofit.RestAdapter$Builder"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->builder:Ldagger/internal/Binding;

    .line 925
    const-string v0, "com.squareup.otto.Bus"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->bus:Ldagger/internal/Binding;

    .line 926
    const-string v0, "com.samsung.milk.milkvideo.services.LoginState"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->authenticator:Ldagger/internal/Binding;

    .line 927
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .locals 4

    .prologue
    .line 946
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->builder:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RestAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->bus:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/otto/Bus;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->authenticator:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/milk/milkvideo/NachosModule;->provideRestService(Lretrofit/RestAdapter$Builder;Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/services/LoginState;)Lcom/samsung/milk/milkvideo/api/NachosRestService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->get()Lcom/samsung/milk/milkvideo/api/NachosRestService;

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
    .line 935
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->builder:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->bus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 937
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;->authenticator:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 938
    return-void
.end method
