.class final Lcom/facebook/common/dextricks/Prio;
.super Ljava/lang/Object;
.source "thread_name"


# instance fields
.field final cpuPriority:I

.field final ioPriority:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    .line 34
    iput p2, p0, Lcom/facebook/common/dextricks/Prio;->cpuPriority:I

    .line 35
    return-void
.end method

.method static lowest()Lcom/facebook/common/dextricks/Prio;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/common/dextricks/Prio;

    const/16 v1, 0x6000

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/dextricks/Prio;-><init>(II)V

    return-object v0
.end method

.method static unchanged()Lcom/facebook/common/dextricks/Prio;
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 29
    new-instance v0, Lcom/facebook/common/dextricks/Prio;

    invoke-direct {v0, v1, v1}, Lcom/facebook/common/dextricks/Prio;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method final isDefault()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/common/dextricks/Prio;->cpuPriority:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final with()Lcom/facebook/common/dextricks/Prio$With;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/common/dextricks/Prio$With;

    invoke-direct {v0, p0}, Lcom/facebook/common/dextricks/Prio$With;-><init>(Lcom/facebook/common/dextricks/Prio;)V

    return-object v0
.end method
