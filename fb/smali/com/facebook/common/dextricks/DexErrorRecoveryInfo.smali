.class public final Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
.super Ljava/lang/Object;
.source "x86"


# instance fields
.field public hadToGenerateDexes:Z

.field public needOptimization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->hadToGenerateDexes:Z

    .line 20
    iput-boolean v0, p0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->needOptimization:Z

    .line 21
    return-void
.end method
