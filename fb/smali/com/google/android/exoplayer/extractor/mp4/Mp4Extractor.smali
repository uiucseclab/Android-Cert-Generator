.class public final Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "ms"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# instance fields
.field private final a:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final b:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final c:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private g:I

.field private h:J

.field private i:I

.field private j:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 74
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 77
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c()V

    .line 78
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 246
    :goto_0
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 247
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 248
    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ag:I

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->u:I

    if-ne v4, v5, :cond_0

    .line 252
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->t:I

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-result-object v4

    .line 253
    if-eqz v4, :cond_0

    .line 257
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->v:I

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->w:I

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->x:I

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 259
    invoke-static {v4, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-result-object v0

    .line 260
    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->a:I

    if-eqz v5, :cond_0

    .line 264
    new-instance v5, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v6, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->e_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v6

    invoke-direct {v5, v4, v0, v6}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 265
    iget-object v0, v5, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->c:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->i:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 266
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :cond_1
    new-array v0, v2, [Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a()V

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 276
    return-void
.end method

.method private b(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 161
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v2, v8, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return v2

    .line 166
    :cond_0
    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->i()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    .line 172
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b([BII)V

    .line 176
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->n()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    .line 180
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    .line 393
    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->s:I

    if-eq v0, v10, :cond_3

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->u:I

    if-eq v0, v10, :cond_3

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->v:I

    if-eq v0, v10, :cond_3

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->w:I

    if-eq v0, v10, :cond_3

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->x:I

    if-ne v0, v10, :cond_9

    :cond_3
    const/4 v10, 0x1

    :goto_1
    move v0, v10

    if-eqz v0, :cond_4

    .line 181
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c()V

    :goto_2
    move v2, v1

    .line 197
    goto :goto_0

    .line 184
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    .line 382
    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->F:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->t:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->G:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->V:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->W:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->H:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->b:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->y:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->i:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->A:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Y:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Z:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->aa:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->ab:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->ac:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->ad:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->ae:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->E:I

    if-eq v0, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->f:I

    if-ne v0, v10, :cond_a

    :cond_5
    const/4 v10, 0x1

    :goto_3
    move v0, v10

    if-eqz v0, :cond_8

    .line 187
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    if-ne v0, v8, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 188
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 189
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-static {v0, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iput v9, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    goto :goto_2

    :cond_6
    move v0, v2

    .line 187
    goto :goto_4

    :cond_7
    move v0, v2

    .line 188
    goto :goto_5

    .line 193
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 194
    iput v9, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    goto/16 :goto_2

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private b(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    int-to-long v4, v2

    sub-long/2addr v0, v4

    .line 208
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 210
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    long-to-int v0, v0

    invoke-interface {p1, v2, v6, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b([BII)V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v1, v2, v6}, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    move v2, v3

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ah:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 227
    iget v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ag:I

    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->s:I

    if-ne v1, v6, :cond_3

    .line 229
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    .line 239
    :goto_1
    return v3

    .line 217
    :cond_1
    const-wide/32 v6, 0x40000

    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    .line 218
    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V

    move v2, v3

    goto :goto_0

    .line 220
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v6

    add-long/2addr v0, v6

    iput-wide v0, p2, Lcom/google/android/exoplayer/extractor/PositionHolder;->a:J

    .line 221
    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 238
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c()V

    move v3, v2

    .line 239
    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method private c(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 10

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d()I

    move-result v0

    .line 297
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 298
    const/4 v0, -0x1

    .line 353
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v0, v1, v0

    .line 301
    iget-object v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->c:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 302
    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    .line 303
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b:[J

    aget-wide v2, v2, v4

    .line 304
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 305
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    const-wide/32 v8, 0x40000

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 306
    :cond_1
    iput-wide v2, p2, Lcom/google/android/exoplayer/extractor/PositionHolder;->a:J

    .line 307
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :cond_2
    long-to-int v2, v6

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V

    .line 310
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->c:[I

    aget v2, v2, v4

    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    .line 311
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->a:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->k:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 314
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    .line 315
    const/4 v3, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 316
    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 317
    const/4 v3, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 318
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->a:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->k:I

    .line 319
    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->a:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/mp4/Track;->k:I

    rsub-int/lit8 v3, v3, 0x4

    .line 323
    :goto_1
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    if-ge v5, v6, :cond_5

    .line 324
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    if-nez v5, :cond_3

    .line 326
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b([BII)V

    .line 327
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 328
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->m()I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    .line 330
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 331
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-interface {v1, v5, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 332
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 333
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    goto :goto_1

    .line 336
    :cond_3
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    const/4 v6, 0x0

    invoke-interface {v1, p1, v5, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v5

    .line 337
    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 338
    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    sub-int v5, v6, v5

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    goto :goto_1

    .line 342
    :cond_4
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    if-ge v2, v3, :cond_5

    .line 343
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v2

    .line 344
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 345
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    goto :goto_2

    .line 348
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->d:[J

    aget-wide v2, v2, v4

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->e:[I

    aget v4, v5, v4

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 350
    iget v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    .line 353
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    .line 158
    return-void
.end method

.method private d()I
    .locals 7

    .prologue
    .line 361
    const/4 v1, -0x1

    .line 362
    const-wide v2, 0x7fffffffffffffffL

    .line 363
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 364
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v4, v0

    .line 365
    iget v5, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    .line 366
    iget-object v6, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->a:I

    if-eq v5, v6, :cond_0

    .line 370
    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b:[J

    aget-wide v4, v4, v5

    .line 371
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    move-wide v2, v4

    move v1, v0

    .line 363
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 4

    .prologue
    .line 103
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v0

    :goto_1
    return v0

    .line 105
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c()V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, -0x1

    goto :goto_1

    .line 117
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 88
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 3

    .prologue
    .line 82
    .line 79
    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final b(J)J
    .locals 7

    .prologue
    .line 136
    const-wide v2, 0x7fffffffffffffffL

    .line 137
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v1, v1, v0

    iget-object v4, v1, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    .line 139
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->a(J)I

    move-result v1

    .line 140
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 141
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b(J)I

    move-result v1

    .line 143
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v5, v5, v0

    iput v1, v5, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    .line 145
    iget-object v1, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b:[J

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    aget-wide v4, v1, v4

    .line 146
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    move-wide v2, v4

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    return-wide v2
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 93
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    .line 94
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 95
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    .line 96
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    .line 97
    return-void
.end method
