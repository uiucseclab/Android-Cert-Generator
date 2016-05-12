.class Lcom/squareup/seismic/ShakeDetector$SamplePool;
.super Ljava/lang/Object;
.source "progress_message"


# instance fields
.field private a:Lcom/squareup/seismic/ShakeDetector$Sample;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/squareup/seismic/ShakeDetector$Sample;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->a:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 222
    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/squareup/seismic/ShakeDetector$Sample;

    invoke-direct {v0}, Lcom/squareup/seismic/ShakeDetector$Sample;-><init>()V

    .line 228
    :goto_0
    return-object v0

    .line 226
    :cond_0
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->a:Lcom/squareup/seismic/ShakeDetector$Sample;

    goto :goto_0
.end method

.method final a(Lcom/squareup/seismic/ShakeDetector$Sample;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->a:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v0, p1, Lcom/squareup/seismic/ShakeDetector$Sample;->c:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 234
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->a:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 235
    return-void
.end method
