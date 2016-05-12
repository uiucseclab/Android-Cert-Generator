.class public final Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/BitArray;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/BitArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedCapacity"
.end annotation


# instance fields
.field data:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    return-void
.end method

.method private static checkInput(I)I
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 70
    if-ltz p0, :cond_0

    const/16 v0, 0x3f

    if-le p0, v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input must be between 0 and 63: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    .line 43
    return-void
.end method

.method public get(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const-wide/16 v3, 0x1

    .line 54
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    invoke-static {p1}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->checkInput(I)I

    move-result v2

    shr-long/2addr v0, v2

    and-long/2addr v0, v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    const-wide/16 v2, 0x1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->checkInput(I)I

    move-result v4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    .line 47
    return-void
.end method

.method public shiftLeft(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    invoke-static {p1}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->checkInput(I)I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVariableCapacity()Lcom/squareup/okhttp/internal/BitArray;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;-><init>(Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;Lcom/squareup/okhttp/internal/BitArray$1;)V

    return-object v0
.end method

.method public toggle(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    const-wide/16 v2, 0x1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->checkInput(I)I

    move-result v4

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    .line 51
    return-void
.end method
