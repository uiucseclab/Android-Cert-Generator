.class final Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "ms"


# instance fields
.field public final a:Lcom/google/android/exoplayer/extractor/mp4/Track;

.field public final b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

.field public final c:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->a:Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 407
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    .line 408
    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->c:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 409
    return-void
.end method
