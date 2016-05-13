.class Lcom/facebook/breakpad/BreakpadFlagsController$1;
.super Lcom/facebook/gk/store/OnGatekeeperChangeListener;
.source "status"


# instance fields
.field final synthetic a:Lcom/facebook/breakpad/BreakpadFlagsController;


# direct methods
.method constructor <init>(Lcom/facebook/breakpad/BreakpadFlagsController;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/breakpad/BreakpadFlagsController$1;->a:Lcom/facebook/breakpad/BreakpadFlagsController;

    invoke-direct {p0}, Lcom/facebook/gk/store/OnGatekeeperChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/gk/store/GatekeeperStoreImpl;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/breakpad/BreakpadFlagsController$1;->a:Lcom/facebook/breakpad/BreakpadFlagsController;

    invoke-virtual {v0}, Lcom/facebook/breakpad/BreakpadFlagsController;->a()V

    .line 61
    return-void
.end method
