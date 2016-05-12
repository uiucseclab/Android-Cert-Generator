.class public Lcom/facebook/rti/orca/Boolean_FbnsLiteEmployeesLatestGatekeeperGatekeeperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "operation %s for topic %s "


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    .line 12
    invoke-static {p0}, Lcom/facebook/gk/GatekeeperStoreImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/store/GatekeeperStoreImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/gk/store/GatekeeperStoreImpl;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/gk/store/GatekeeperStoreImpl;->a(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
