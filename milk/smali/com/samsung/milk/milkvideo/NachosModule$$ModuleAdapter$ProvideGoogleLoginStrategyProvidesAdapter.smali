.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;
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
    name = "ProvideGoogleLoginStrategyProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final module:Lcom/samsung/milk/milkvideo/NachosModule;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/NachosModule;)V
    .locals 4
    .param p1, "module"    # Lcom/samsung/milk/milkvideo/NachosModule;

    .prologue
    const/4 v3, 0x0

    .line 1179
    const-string v0, "@javax.inject.Named(value=google)/com.samsung.milk.milkvideo.fragments.LoginFragment$LoginStrategy"

    const-string v1, "com.samsung.milk.milkvideo.NachosModule"

    const-string v2, "provideGoogleLoginStrategy"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1180
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 1181
    invoke-virtual {p0, v3}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;->setLibrary(Z)V

    .line 1182
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 1191
    const-string v0, "com.samsung.milk.milkvideo.views.MessageNotifier"

    const-class v1, Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;->messageNotifier:Ldagger/internal/Binding;

    .line 1192
    return-void
.end method

.method public get()Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    .locals 2

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;->messageNotifier:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/NachosModule;->provideGoogleLoginStrategy(Lcom/samsung/milk/milkvideo/views/MessageNotifier;)Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;->get()Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

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
    .line 1200
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;->messageNotifier:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1201
    return-void
.end method
