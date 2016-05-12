.class final Lcom/google/android/exoplayer/util/SlidingPercentile$1;
.super Ljava/lang/Object;
.source "messageReceived %s"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    check-cast p2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    .line 40
    iget v0, p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->a:I

    iget v1, p2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->a:I

    sub-int/2addr v0, v1

    return v0
.end method
