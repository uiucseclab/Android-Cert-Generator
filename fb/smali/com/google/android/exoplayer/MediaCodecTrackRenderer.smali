.class public abstract Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "remote-uri"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field public final a:Lcom/google/android/exoplayer/CodecCounters;

.field public final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

.field private final d:Z

.field private final e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

.field private final f:Lcom/google/android/exoplayer/SampleHolder;

.field private final g:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/media/MediaCodec$BufferInfo;

.field public final j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

.field private k:Lcom/google/android/exoplayer/MediaFormat;

.field private l:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private m:Landroid/media/MediaCodec;

.field private n:Z

.field private o:Z

.field private p:[Ljava/nio/ByteBuffer;

.field private q:[Ljava/nio/ByteBuffer;

.field public r:J

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 232
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 233
    invoke-interface {p1}, Lcom/google/android/exoplayer/SampleSource;->bP_()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    .line 234
    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    .line 235
    iput-boolean p3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->d:Z

    .line 236
    iput-object p4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Landroid/os/Handler;

    .line 237
    iput-object p5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    .line 238
    new-instance v0, Lcom/google/android/exoplayer/CodecCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer/CodecCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/CodecCounters;

    .line 239
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    .line 240
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    .line 242
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    .line 243
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 244
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    .line 245
    return-void

    :cond_0
    move v0, v1

    .line 232
    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CryptoInfo;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 691
    if-nez p1, :cond_0

    .line 701
    :goto_0
    return-object v0

    .line 697
    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    .line 698
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 700
    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method private a(Landroid/media/MediaCodec$CryptoException;)V
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V

    const v2, -0x1db44a16

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 916
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 4

    .prologue
    .line 386
    .line 897
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    const v3, -0xebeb553

    invoke-static {v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 905
    .line 387
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Ljava/lang/String;JJ)V

    const v2, 0x3450e52b

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 929
    :cond_0
    return-void
.end method

.method private a(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 705
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z

    if-nez v1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->a()I

    move-result v1

    .line 709
    if-nez v1, :cond_2

    .line 710
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 712
    :cond_2
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->d:Z

    if-nez v1, :cond_0

    .line 714
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(JJ)Z
    .locals 11

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0

    .line 831
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    if-gez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    .line 835
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaFormat;Landroid/media/MediaFormat;)V

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->c:I

    .line 838
    const/4 v0, 0x1

    goto :goto_0

    .line 839
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 840
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q:[Ljava/nio/ByteBuffer;

    .line 841
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->d:I

    .line 842
    const/4 v0, 0x1

    goto :goto_0

    .line 843
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    if-gez v0, :cond_6

    .line 844
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 846
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y()V

    .line 847
    const/4 v0, 0x1

    goto :goto_0

    .line 849
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 852
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 853
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y()V

    .line 854
    const/4 v0, 0x0

    goto :goto_0

    .line 857
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f(J)I

    move-result v0

    .line 858
    iget-object v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    aget-object v7, v1, v2

    iget-object v8, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v10, 0x1

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 860
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 861
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 863
    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    .line 864
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 858
    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 867
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 953
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    const-string v0, "ht7s3"

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(JZ)Z
    .locals 7

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 561
    :cond_0
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0

    .line 564
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    if-gez v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 566
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    if-gez v0, :cond_2

    .line 567
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->p:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 573
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 576
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o:Z

    if-nez v0, :cond_4

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 580
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 582
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    .line 583
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    if-eqz v0, :cond_7

    .line 589
    const/4 v0, -0x3

    .line 606
    :cond_6
    :goto_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_a

    .line 607
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 594
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 596
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 594
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 598
    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 600
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 601
    if-eqz p3, :cond_6

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 602
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:I

    goto :goto_1

    .line 609
    :cond_a
    const/4 v1, -0x5

    if-ne v0, v1, :cond_b

    .line 610
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v()V

    .line 611
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 613
    :cond_b
    const/4 v1, -0x4

    if-ne v0, v1, :cond_d

    .line 614
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 618
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 620
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 621
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 623
    :cond_d
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 624
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 629
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 631
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    .line 633
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o:Z

    if-nez v0, :cond_f

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Landroid/media/MediaCodec$CryptoException;)V

    .line 641
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 645
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:Z

    if-eqz v0, :cond_13

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/SampleHolder;->c()Z

    move-result v0

    if-nez v0, :cond_12

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 650
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 653
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 655
    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 657
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:Z

    .line 659
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/SampleHolder;->a()Z

    move-result v0

    .line 660
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    .line 661
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    if-eqz v1, :cond_14

    .line 662
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 665
    :cond_14
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 666
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget v1, v1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    sub-int v1, v3, v1

    .line 667
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v2, Lcom/google/android/exoplayer/SampleHolder;->e:J

    .line 668
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/SampleHolder;->b()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 669
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_15
    if-eqz v0, :cond_16

    .line 672
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 678
    :goto_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:Z

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 685
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 676
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 681
    :catch_1
    move-exception v0

    .line 682
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Landroid/media/MediaCodec$CryptoException;)V

    .line 683
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d(J)V
    .locals 7

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 510
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 513
    :cond_0
    return-void
.end method

.method private e(J)V
    .locals 7

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->g:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->f:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x1

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 520
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v()V

    goto :goto_0
.end method

.method private f(J)I
    .locals 7

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 933
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    .line 938
    :goto_1
    return v0

    .line 933
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private u()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 470
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:I

    .line 471
    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->B:Z

    .line 472
    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    .line 473
    return-void
.end method

.method private v()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 526
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:J

    .line 527
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 528
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    .line 529
    iput-boolean v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:Z

    .line 530
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 534
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 536
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:Z

    .line 541
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    .line 544
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 546
    :cond_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m()V

    .line 539
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j()V

    goto :goto_0
.end method

.method private static x()J
    .locals 2

    .prologue
    .line 817
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 887
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m()V

    .line 890
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j()V

    .line 894
    :goto_0
    return-void

    .line 892
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    goto :goto_0
.end method


# virtual methods
.method protected final a(J)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->a(J)Z

    move-result v1

    .line 250
    if-nez v1, :cond_0

    .line 263
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->b()I

    move-result v1

    .line 254
    :goto_1
    if-ge v0, v1, :cond_2

    .line 258
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->a(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/TrackInfo;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    .line 260
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 1

    .prologue
    .line 294
    invoke-static {p1, p2}, Lcom/google/android/exoplayer/MediaCodecUtil;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final a(JJ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    invoke-interface {v0, v3, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->b(IJ)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:I

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:I

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e(J)V

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v0, :cond_0

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->d(J)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j()V

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 498
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 499
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c(JZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c(JZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 503
    :cond_4
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->a()V

    .line 505
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/CodecCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CodecCounters;->a()V

    .line 506
    return-void

    .line 487
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:I

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method protected a(JZ)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->a(IJ)V

    .line 281
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u()V

    .line 282
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 309
    return-void
.end method

.method protected a(Lcom/google/android/exoplayer/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method protected a(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 726
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    .line 727
    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    .line 728
    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->b:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 729
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n:Z

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:Z

    .line 731
    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 742
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:Z

    if-eqz v0, :cond_1

    .line 735
    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    goto :goto_0

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m()V

    .line 739
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j()V

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->C:Z

    return v0
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method protected a(ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    return v0
.end method

.method protected b(J)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->b(J)V

    .line 466
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u()V

    .line 467
    return-void
.end method

.method protected b()Z
    .locals 7

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    if-gez v0, :cond_0

    .line 808
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final bN_()V
    .locals 2

    .prologue
    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final d()J
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->a(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer/TrackInfo;->b:J

    return-wide v0
.end method

.method protected final e()J
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method protected i()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    .line 405
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->b(I)V

    .line 418
    return-void

    .line 415
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->b(I)V

    throw v0

    .line 409
    :catchall_1
    move-exception v0

    .line 410
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z

    if-eqz v1, :cond_1

    .line 412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->b(I)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->z:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->b(I)V

    throw v0
.end method

.method protected final j()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->l:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-eqz v1, :cond_8

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    if-nez v0, :cond_2

    .line 322
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z

    if-nez v0, :cond_3

    .line 326
    iput-boolean v7, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->u:Z

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->a()I

    move-result v0

    .line 329
    if-nez v0, :cond_4

    .line 330
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 331
    :cond_4
    if-eq v0, v8, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->b()Landroid/media/MediaCrypto;

    move-result-object v1

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->c:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->c()Z

    move-result v0

    move-object v2, v1

    .line 343
    :goto_1
    :try_start_0
    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_2
    if-nez v0, :cond_6

    .line 350
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34f

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 354
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer/DecoderInfo;->a:Ljava/lang/String;

    .line 355
    iget-boolean v0, v0, Lcom/google/android/exoplayer/DecoderInfo;->b:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n:Z

    .line 356
    invoke-static {v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o:Z

    .line 358
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "createByCodecName("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 360
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    .line 361
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->a()V

    .line 362
    const-string v0, "configureCodec"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/MediaFormat;->b()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    .line 364
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->a()V

    .line 365
    const-string v0, "codec.start()"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 367
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->a()V

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 369
    sub-long v4, v2, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Ljava/lang/String;JJ)V

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->p:[Ljava/nio/ByteBuffer;

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->p()I

    move-result v0

    if-ne v0, v8, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_4
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:J

    .line 378
    iput v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 379
    iput v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    .line 380
    iput-boolean v7, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->E:Z

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->a:I

    goto/16 :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34e

    invoke-direct {v1, v4, v0, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    move-object v0, v3

    goto/16 :goto_2

    .line 373
    :catch_1
    move-exception v0

    .line 374
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    goto :goto_3

    .line 376
    :cond_7
    const-wide/16 v0, -0x1

    goto :goto_4

    :cond_8
    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->k:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final m()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 422
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->r:J

    .line 423
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->s:I

    .line 424
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->t:I

    .line 425
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->D:Z

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->p:[Ljava/nio/ByteBuffer;

    .line 428
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->q:[Ljava/nio/ByteBuffer;

    .line 429
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->v:Z

    .line 430
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->y:Z

    .line 431
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->n:Z

    .line 432
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->o:Z

    .line 433
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->w:I

    .line 434
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->x:I

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->a:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->b:I

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 440
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    .line 446
    :cond_0
    return-void

    .line 442
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    throw v0

    .line 439
    :catchall_1
    move-exception v0

    .line 440
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 442
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->m:Landroid/media/MediaCodec;

    throw v0
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->e:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->e()V

    .line 451
    return-void
.end method

.method protected final o()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->A:I

    return v0
.end method
