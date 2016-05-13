.class public Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
.super Ljava/lang/Object;
.source "persisteduid"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# instance fields
.field public final a:I

.field private final b:Lcom/google/android/exoplayer/LoadControl;

.field private final c:Lcom/google/android/exoplayer/chunk/ChunkSource;

.field private final d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

.field private final h:I

.field public final i:Landroid/os/Handler;

.field public final j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

.field private final k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:Z

.field private r:Lcom/google/android/exoplayer/upstream/Loader;

.field private s:Z

.field private t:Ljava/io/IOException;

.field private u:I

.field private v:J

.field private w:J

.field private x:Lcom/google/android/exoplayer/MediaFormat;

.field private y:Lcom/google/android/exoplayer/chunk/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 94
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V
    .locals 8

    .prologue
    .line 100
    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;II)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;II)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    .line 108
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    .line 109
    iput p3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h:I

    .line 110
    iput-object p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    .line 111
    iput-object p5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    .line 112
    iput p6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a:I

    .line 113
    iput p7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:I

    .line 114
    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-interface {p2}, Lcom/google/android/exoplayer/LoadControl;->b()Lcom/google/android/exoplayer/upstream/Allocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    .line 120
    return-void
.end method

.method private a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 12

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    const v2, -0x1a0382c4

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 587
    :cond_0
    return-void
.end method

.method private a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 18

    .prologue
    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v2, :cond_0

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    const v4, 0x6a95e97

    invoke-static {v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 601
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 7

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 640
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V

    const v1, -0x4e14efa8

    invoke-static {v6, v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 648
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/chunk/Chunk;)Z
    .locals 1

    .prologue
    .line 561
    instance-of v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    return v0
.end method

.method private c(I)Z
    .locals 13

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 544
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    .line 546
    :cond_0
    const-wide/16 v2, 0x0

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-wide v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->h:J

    .line 549
    const/4 v0, 0x0

    .line 550
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 552
    iget-wide v2, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->g:J

    goto :goto_1

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(I)V

    .line 556
    .line 626
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v6, :cond_2

    .line 627
    iget-object v12, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;

    move-object v7, p0

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JJ)V

    const v7, -0x3b3fe343

    invoke-static {v12, v6, v7}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 635
    .line 557
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(J)V
    .locals 1

    .prologue
    .line 377
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Z

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g()V

    .line 385
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i()V

    goto :goto_0
.end method

.method private static e(J)J
    .locals 4

    .prologue
    .line 569
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private f(J)V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;J)V

    const v2, -0x1705f2a7

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 612
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h()V

    .line 392
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Ljava/io/IOException;

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:I

    .line 397
    return-void
.end method

.method private i()V
    .locals 14

    .prologue
    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 401
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j()J

    move-result-wide v8

    .line 402
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Ljava/io/IOException;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v7, v0

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v7, :cond_5

    :cond_0
    const/4 v0, 0x1

    move v10, v0

    .line 407
    :goto_1
    if-nez v10, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    sub-long v0, v12, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 410
    :cond_2
    iput-wide v12, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->p:J

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c(I)Z

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v1, :cond_6

    .line 418
    const-wide/16 v4, -0x1

    .line 426
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    move-object v1, p0

    move v6, v10

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;JJZ)Z

    move-result v0

    .line 429
    if-eqz v7, :cond_7

    .line 430
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->v:J

    sub-long v0, v12, v0

    .line 431
    iget v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 432
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k()V

    .line 440
    :cond_3
    :goto_3
    return-void

    .line 402
    :cond_4
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 403
    :cond_5
    const/4 v0, 0x0

    move v10, v0

    goto :goto_1

    .line 419
    :cond_6
    if-eqz v0, :cond_8

    .line 421
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j()J

    move-result-wide v4

    goto :goto_2

    .line 437
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 438
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()V

    goto :goto_3

    :cond_8
    move-wide v4, v8

    goto :goto_2
.end method

.method private j()J
    .locals 2

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    .line 451
    :goto_0
    return-wide v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 451
    iget-boolean v1, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->j:Z

    if-eqz v1, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->h:J

    goto :goto_0
.end method

.method private k()V
    .locals 9

    .prologue
    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Ljava/io/IOException;

    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v8, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 466
    invoke-static {v8}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c(I)Z

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v0, v8, :cond_0

    .line 473
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v8, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 511
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-virtual {v8}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f(J)V

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v8, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 493
    if-ne v8, v7, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-ne v0, v8, :cond_4

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v8, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 493
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 504
    :cond_4
    invoke-virtual {v8}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f(J)V

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c(I)Z

    .line 508
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h()V

    .line 509
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l()V

    goto :goto_0
.end method

.method private l()V
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v10, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 515
    if-nez v10, :cond_0

    .line 534
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->w:J

    .line 520
    invoke-static {v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v10

    .line 521
    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    .line 522
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)V

    .line 523
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    iput-wide v6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    .line 527
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    iget v3, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->b:I

    iget v4, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->c:I

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->g:J

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->h:J

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 533
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, v10, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer/chunk/Chunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    iget v3, v10, Lcom/google/android/exoplayer/chunk/Chunk;->b:I

    iget v4, v10, Lcom/google/android/exoplayer/chunk/Chunk;->c:I

    iget-object v5, v10, Lcom/google/android/exoplayer/chunk/Chunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJ)V

    goto :goto_1
.end method

.method private m()Z
    .locals 4

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I
    .locals 6

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 202
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 203
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    .line 205
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->q:Z

    if-eqz v0, :cond_2

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->q:Z

    .line 207
    const/4 v0, -0x5

    .line 257
    :goto_2
    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 210
    :cond_2
    if-eqz p6, :cond_3

    .line 211
    const/4 v0, -0x2

    goto :goto_2

    .line 214
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    const/4 v0, -0x2

    goto :goto_2

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    .line 219
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    move-object v2, v0

    .line 221
    :goto_4
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    move-object v2, v0

    goto :goto_4

    .line 218
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto :goto_3

    .line 226
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->y:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->y:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v3, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 227
    :cond_7
    iget-object v0, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget v3, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->c:I

    iget-wide v4, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->g:J

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 229
    iget-object v0, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->y:Lcom/google/android/exoplayer/chunk/Format;

    .line 232
    :cond_8
    if-nez v1, :cond_9

    iget-boolean v0, v2, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a:Z

    if-eqz v0, :cond_a

    .line 233
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->b()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 234
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->x:Lcom/google/android/exoplayer/MediaFormat;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer/MediaFormat;->a(Lcom/google/android/exoplayer/MediaFormat;Z)Z

    move-result v3

    if-nez v3, :cond_a

    .line 235
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 236
    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    .line 237
    invoke-virtual {v2}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->c()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v1

    iput-object v1, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->b:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 238
    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->x:Lcom/google/android/exoplayer/MediaFormat;

    .line 239
    const/4 v0, -0x4

    goto/16 :goto_2

    .line 243
    :cond_a
    if-nez v1, :cond_c

    .line 244
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Z

    if-eqz v0, :cond_b

    .line 245
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 247
    :cond_b
    const/4 v0, -0x2

    goto/16 :goto_2

    .line 250
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p5}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 251
    iget-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    const/4 v0, 0x1

    .line 252
    :goto_5
    iget v1, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    if-eqz v0, :cond_e

    const/high16 v0, 0x8000000

    :goto_6
    or-int/2addr v0, v1

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    .line 254
    const/4 v0, -0x3

    goto/16 :goto_2

    .line 251
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 252
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 257
    :cond_f
    const/4 v0, -0x2

    goto/16 :goto_2
.end method

.method public final a(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 149
    if-nez p1, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a()Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 148
    goto :goto_0

    :cond_2
    move v2, v1

    .line 149
    goto :goto_1
.end method

.method public final a(IJ)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 156
    if-nez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 157
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->b()V

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->h:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;I)V

    .line 160
    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->y:Lcom/google/android/exoplayer/chunk/Format;

    .line 161
    iput-object v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->x:Lcom/google/android/exoplayer/MediaFormat;

    .line 162
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    .line 163
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    .line 164
    iput-boolean v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->q:Z

    .line 165
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d(J)V

    .line 166
    return-void

    :cond_0
    move v0, v2

    .line 155
    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 15

    .prologue
    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 324
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->w:J

    sub-long v12, v10, v0

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v14, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, v14}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)V

    .line 327
    invoke-static {v14}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/Chunk;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v14

    .line 328
    check-cast v0, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 329
    invoke-virtual {v14}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v1

    iget v3, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->b:I

    iget v4, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->c:I

    iget-object v5, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-wide v6, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->g:J

    iget-wide v8, v0, Lcom/google/android/exoplayer/chunk/MediaChunk;->h:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    .line 331
    check-cast v14, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    iget-boolean v0, v14, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->j:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Z

    .line 336
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g()V

    .line 337
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i()V

    .line 338
    return-void

    .line 333
    :cond_0
    invoke-virtual {v14}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v1

    iget v3, v14, Lcom/google/android/exoplayer/chunk/Chunk;->b:I

    iget v4, v14, Lcom/google/android/exoplayer/chunk/Chunk;->c:I

    iget-object v5, v14, Lcom/google/android/exoplayer/chunk/Chunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 5

    .prologue
    .line 357
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Ljava/io/IOException;

    .line 358
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:I

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->v:J

    .line 360
    .line 615
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->j:Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;

    invoke-direct {v3, p0, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V

    const v4, 0x1aa72c7c

    invoke-static {v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 623
    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i()V

    .line 363
    return-void
.end method

.method public final a(J)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 131
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    if-ne v0, v4, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 132
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    if-ne v0, v4, :cond_2

    .line 137
    :goto_1
    return v1

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loader:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v3}, Lcom/google/android/exoplayer/chunk/ChunkSource;->a()Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer/TrackInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    .line 136
    iput v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    goto :goto_1
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 142
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 143
    return v1

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 171
    if-nez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 185
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 170
    goto :goto_0

    :cond_1
    move v1, v2

    .line 171
    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 182
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g()V

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->a()V

    goto :goto_2

    .line 176
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer/LoadControl;->a(Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 183
    :goto_3
    throw v0

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 182
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g()V

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer/LoadControl;->a()V

    goto :goto_3
.end method

.method public final b(J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 262
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 264
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    .line 265
    :goto_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    .line 266
    iput-wide p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->n:J

    .line 267
    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    .line 286
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 262
    goto :goto_0

    .line 264
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    goto :goto_1

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b(J)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 273
    :goto_3
    if-eqz v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    .line 277
    :cond_3
    :goto_4
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->a()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->c()I

    move-result v3

    if-gt v0, v3, :cond_6

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move v0, v2

    .line 272
    goto :goto_3

    .line 282
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d(J)V

    .line 285
    :cond_6
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->q:Z

    goto :goto_2
.end method

.method public final b(IJ)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 191
    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 192
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->d()V

    .line 194
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->i()V

    .line 195
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 190
    goto :goto_0

    :cond_3
    move v0, v2

    .line 191
    goto :goto_1
.end method

.method public final bP_()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 125
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    .line 126
    return-object p0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->u:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->k:I

    if-le v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->t:Ljava/io/IOException;

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->c:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->e()V

    .line 295
    :cond_1
    return-void
.end method

.method public final d()J
    .locals 4

    .prologue
    .line 299
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 300
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    .line 306
    :cond_0
    :goto_1
    return-wide v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->s:Z

    if-eqz v0, :cond_3

    .line 303
    const-wide/16 v0, -0x3

    goto :goto_1

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f()J

    move-result-wide v0

    .line 306
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->m:J

    goto :goto_1
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 313
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->c()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->r:Lcom/google/android/exoplayer/upstream/Loader;

    .line 318
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    .line 319
    return-void

    :cond_1
    move v0, v1

    .line 313
    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d:Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->b:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 343
    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/Chunk;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->f(J)V

    .line 344
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g()V

    .line 345
    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 346
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->o:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->d(J)V

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 350
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->g()V

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b:Lcom/google/android/exoplayer/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer/LoadControl;->a()V

    goto :goto_0
.end method
