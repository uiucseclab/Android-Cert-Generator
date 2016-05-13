.class Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "no_auto_fg"


# instance fields
.field public final a:Lcom/google/android/exoplayer/dash/mpd/Representation;

.field public final b:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

.field public c:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

.field public d:Lcom/google/android/exoplayer/MediaFormat;

.field public e:I

.field public f:J

.field public g:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V
    .locals 1

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->a:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 749
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->b:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 750
    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/Representation;->f()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->c:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 751
    return-void
.end method
