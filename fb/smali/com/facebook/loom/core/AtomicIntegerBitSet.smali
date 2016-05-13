.class final Lcom/facebook/loom/core/AtomicIntegerBitSet;
.super Ljava/lang/Object;
.source "unknown"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/loom/core/AtomicIntegerBitSet;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 3

    .prologue
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/facebook/loom/core/AtomicIntegerBitSet;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 21
    or-int v1, v0, p1

    .line 22
    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/facebook/loom/core/AtomicIntegerBitSet;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    :cond_1
    return-void
.end method

.method final b(I)V
    .locals 4

    .prologue
    .line 27
    xor-int/lit8 v0, p1, -0x1

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/facebook/loom/core/AtomicIntegerBitSet;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 30
    and-int v2, v1, v0

    .line 31
    if-eq v1, v2, :cond_1

    iget-object v3, p0, Lcom/facebook/loom/core/AtomicIntegerBitSet;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    :cond_1
    return-void
.end method

.method final c(I)Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/loom/core/AtomicIntegerBitSet;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
