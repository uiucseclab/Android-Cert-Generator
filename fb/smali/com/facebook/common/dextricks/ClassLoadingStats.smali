.class public final Lcom/facebook/common/dextricks/ClassLoadingStats;
.super Ljava/lang/Object;
.source "video_select_album_permalink"


# static fields
.field private static final INSTANCE:Lcom/facebook/common/dextricks/ClassLoadingStats;


# instance fields
.field private volatile mClassLoadsAttempted:I

.field private mDexFileQueries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/ClassLoadingStats;-><init>()V

    sput-object v0, Lcom/facebook/common/dextricks/ClassLoadingStats;->INSTANCE:Lcom/facebook/common/dextricks/ClassLoadingStats;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mClassLoadsAttempted:I

    .line 37
    iput v0, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mDexFileQueries:I

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/facebook/common/dextricks/ClassLoadingStats;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/common/dextricks/ClassLoadingStats;->INSTANCE:Lcom/facebook/common/dextricks/ClassLoadingStats;

    return-object v0
.end method


# virtual methods
.method public final decrementDexFileQueries()V
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mDexFileQueries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mDexFileQueries:I

    .line 56
    return-void
.end method

.method public final getDifference(Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;)Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    iget v1, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mClassLoadsAttempted:I

    iget v2, p1, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;->classLoadsAttempted:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mDexFileQueries:I

    iget v3, p1, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;->dexFileQueries:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;-><init>(II)V

    return-object v0
.end method

.method public final getSnapShot()Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    iget v1, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mClassLoadsAttempted:I

    iget v2, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mDexFileQueries:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;-><init>(II)V

    return-object v0
.end method

.method public final incrementClassLoadsAttempted()V
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mClassLoadsAttempted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mClassLoadsAttempted:I

    .line 48
    return-void
.end method

.method public final incrementDexFileQueries(I)V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mDexFileQueries:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/common/dextricks/ClassLoadingStats;->mDexFileQueries:I

    .line 52
    return-void
.end method
