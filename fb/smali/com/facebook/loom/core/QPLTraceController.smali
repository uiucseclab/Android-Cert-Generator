.class public Lcom/facebook/loom/core/QPLTraceController;
.super Ljava/lang/Object;
.source "unmuted"

# interfaces
.implements Lcom/facebook/loom/core/TraceController;


# instance fields
.field private a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/loom/core/QPLTraceController;->a:Ljava/util/Random;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/facebook/loom/config/ControllerConfig;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 26
    check-cast p2, Lcom/facebook/loom/config/QPLControllerConfig;

    .line 28
    instance-of v0, p1, Lcom/facebook/sequencelogger/Sequence;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/facebook/sequencelogger/Sequence;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/Sequence;->b()I

    move-result v0

    .line 34
    :goto_0
    invoke-virtual {p2, v0}, Lcom/facebook/loom/config/QPLControllerConfig;->a(I)Lcom/facebook/loom/config/QPLTraceControlConfiguration;

    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    move v0, v1

    .line 49
    :goto_1
    return v0

    .line 31
    :cond_0
    check-cast p1, Lcom/facebook/quicklog/QuickEvent;

    invoke-virtual {p1}, Lcom/facebook/quicklog/QuickEvent;->h()I

    move-result v0

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/loom/config/QPLTraceControlConfiguration;->b()I

    move-result v2

    .line 41
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 42
    goto :goto_1

    .line 45
    :cond_3
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lcom/facebook/loom/core/QPLTraceController;->a:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 46
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/loom/config/QPLTraceControlConfiguration;->c()I

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 49
    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
