.class public final Lcom/google/android/exoplayer/chunk/FormatEvaluator$FixedEvaluator;
.super Ljava/lang/Object;
.source "pid|"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 92
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
    .line 102
    const/4 v0, 0x0

    aget-object v0, p4, v0

    iput-object v0, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    .line 103
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
