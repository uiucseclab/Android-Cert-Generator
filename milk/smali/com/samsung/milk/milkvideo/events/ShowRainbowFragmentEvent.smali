.class public Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;
.super Ljava/lang/Object;
.source "ShowRainbowFragmentEvent.java"


# instance fields
.field private final show:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;->show:Z

    .line 9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    if-ne p0, p1, :cond_1

    .line 20
    :cond_0
    :goto_0
    return v1

    .line 14
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 16
    check-cast v0, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;

    .line 18
    .local v0, "that":Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;
    iget-boolean v3, p0, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;->show:Z

    iget-boolean v4, v0, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;->show:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;->show:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;->show:Z

    return v0
.end method
