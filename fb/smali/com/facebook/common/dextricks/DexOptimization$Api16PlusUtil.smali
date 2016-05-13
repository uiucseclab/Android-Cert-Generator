.class Lcom/facebook/common/dextricks/DexOptimization$Api16PlusUtil;
.super Ljava/lang/Object;
.source "turbo-compiler"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMyImportance(Landroid/app/ActivityManager;Lcom/facebook/common/dextricks/DexOptimization$Client;)I
    .locals 1

    .prologue
    .line 487
    iget-object v0, p1, Lcom/facebook/common/dextricks/DexOptimization$Client;->mRpi:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 315
    iput-object v0, p1, Lcom/facebook/common/dextricks/DexOptimization$Client;->mRpi:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 490
    :cond_0
    iget-object v0, p1, Lcom/facebook/common/dextricks/DexOptimization$Client;->mRpi:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 491
    iget-object v0, p1, Lcom/facebook/common/dextricks/DexOptimization$Client;->mRpi:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    return v0
.end method
