.class Lcom/facebook/loom/core/HttpTraceController;
.super Ljava/lang/Object;
.source "unpaused"

# interfaces
.implements Lcom/facebook/loom/core/TraceController;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/facebook/loom/config/ControllerConfig;)I
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x7f

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
