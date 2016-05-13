.class final Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;
.super Ljava/lang/Object;
.source "turbo-compiler"


# instance fields
.field final dexStoreRoot:Ljava/lang/String;

.field final replyTo:Landroid/os/Messenger;

.field final startId:I


# direct methods
.method constructor <init>(Landroid/os/Bundle;I)V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p2, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->startId:I

    .line 170
    const-string v0, "client"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->replyTo:Landroid/os/Messenger;

    .line 171
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_0
    const-string v0, "dexStoreRoot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->dexStoreRoot:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->dexStoreRoot:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_1
    return-void
.end method


# virtual methods
.method final getShortName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->dexStoreRoot:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->dexStoreRoot:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
