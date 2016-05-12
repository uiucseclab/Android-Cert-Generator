.class public final Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
.super Lcom/google/android/exoplayer/hls/HlsPlaylist;
.source "mqtt-latest.facebook.com"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/hls/Variant;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/hls/Subtitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/hls/Variant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/hls/Subtitle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/hls/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->a:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->b:Ljava/util/List;

    .line 32
    return-void
.end method
