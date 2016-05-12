.class Lcom/facebook/video/view/exo/ManifestContentFetcher$1;
.super Ljava/lang/Object;
.source "null intent"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

.field final synthetic b:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field final synthetic c:Lcom/facebook/video/view/exo/ManifestContentFetcher;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/exo/ManifestContentFetcher;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$1;->c:Lcom/facebook/video/view/exo/ManifestContentFetcher;

    iput-object p2, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$1;->a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    iput-object p3, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$1;->b:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$1;->a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$1;->b:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->a(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
