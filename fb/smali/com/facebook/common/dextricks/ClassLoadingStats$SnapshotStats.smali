.class public Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;
.super Ljava/lang/Object;
.source "video_select_album_permalink"


# instance fields
.field public final classLoadsAttempted:I

.field public final dexFileQueries:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;->classLoadsAttempted:I

    .line 15
    iput p2, p0, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;->dexFileQueries:I

    .line 16
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ Class Load Attempts:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;->classLoadsAttempted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Secondary Dex Queries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;->dexFileQueries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
