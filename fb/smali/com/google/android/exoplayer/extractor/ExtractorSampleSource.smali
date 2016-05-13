.class public final Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
.super Ljava/lang/Object;
.source "ndroid.support"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/exoplayer/extractor/Extractor;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

.field private B:Ljava/io/IOException;

.field private C:I

.field private D:J

.field private E:Z

.field public F:I

.field private G:I

.field private final b:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

.field private final c:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final d:I

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Landroid/net/Uri;

.field private final h:Lcom/google/android/exoplayer/upstream/DataSource;

.field private volatile i:Z

.field private volatile j:Lcom/google/android/exoplayer/extractor/SeekMap;

.field private volatile k:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private l:Z

.field private m:I

.field private n:[Lcom/google/android/exoplayer/TrackInfo;

.field private o:J

.field private p:[Z

.field private q:[Z

.field private r:[Z

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:J

.field private y:J

.field private z:Lcom/google/android/exoplayer/upstream/Loader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    .line 109
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.webm.WebmExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 116
    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.mp4.FragmentedMp4Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 123
    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.mp4.Mp4Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 130
    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.mp3.Mp3Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 137
    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.ts.AdtsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 144
    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.extractor.ts.TsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 150
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method private varargs constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;II[Lcom/google/android/exoplayer/extractor/Extractor;)V
    .locals 3

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g:Landroid/net/Uri;

    .line 252
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 253
    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 254
    iput p4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:I

    .line 255
    iput p5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f:I

    .line 256
    if-eqz p6, :cond_0

    array-length v0, p6

    if-nez v0, :cond_1

    .line 257
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array p6, v0, [Lcom/google/android/exoplayer/extractor/Extractor;

    .line 258
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p6

    if-ge v1, v0, :cond_1

    .line 260
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/Extractor;

    aput-object v0, p6, v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 263
    :catch_1
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 268
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    invoke-direct {v0, p6, p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;-><init>([Lcom/google/android/exoplayer/extractor/Extractor;Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    .line 269
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    .line 270
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    .line 271
    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;I[Lcom/google/android/exoplayer/extractor/Extractor;)V
    .locals 7

    .prologue
    .line 217
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;II[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 219
    return-void
.end method

.method private c(J)V
    .locals 1

    .prologue
    .line 545
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:Z

    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    goto :goto_0

    .line 558
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j()V

    .line 559
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g()V

    goto :goto_0
.end method

.method private d(J)Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 9

    .prologue
    .line 635
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:I

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v6, p1, p2}, Lcom/google/android/exoplayer/extractor/SeekMap;->b(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lcom/google/android/exoplayer/upstream/Allocator;IJ)V

    return-object v0
.end method

.method private e(J)V
    .locals 3

    .prologue
    .line 649
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(J)V

    .line 649
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 654
    :cond_1
    return-void
.end method

.method private g()V
    .locals 12

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 564
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 569
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->D:J

    sub-long/2addr v4, v6

    .line 574
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->C:I

    int-to-long v6, v0

    .line 674
    const-wide/16 v8, 0x1

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    .line 576
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    if-nez v0, :cond_5

    .line 580
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 572
    goto :goto_1

    .line 583
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 601
    :cond_4
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->G:I

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    .line 584
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/SeekMap;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 589
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 592
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 595
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->x:J

    .line 596
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->w:Z

    goto :goto_3

    .line 610
    :cond_7
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->y:J

    .line 611
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->w:Z

    .line 613
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    if-nez v0, :cond_8

    .line 614
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 625
    :goto_5
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->G:I

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_0

    .line 616
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 617
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_9

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    .line 618
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:Z

    .line 619
    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    goto/16 :goto_0

    .line 622
    :cond_9
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d(J)Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 623
    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    goto :goto_5
.end method

.method private h()Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 8

    .prologue
    .line 630
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->h:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->d:I

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lcom/google/android/exoplayer/upstream/Allocator;IJ)V

    return-object v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 640
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    :goto_1
    return v2

    .line 640
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 645
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 657
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a()V

    .line 657
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 660
    :cond_0
    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->A:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    .line 661
    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    .line 662
    iput v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->C:I

    .line 663
    return-void
.end method

.method private k()Z
    .locals 4

    .prologue
    .line 666
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

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

.method private l()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    instance-of v0, v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;

    return v0
.end method


# virtual methods
.method public final a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I
    .locals 6

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 371
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    aput-boolean v1, v0, p1

    .line 375
    const/4 v0, -0x5

    .line 406
    :goto_0
    return v0

    .line 378
    :cond_0
    if-nez p6, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 379
    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .line 383
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->p:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_3

    .line 384
    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->e()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->a:Lcom/google/android/exoplayer/MediaFormat;

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->b:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->p:[Z

    aput-boolean v1, v0, p1

    .line 387
    const/4 v0, -0x4

    goto :goto_0

    .line 390
    :cond_3
    invoke-virtual {v0, p5}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 391
    iget-wide v2, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->u:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    const/4 v0, 0x1

    .line 392
    :goto_1
    iget v2, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    if-eqz v0, :cond_6

    const/high16 v0, 0x8000000

    :goto_2
    or-int/2addr v0, v2

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->d:I

    .line 393
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->w:Z

    if-eqz v0, :cond_4

    .line 395
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->x:J

    iget-wide v4, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->y:J

    .line 396
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->w:Z

    .line 398
    :cond_4
    iget-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->e:J

    .line 399
    const/4 v0, -0x3

    goto :goto_0

    :cond_5
    move v0, v1

    .line 391
    goto :goto_1

    :cond_6
    move v0, v1

    .line 392
    goto :goto_2

    .line 402
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:Z

    if-eqz v0, :cond_8

    .line 403
    const/4 v0, -0x1

    goto :goto_0

    :cond_8
    move v0, v2

    .line 406
    goto :goto_0
.end method

.method public final a(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->n:[Lcom/google/android/exoplayer/TrackInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->i:Z

    .line 530
    return-void
.end method

.method public final a(IJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 326
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aput-boolean v1, v0, p1

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->p:[Z

    aput-boolean v1, v0, p1

    .line 329
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-ne v0, v1, :cond_0

    .line 330
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->b(J)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    aput-boolean v2, v0, p1

    .line 333
    return-void

    :cond_1
    move v0, v2

    .line 325
    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 540
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    .line 535
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:Z

    .line 494
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 508
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    .line 509
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->F:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->G:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->C:I

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->D:J

    .line 512
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g()V

    .line 513
    return-void

    .line 509
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->C:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 281
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v2, :cond_2

    .line 285
    new-instance v2, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v3, "Loader:ExtractorSampleSource"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g()V

    .line 290
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->i:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 292
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    .line 293
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    .line 294
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->p:[Z

    .line 295
    new-array v2, v3, [Lcom/google/android/exoplayer/TrackInfo;

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->n:[Lcom/google/android/exoplayer/TrackInfo;

    .line 296
    iput-wide v10, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    move v2, v0

    .line 297
    :goto_1
    if-ge v2, v3, :cond_4

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->e()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 299
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->n:[Lcom/google/android/exoplayer/TrackInfo;

    new-instance v5, Lcom/google/android/exoplayer/TrackInfo;

    iget-object v6, v0, Lcom/google/android/exoplayer/MediaFormat;->a:Ljava/lang/String;

    iget-wide v8, v0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    invoke-direct {v5, v6, v8, v9}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    aput-object v5, v4, v2

    .line 300
    iget-wide v4, v0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 301
    iget-wide v4, v0, Lcom/google/android/exoplayer/MediaFormat;->c:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->o:J

    .line 297
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 304
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    move v0, v1

    .line 305
    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 339
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aput-boolean v2, v0, p1

    .line 341
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-nez v0, :cond_0

    .line 342
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j()V

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/upstream/Allocator;->a(I)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 433
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/SeekMap;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const-wide/16 p1, 0x0

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    .line 440
    :goto_1
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    .line 441
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->u:J

    .line 442
    cmp-long v0, v4, p1

    if-nez v0, :cond_4

    .line 461
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 433
    goto :goto_0

    .line 439
    :cond_3
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    goto :goto_1

    .line 447
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v3, v2

    move v4, v0

    .line 448
    :goto_3
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->b(J)Z

    move-result v0

    and-int/2addr v4, v0

    .line 448
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    move v0, v2

    .line 447
    goto :goto_2

    .line 453
    :cond_6
    if-nez v4, :cond_7

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c(J)V

    .line 458
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->q:[Z

    aput-boolean v1, v0, v2

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public final b(IJ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->r:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 356
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    .line 357
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e(J)V

    .line 358
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 365
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->g()V

    .line 362
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 363
    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->g()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final bP_()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    .line 276
    return-object p0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 428
    :cond_0
    return-void

    .line 414
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    throw v0

    .line 418
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 419
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->f:I

    .line 425
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->C:I

    if-le v1, v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->B:Ljava/io/IOException;

    throw v0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/SeekMap;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final d()J
    .locals 8

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 465
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->E:Z

    if-eqz v0, :cond_1

    .line 466
    const-wide/16 v2, -0x3

    .line 475
    :cond_0
    :goto_0
    return-wide v2

    .line 467
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    goto :goto_0

    .line 471
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->f()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 471
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 475
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->t:J

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 483
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->s:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->c()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->z:Lcom/google/android/exoplayer/upstream/Loader;

    .line 487
    :cond_0
    return-void

    .line 482
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    .line 520
    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;-><init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 522
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    :cond_0
    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 498
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->m:I

    if-lez v0, :cond_0

    .line 499
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->v:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c(J)V

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->j()V

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->c:Lcom/google/android/exoplayer/upstream/Allocator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocator;->a(I)V

    goto :goto_0
.end method
