.class public final Lcom/facebook/video/view/exo/RtmpSampleExtractor;
.super Ljava/lang/Object;
.source "nt"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/net/Uri;

.field private e:I

.field private f:[Lcom/google/android/exoplayer/TrackInfo;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "fbrtmp"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->a:Z

    .line 82
    iput-boolean v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->b:Z

    .line 85
    iput v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    .line 90
    iput v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->g:I

    .line 125
    sget v1, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 127
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->c:Landroid/content/Context;

    .line 128
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->d:Landroid/net/Uri;

    .line 129
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer/SampleHolder;)I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x3

    const/4 v3, 0x1

    .line 300
    if-nez p1, :cond_1

    .line 301
    const-string v0, "(V) "

    .line 308
    :goto_0
    iget-object v5, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_8

    .line 313
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 314
    iget-object v6, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 315
    iget-object v6, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 316
    iget v7, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    iget-object v8, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v7, p1, v8, v5}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->readRtmpStreamAndAdvance(IILjava/nio/ByteBuffer;Ljava/lang/StringBuffer;)I

    move-result v7

    .line 322
    if-lez v7, :cond_5

    .line 326
    iput v7, p2, Lcom/google/android/exoplayer/SampleHolder;->c:I

    .line 374
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    add-int v2, v7, v6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 375
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    add-int v2, v6, v7

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 377
    if-nez p1, :cond_4

    .line 378
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p2, Lcom/google/android/exoplayer/SampleHolder;->e:J

    .line 387
    if-le v7, v10, :cond_0

    .line 388
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 389
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    add-int v2, v6, v7

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 390
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 391
    iget-object v2, p2, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    add-int v5, v6, v7

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 393
    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    move v0, v3

    .line 394
    :goto_1
    if-eqz v0, :cond_0

    .line 395
    iput v3, p2, Lcom/google/android/exoplayer/SampleHolder;->d:I

    :cond_0
    :goto_2
    move v0, v1

    .line 447
    :goto_3
    return v0

    .line 302
    :cond_1
    if-ne p1, v3, :cond_2

    .line 303
    const-string v0, "(A) "

    goto :goto_0

    .line 305
    :cond_2
    const-string v0, "(Unknown) "

    goto :goto_0

    :cond_3
    move v0, v4

    .line 393
    goto :goto_1

    .line 415
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/google/android/exoplayer/SampleHolder;->e:J

    .line 420
    iput v3, p2, Lcom/google/android/exoplayer/SampleHolder;->d:I

    goto :goto_2

    .line 433
    :cond_5
    if-ne v7, v2, :cond_6

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "error readRtmpStreamAndAdvance END_OF_STREAM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 436
    goto :goto_3

    .line 437
    :cond_6
    if-nez v7, :cond_7

    .line 439
    const/4 v0, -0x2

    goto :goto_3

    .line 442
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "error: readRtmpStreamAndAdvance return="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    .line 447
    goto :goto_3

    .line 445
    :cond_8
    iput v4, p2, Lcom/google/android/exoplayer/SampleHolder;->c:I

    goto :goto_4
.end method

.method public final a(ILcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 12

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 213
    iget v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->getCsd0(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    iget v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v1}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->getCsd1(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    .line 232
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 233
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 238
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 239
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->getWidth(I)I

    move-result v0

    .line 244
    iget v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v1}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->getHeight(I)I

    move-result v1

    .line 245
    const-string v3, "video/avc"

    .line 70
    const-wide/16 v7, -0x1

    move-object v5, v3

    move v6, v0

    move v9, v0

    move v10, v1

    move-object v11, v2

    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v5

    move-object v0, v5

    iput-object v0, p2, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    .line 251
    iget-object v0, p2, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaFormat;->b()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 292
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 257
    iget v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->getAudioChannelCount(I)I

    move-result v0

    .line 258
    iget v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v1}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->getAudioSampleRate(I)I

    move-result v1

    .line 271
    iget v2, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v2}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->getAsc(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v4, v4, [B

    .line 274
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 275
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v2, "audio/mp4a-latm"

    const/4 v4, -0x1

    invoke-static {v2, v4, v0, v1, v3}, Lcom/google/android/exoplayer/MediaFormat;->b(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    .line 287
    iget-object v0, p2, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaFormat;->a()V

    .line 288
    iget-object v0, p2, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaFormat;->b()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    goto :goto_0

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid track value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 133
    iget v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->g:I

    .line 134
    iget v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    iget-boolean v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->b:Z

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->a:Z

    if-nez v1, :cond_2

    .line 144
    iput-boolean v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->a:Z

    .line 146
    iget-object v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->initRtmpStream(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    .line 148
    iget v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    if-eqz v1, :cond_1

    .line 150
    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 151
    iput-boolean v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->a:Z

    .line 177
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->b:Z

    goto :goto_0

    .line 153
    :cond_1
    iput-boolean v4, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->a:Z

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to init rtmp"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    iget v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v1}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->getRtmpStreamStatus(I)I

    move-result v1

    .line 160
    if-nez v1, :cond_3

    .line 162
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/exoplayer/TrackInfo;

    iput-object v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->f:[Lcom/google/android/exoplayer/TrackInfo;

    .line 164
    iget-object v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->f:[Lcom/google/android/exoplayer/TrackInfo;

    new-instance v2, Lcom/google/android/exoplayer/TrackInfo;

    const-string v3, "video/avc"

    invoke-direct {v2, v3, v6, v7}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    aput-object v2, v1, v4

    .line 167
    iget-object v1, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->f:[Lcom/google/android/exoplayer/TrackInfo;

    new-instance v2, Lcom/google/android/exoplayer/TrackInfo;

    const-string v3, "audio/mp4a-latm"

    invoke-direct {v2, v3, v6, v7}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    aput-object v2, v1, v0

    .line 169
    iput-boolean v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->b:Z

    goto :goto_1

    .line 170
    :cond_3
    if-ne v1, v0, :cond_4

    .line 172
    iput-boolean v4, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->b:Z

    goto :goto_1

    .line 174
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown stream status from rtmp ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()[Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->f:[Lcom/google/android/exoplayer/TrackInfo;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 195
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    if-lez v0, :cond_0

    .line 454
    iget v0, p0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->releaseRtmpStream(I)V

    .line 456
    :cond_0
    return-void
.end method

.method public final native fetchValue(Ljava/lang/StringBuffer;)I
.end method

.method public final native getAdts(I)Ljava/nio/ByteBuffer;
.end method

.method public final native getAsc(I)Ljava/nio/ByteBuffer;
.end method

.method public final native getAudioChannelCount(I)I
.end method

.method public final native getAudioSampleRate(I)I
.end method

.method public final native getCsd0(I)Ljava/nio/ByteBuffer;
.end method

.method public final native getCsd1(I)Ljava/nio/ByteBuffer;
.end method

.method public final native getHeight(I)I
.end method

.method public final native getRtmpStreamStatus(I)I
.end method

.method public final native getWidth(I)I
.end method

.method public final native initRtmpStream(Ljava/lang/String;)I
.end method

.method public final native readRtmpStreamAndAdvance(IILjava/nio/ByteBuffer;Ljava/lang/StringBuffer;)I
.end method

.method public final native releaseRtmpStream(I)V
.end method
