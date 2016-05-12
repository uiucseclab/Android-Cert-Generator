.class public abstract Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
.super Lcom/google/android/exoplayer/chunk/MediaChunk;
.source "nodex_error_activity"


# instance fields
.field public final a:Z

.field private k:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

.field private l:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZZ)V
    .locals 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZ)V

    .line 59
    iput-boolean p11, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a:Z

    .line 60
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->l:I

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->k:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->l:I

    .line 71
    return-void
.end method

.method public abstract b()Lcom/google/android/exoplayer/MediaFormat;
.end method

.method public abstract c()Lcom/google/android/exoplayer/drm/DrmInitData;
.end method

.method protected final d()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->k:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    return-object v0
.end method
