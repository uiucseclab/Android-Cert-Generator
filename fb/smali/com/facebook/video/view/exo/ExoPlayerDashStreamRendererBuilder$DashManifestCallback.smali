.class Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;
.super Ljava/lang/Object;
.source "onBind(%s)"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;

.field private b:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;->b:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;

    .line 284
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;->b:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;

    invoke-interface {v0, p1}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;->a(Ljava/lang/Exception;)V

    .line 322
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 278
    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 288
    const-string v1, "ExoPlayerDashStreamRenderBuilder.onSingleManifest"

    const v3, 0x6e3564ac

    invoke-static {v1, v3}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 290
    const/4 v1, 0x0

    .line 291
    :try_start_0
    iget-object v3, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 292
    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    .line 293
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 294
    iget v3, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->b:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 304
    :pswitch_0
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 315
    :catchall_0
    move-exception v0

    const v1, 0x22a5d346

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0

    :cond_1
    move v0, v2

    .line 291
    goto :goto_0

    .line 296
    :pswitch_1
    :try_start_1
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 297
    if-nez v1, :cond_3

    :goto_4
    move-object v1, v0

    .line 301
    goto :goto_3

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;

    invoke-virtual {v0, p1}, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-result-object v0

    .line 312
    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;->a:Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;

    invoke-virtual {v2, v1}, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder;->a(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lcom/facebook/video/view/exo/ExoPlayerDashStreamRendererBuilder$DashManifestCallback;->b:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;

    invoke-interface {v2, v0, v1}, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;->a(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    const v0, -0x599b5781

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 316
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_4

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
