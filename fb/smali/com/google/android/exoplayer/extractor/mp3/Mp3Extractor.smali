.class public final Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "n"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

.field private final f:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

.field private h:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private i:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field private j:I

.field private k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

.field private l:J

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->a:I

    .line 47
    const-string v0, "Xing"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->b:I

    .line 48
    const-string v0, "Info"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->c:I

    .line 49
    const-string v0, "VBRI"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/16 v1, 0x3000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    .line 69
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 70
    new-instance v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    .line 71
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J
    .locals 4

    .prologue
    .line 405
    invoke-interface {p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->d()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/google/android/exoplayer/extractor/ExtractorInput;J)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 331
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->c()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b()V

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-eqz v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v6, v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->c:I

    int-to-long v0, v0

    add-long v1, p2, v0

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->a(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->c()V

    .line 348
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp3/ConstantBitrateSeeker;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v3, v3, Lcom/google/android/exoplayer/util/MpegAudioHeader;->f:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->c()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/ConstantBitrateSeeker;-><init>(JIJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    goto :goto_0

    :cond_1
    move-wide v1, p2

    goto :goto_1
.end method

.method private a(Lcom/google/android/exoplayer/extractor/ExtractorInput;JJ)Z
    .locals 8

    .prologue
    const/16 v0, 0x11

    const/4 v6, 0x1

    .line 362
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b()V

    .line 363
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    .line 364
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->c:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v1

    .line 369
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_2

    .line 371
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->e:I

    if-eq v2, v6, :cond_0

    .line 372
    const/16 v0, 0x20

    .line 384
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 385
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    .line 386
    sget v2, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->b:I

    if-eq v0, v2, :cond_1

    sget v2, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->c:I

    if-ne v0, v2, :cond_3

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->a(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    move v0, v6

    .line 400
    :goto_1
    return v0

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->e:I

    if-ne v2, v6, :cond_0

    .line 381
    const/16 v0, 0x9

    goto :goto_0

    .line 392
    :cond_3
    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 393
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    .line 394
    sget v2, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->d:I

    if-ne v0, v2, :cond_4

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->a(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    move v0, v6

    .line 396
    goto :goto_1

    .line 400
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 12

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v6, 0x0

    .line 156
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    if-nez v1, :cond_3

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->c(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 158
    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    move v6, v0

    .line 187
    :cond_0
    :goto_0
    return v6

    .line 161
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->l:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->l:J

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->c:I

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    .line 167
    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->l:J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->m:I

    int-to-long v8, v1

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->d:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 170
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->i:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    invoke-virtual {v5, v7, v8}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->a(Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    move-result v5

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    .line 171
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    if-lez v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b()V

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->i:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    invoke-interface {v1, p1, v5, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v1

    .line 174
    if-ne v1, v0, :cond_4

    move v6, v0

    .line 175
    goto :goto_0

    .line 177
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    if-gtz v0, :cond_0

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->i:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v5, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->c:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 185
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->m:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->m:I

    .line 186
    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    goto :goto_0
.end method

.method private c(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 5

    .prologue
    const v4, -0x1f400

    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b()V

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-wide/16 v0, -0x1

    .line 211
    :goto_0
    return-wide v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->c()V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    .line 201
    and-int v1, v0, v4

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->j:I

    and-int/2addr v2, v4

    if-ne v1, v2, :cond_1

    .line 202
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->a(I)I

    move-result v1

    .line 203
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->a(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 205
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 209
    :cond_1
    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->j:I

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->d(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private d(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 2

    .prologue
    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 222
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private e(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 12

    .prologue
    .line 228
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->a()V

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v0

    .line 240
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 242
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 243
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->h()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->a:I

    if-ne v2, v3, :cond_2

    .line 244
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b([BII)V

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    .line 248
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->a()V

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v0

    .line 257
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b()V

    .line 259
    const/4 v2, 0x0

    .line 260
    const/4 v3, 0x0

    move v4, v2

    move-wide v8, v0

    .line 262
    :goto_2
    sub-long v6, v8, v0

    const-wide/32 v10, 0x20000

    cmp-long v2, v6, v10

    if-ltz v2, :cond_3

    .line 263
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Searched too many bytes while resynchronizing."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->c()V

    goto/16 :goto_0

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->c()V

    goto :goto_1

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v2, p1, v5, v6, v7}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v2

    if-nez v2, :cond_4

    .line 267
    const-wide/16 v0, -0x1

    .line 313
    :goto_3
    return-wide v0

    .line 270
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 271
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v2

    .line 273
    if-eqz v3, :cond_5

    const v5, -0x1f400

    and-int/2addr v5, v2

    const v6, -0x1f400

    and-int/2addr v6, v3

    if-ne v5, v6, :cond_6

    :cond_5
    invoke-static {v2}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->a(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    .line 276
    :cond_6
    const/4 v2, 0x0

    .line 277
    const/4 v3, 0x0

    .line 280
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->c()V

    .line 281
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 282
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b()V

    .line 283
    const-wide/16 v4, 0x1

    add-long/2addr v8, v4

    move v4, v2

    .line 284
    goto :goto_2

    .line 287
    :cond_7
    if-nez v4, :cond_a

    .line 288
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->a(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 293
    :goto_4
    add-int/lit8 v3, v4, 0x1

    .line 294
    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    .line 299
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, p1, v5}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    move v4, v3

    move v3, v2

    .line 300
    goto :goto_2

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->c()V

    .line 304
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->j:I

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v0, :cond_9

    .line 306
    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;J)V

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->h:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 308
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->i:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->b:Ljava/lang/String;

    const/16 v1, 0x1000

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->k:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v2}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v4, v4, Lcom/google/android/exoplayer/util/MpegAudioHeader;->e:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->g:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v5, v5, Lcom/google/android/exoplayer/util/MpegAudioHeader;->d:I

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->b(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    :cond_9
    move-wide v0, v8

    .line 313
    goto/16 :goto_3

    :cond_a
    move v2, v3

    goto :goto_4
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 4

    .prologue
    .line 147
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->j:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->d(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    const/4 v0, -0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->h:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 131
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->e_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->i:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 132
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a()V

    .line 133
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const v11, -0x1f400

    const/4 v5, 0x3

    const/4 v10, 0x4

    const/4 v1, 0x0

    .line 75
    new-instance v7, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v7, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 77
    iget-object v0, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v1, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->c([BII)V

    .line 78
    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->h()I

    move-result v0

    sget v3, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->a:I

    if-ne v0, v3, :cond_0

    .line 79
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b(I)V

    .line 80
    iget-object v0, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v1, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->c([BII)V

    .line 81
    iget-object v0, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    iget-object v3, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    iget-object v3, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    iget-object v3, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    aget-byte v3, v3, v5

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v0, v3

    .line 83
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b(I)V

    .line 84
    add-int/lit8 v0, v0, 0xa

    :goto_0
    move v4, v1

    move v5, v1

    move v6, v0

    .line 94
    :goto_1
    sub-int v3, v6, v0

    const/16 v8, 0x1000

    if-lt v3, v8, :cond_1

    .line 120
    :goto_2
    return v1

    .line 86
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()V

    move v0, v1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v3, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v3, v1, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->c([BII)V

    .line 99
    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 100
    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v3

    .line 102
    if-eqz v4, :cond_2

    and-int v8, v3, v11

    and-int v9, v4, v11

    if-ne v8, v9, :cond_3

    :cond_2
    invoke-static {v3}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 109
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()V

    .line 110
    add-int/lit8 v3, v6, 0x1

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b(I)V

    move v4, v1

    move v5, v1

    move v6, v3

    .line 111
    goto :goto_1

    .line 114
    :cond_4
    if-nez v5, :cond_6

    .line 119
    :goto_3
    add-int/lit8 v4, v5, 0x1

    if-ne v4, v10, :cond_5

    move v1, v2

    .line 120
    goto :goto_2

    .line 124
    :cond_5
    add-int/lit8 v5, v8, -0x4

    invoke-interface {p1, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b(I)V

    move v5, v4

    move v4, v3

    .line 125
    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->j:I

    .line 138
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->m:I

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->l:J

    .line 140
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->n:I

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->e:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->a()V

    .line 142
    return-void
.end method
