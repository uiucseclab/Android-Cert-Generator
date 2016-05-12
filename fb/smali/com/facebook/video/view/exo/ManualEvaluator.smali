.class public final Lcom/facebook/video/view/exo/ManualEvaluator;
.super Ljava/lang/Object;
.source "null"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatEvaluator;


# instance fields
.field private final a:Lcom/facebook/video/view/exo/PlaybackPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/video/view/exo/PlaybackPreferences;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/video/view/exo/ManualEvaluator;->a:Lcom/facebook/video/view/exo/PlaybackPreferences;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final a(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lcom/google/android/exoplayer/chunk/Format;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/video/view/exo/ManualEvaluator;->a:Lcom/facebook/video/view/exo/PlaybackPreferences;

    invoke-virtual {v0}, Lcom/facebook/video/view/exo/PlaybackPreferences;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p4, v0

    :goto_0
    iput-object v0, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    .line 40
    return-void

    .line 38
    :cond_0
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p4, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
