.class public final Lcom/facebook/video/view/exo/DefaultSampleSource;
.super Ljava/lang/Object;
.source "onDestroy"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/video/view/exo/RtmpSampleExtractor;

.field private c:[Lcom/google/android/exoplayer/TrackInfo;

.field private d:Z

.field private e:I

.field private f:[I

.field private g:[Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/facebook/video/view/exo/DefaultSampleSource;

    sput-object v0, Lcom/facebook/video/view/exo/DefaultSampleSource;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/video/view/exo/RtmpSampleExtractor;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    iput-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->b:Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    .line 45
    iput p2, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->e:I

    .line 46
    return-void
.end method

.method private a(JZ)V
    .locals 3

    .prologue
    .line 167
    if-nez p3, :cond_0

    iget-wide v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->h:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    .line 168
    :cond_0
    iput-wide p1, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->h:J

    .line 170
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->g:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 121
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 122
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 123
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->g:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->g:[Z

    aput-boolean v1, v0, p1

    .line 125
    const/4 v0, -0x5

    .line 140
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0

    .line 127
    :cond_1
    if-eqz p6, :cond_2

    move v0, v2

    .line 128
    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    aget v0, v0, p1

    if-eq v0, v3, :cond_3

    .line 131
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->b:Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    invoke-virtual {v0, p1, p4}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->a(ILcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    aput v3, v0, p1

    .line 133
    const/4 v0, -0x4

    goto :goto_1

    .line 136
    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->h:J

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->b:Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    invoke-virtual {v0, p1, p5}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->a(ILcom/google/android/exoplayer/SampleHolder;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1
.end method

.method public final a(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 82
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->c:[Lcom/google/android/exoplayer/TrackInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(IJ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 88
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 89
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    aput v1, v0, p1

    .line 91
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0, p2, p3, v1}, Lcom/facebook/video/view/exo/DefaultSampleSource;->a(JZ)V

    .line 92
    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_1
.end method

.method public final a(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 55
    iget-boolean v1, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    return v0

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->b:Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    invoke-virtual {v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    .line 62
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->b:Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    invoke-virtual {v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->b()[Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->c:[Lcom/google/android/exoplayer/TrackInfo;

    .line 63
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->c:[Lcom/google/android/exoplayer/TrackInfo;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    .line 64
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->c:[Lcom/google/android/exoplayer/TrackInfo;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->g:[Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/facebook/video/view/exo/DefaultSampleSource;->a:Ljava/lang/Class;

    const-string v2, "IOException in prepare"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 76
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->c:[Lcom/google/android/exoplayer/TrackInfo;

    array-length v0, v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 97
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 99
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->g:[Z

    aput-boolean v1, v0, p1

    .line 100
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->f:[I

    aput v1, v0, p1

    .line 101
    return-void

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/video/view/exo/DefaultSampleSource;->a(JZ)V

    .line 148
    return-void
.end method

.method public final b(IJ)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public final bP_()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->d:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 153
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->b:Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    invoke-virtual {v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->e:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 159
    iget v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->e:I

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/facebook/video/view/exo/DefaultSampleSource;->b:Lcom/facebook/video/view/exo/RtmpSampleExtractor;

    invoke-virtual {v0}, Lcom/facebook/video/view/exo/RtmpSampleExtractor;->d()V

    .line 162
    :cond_0
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
