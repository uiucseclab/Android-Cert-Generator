.class Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
.super Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
.source "ndroid.support"


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    .line 684
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 685
    return-void
.end method


# virtual methods
.method public final a(JIII[B)V
    .locals 3

    .prologue
    .line 689
    invoke-super/range {p0 .. p6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(JIII[B)V

    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    .line 70
    iget v1, v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:I

    .line 691
    return-void
.end method
