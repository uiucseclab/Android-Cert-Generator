.class Lcom/squareup/seismic/ShakeDetector$SampleQueue;
.super Ljava/lang/Object;
.source "progress_message"


# instance fields
.field private final a:Lcom/squareup/seismic/ShakeDetector$SamplePool;

.field private b:Lcom/squareup/seismic/ShakeDetector$Sample;

.field private c:Lcom/squareup/seismic/ShakeDetector$Sample;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-direct {v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;-><init>()V

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->a:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    return-void
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 164
    :goto_0
    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->d:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    iget-wide v0, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->a:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 167
    iget-boolean v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->b:Z

    if-eqz v1, :cond_0

    .line 168
    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->e:I

    .line 170
    :cond_0
    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->d:I

    .line 172
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 173
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-nez v1, :cond_1

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->a:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->a(Lcom/squareup/seismic/ShakeDetector$Sample;)V

    goto :goto_0

    .line 178
    :cond_2
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 153
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 154
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->a:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->a(Lcom/squareup/seismic/ShakeDetector$Sample;)V

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 157
    iput v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->d:I

    .line 158
    iput v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->e:I

    .line 159
    return-void
.end method

.method final a(JZ)V
    .locals 3

    .prologue
    .line 127
    const-wide/32 v0, 0x1dcd6500

    sub-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->a(J)V

    .line 130
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->a:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->a()Lcom/squareup/seismic/ShakeDetector$Sample;

    move-result-object v0

    .line 131
    iput-wide p1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->a:J

    .line 132
    iput-boolean p3, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->b:Z

    .line 133
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 134
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v0, v1, Lcom/squareup/seismic/ShakeDetector$Sample;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 137
    :cond_0
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 138
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-nez v1, :cond_1

    .line 139
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 143
    :cond_1
    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->d:I

    .line 144
    if-eqz p3, :cond_2

    .line 145
    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->e:I

    .line 147
    :cond_2
    return-void
.end method

.method final b()Z
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    iget-wide v0, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->a:J

    iget-object v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b:Lcom/squareup/seismic/ShakeDetector$Sample;

    iget-wide v2, v2, Lcom/squareup/seismic/ShakeDetector$Sample;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xee6b280

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->e:I

    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->d:I

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->d:I

    shr-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
