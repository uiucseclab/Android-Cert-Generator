.class Lcom/facebook/video/view/exo/ManifestContentFetcher$2;
.super Ljava/lang/Object;
.source "null intent"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

.field final synthetic b:Ljava/io/IOException;

.field final synthetic c:Lcom/facebook/video/view/exo/ManifestContentFetcher;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/exo/ManifestContentFetcher;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$2;->c:Lcom/facebook/video/view/exo/ManifestContentFetcher;

    iput-object p2, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$2;->a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    iput-object p3, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$2;->b:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$2;->a:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher$2;->b:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->a(Ljava/io/IOException;)V

    .line 89
    return-void
.end method
