.class public Lcom/facebook/video/view/exo/VideoServerHLSUriDataSource;
.super Lcom/facebook/video/view/exo/VideoServerUriDataSource;
.source "notify %s"


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Lcom/facebook/video/server/VideoServer;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/video/view/exo/VideoServerUriDataSource;-><init>(Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Lcom/facebook/video/server/VideoServer;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 2

    .prologue
    .line 25
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerHLSUriDataSource;->a:Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v0

    .line 28
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/video/view/exo/VideoServerUriDataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v0

    goto :goto_0
.end method
