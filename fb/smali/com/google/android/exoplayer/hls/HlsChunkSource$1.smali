.class final Lcom/google/android/exoplayer/hls/HlsChunkSource$1;
.super Ljava/lang/Object;
.source "mqtt/service_created"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/hls/Variant;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/exoplayer/chunk/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 605
    check-cast p1, Lcom/google/android/exoplayer/hls/Variant;

    check-cast p2, Lcom/google/android/exoplayer/hls/Variant;

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/android/exoplayer/hls/Variant;->b:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v2, p2, Lcom/google/android/exoplayer/hls/Variant;->b:Lcom/google/android/exoplayer/chunk/Format;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
