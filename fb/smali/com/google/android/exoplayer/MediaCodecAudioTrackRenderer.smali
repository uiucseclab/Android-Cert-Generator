.class public Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.source "remove app %s"

# interfaces
.implements Lcom/google/android/exoplayer/MediaClock;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final c:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

.field private final d:Lcom/google/android/exoplayer/audio/AudioTrack;

.field private e:I

.field private f:J

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .locals 6

    .prologue
    .line 109
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    .line 77
    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->h:Z

    .line 128
    iput-object p5, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->c:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .line 129
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->e:I

    .line 130
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-direct {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    .line 131
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->c:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    const v2, 0x2af6e8c

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 343
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->c:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    const v2, -0x33037036

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 354
    :cond_0
    return-void
.end method

.method private d(J)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->i()V

    .line 262
    iput-wide p1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->f:J

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->g:Z

    .line 264
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 3

    .prologue
    .line 136
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Lcom/google/android/exoplayer/DecoderInfo;

    const-string v1, "OMX.google.raw.decoder"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Z)V

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(F)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected final a(JZ)V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(JZ)V

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d(J)V

    .line 170
    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 145
    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "mime"

    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p3, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, p3, v4, p4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 150
    const-string v1, "mime"

    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1, p3, v4, p4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/exoplayer/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/MediaFormat;->b()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(Landroid/media/MediaFormat;)V

    .line 181
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->h:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->c()V

    .line 184
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(Landroid/media/MediaFormat;)V

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 6

    .prologue
    .line 270
    if-eqz p9, :cond_0

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p5, p8, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->a:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->f:I

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->e()V

    .line 274
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->e:I

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(I)I
    :try_end_0
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->p()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->d()V

    .line 298
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    iget v2, p7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(Ljava/nio/ByteBuffer;IIJ)I
    :try_end_1
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 306
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->g:Z

    .line 312
    :cond_2
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p5, p8, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->a:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->e:I

    .line 315
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->e:I
    :try_end_2
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->a(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 288
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 300
    :catch_1
    move-exception v0

    .line 301
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->a(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 302
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 318
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 163
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(J)V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b(J)V

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d(J)V

    .line 257
    return-void
.end method

.method protected final b()Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(Z)J

    move-result-wide v0

    .line 235
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 236
    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->g:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->f:J

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->g:Z

    .line 240
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->f:J

    return-wide v0

    .line 236
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->f:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final f()Lcom/google/android/exoplayer/MediaClock;
    .locals 0

    .prologue
    .line 158
    return-object p0
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g()V

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->d()V

    .line 210
    return-void
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->h()V

    .line 215
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h()V

    .line 216
    return-void
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->e:I

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->d:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i()V

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i()V

    throw v0
.end method
