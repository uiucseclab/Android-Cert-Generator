.class public final Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "nodex_cannot_launch_fb_app_string"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer/extractor/TrackOutput;


# instance fields
.field private final a:Lcom/google/android/exoplayer/extractor/Extractor;

.field private b:Z

.field private c:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/Extractor;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer/extractor/Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v1

    .line 94
    if-eq v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 95
    return v1

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 110
    return-void
.end method

.method public final a(JIII[B)V
    .locals 9

    .prologue
    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 143
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 127
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    .line 76
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->b:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->b:Z

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->a:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/Extractor;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->a(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 120
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;->a(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 115
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->c:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 138
    return-void
.end method

.method public final e_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->d:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 103
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->d:Z

    .line 104
    return-object p0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
