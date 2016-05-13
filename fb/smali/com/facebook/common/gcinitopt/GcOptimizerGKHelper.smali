.class public Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;
.super Ljava/lang/Object;
.source "ssr"

# interfaces
.implements Lcom/facebook/common/init/INeedInit;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/gk/store/GatekeeperStoreImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/gk/store/GatekeeperStoreImpl;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/NeedsApplicationInjector;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->b:Lcom/facebook/gk/store/GatekeeperStoreImpl;

    .line 30
    return-void
.end method

.method public static final b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;
    .locals 3

    .prologue
    .line 16
    new-instance v2, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;

    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/FbInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p0}, Lcom/facebook/gk/GatekeeperStoreImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/store/GatekeeperStoreImpl;

    move-result-object v1

    check-cast v1, Lcom/facebook/gk/store/GatekeeperStoreImpl;

    invoke-direct {v2, v0, v1}, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;-><init>(Landroid/content/Context;Lcom/facebook/gk/store/GatekeeperStoreImpl;)V

    .line 19
    return-object v2
.end method


# virtual methods
.method public final hF_()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->b:Lcom/facebook/gk/store/GatekeeperStoreImpl;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/gk/store/GatekeeperStoreImpl;->a(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/common/gcinitopt/GcOptimizer;->a(Landroid/content/Context;Z)V

    .line 35
    return-void
.end method
