.class Lcom/facebook/video/view/exo/ManifestContentFetcher$3;
.super Ljava/lang/Object;
.source "null intent"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

.field final synthetic b:Lcom/facebook/video/view/exo/ManifestContentFetcher;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/exo/ManifestContentFetcher;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$3;->b:Lcom/facebook/video/view/exo/ManifestContentFetcher;

    iput-object p2, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$3;->a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$3;->b:Lcom/facebook/video/view/exo/ManifestContentFetcher;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$3;->a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/video/view/exo/ManifestContentFetcher;->a(Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;Z)V

    .line 108
    return-void
.end method
