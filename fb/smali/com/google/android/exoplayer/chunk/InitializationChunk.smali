.class public final Lcom/google/android/exoplayer/chunk/InitializationChunk;
.super Lcom/google/android/exoplayer/chunk/Chunk;
.source "no_dex_udp_priming_status"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;


# instance fields
.field private final a:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

.field private g:Lcom/google/android/exoplayer/MediaFormat;

.field private h:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private i:Lcom/google/android/exoplayer/extractor/SeekMap;

.field private volatile j:I

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V
    .locals 6

    .prologue
    .line 60
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/Chunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;IILcom/google/android/exoplayer/chunk/Format;)V

    .line 61
    iput-object p5, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->a:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(JIII[B)V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->g:Lcom/google/android/exoplayer/MediaFormat;

    .line 138
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->h:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 133
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->i:Lcom/google/android/exoplayer/extractor/SeekMap;

    .line 128
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->g:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->g:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->h:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/google/android/exoplayer/drm/DrmInitData;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->h:Lcom/google/android/exoplayer/drm/DrmInitData;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->j:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->k:Z

    .line 161
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->k:Z

    return v0
.end method

.method public final h()V
    .locals 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->j:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/Util;->a(Lcom/google/android/exoplayer/upstream/DataSpec;I)Lcom/google/android/exoplayer/upstream/DataSpec;

    move-result-object v4

    .line 174
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-wide v2, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->c:J

    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v5, v4}, Lcom/google/android/exoplayer/upstream/DataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V

    .line 176
    iget v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->j:I

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->a:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->a(Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper$SingleTrackOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 183
    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->k:Z

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->a:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 187
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer/upstream/DataSpec;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V

    .line 191
    return-void

    .line 187
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v4, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->c:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->j:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V

    throw v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->i:Lcom/google/android/exoplayer/extractor/SeekMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/google/android/exoplayer/extractor/SeekMap;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/InitializationChunk;->i:Lcom/google/android/exoplayer/extractor/SeekMap;

    return-object v0
.end method
