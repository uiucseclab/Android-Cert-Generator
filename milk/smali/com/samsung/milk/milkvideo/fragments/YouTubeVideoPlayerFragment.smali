.class public Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;
.super Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
.source "YouTubeVideoPlayerFragment.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;
.implements Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
.implements Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$1;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "AIzaSyCUPQdovVxRY1IzwQN0UGLhu-ckVHZXcW4"


# instance fields
.field afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field audioManager:Landroid/media/AudioManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field bufferingTracker:Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private canSendVideoPlayedEvent:Z

.field protected embedCode:Ljava/lang/String;

.field protected endTime:I

.field protected endWallTime:J

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private hideAnnotations:Z

.field private isVideoBuffering:Z

.field protected isVideoLoading:Z

.field protected isVideoReady:Z

.field mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosauthenticator:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected originalPosterUUID:Ljava/lang/String;

.field private volatile seekBarTouched:Z

.field protected startTime:I

.field protected startWallTime:J

.field timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected videoLength:I

.field protected videoTitle:Ljava/lang/String;

.field youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->seekBarTouched:Z

    .line 54
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 55
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->hideAnnotations:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoBuffering:Z

    return-void
.end method

.method private handleRestrictedVideo()V
    .locals 5

    .prologue
    .line 427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 428
    .local v0, "provider":Ljava/util/HashMap;
    const-string v1, "provider"

    const-string v2, "youtube"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    new-instance v3, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;

    invoke-direct {v3}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->restrictVideo(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/ResponseCallback;)V

    .line 431
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/CloseVideoPlayerEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/CloseVideoPlayerEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 432
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    const v4, 0x7f0800c9

    invoke-direct {v2, v3, v4}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;I)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method private hideProgressBar(Landroid/widget/FrameLayout;)V
    .locals 6
    .param p1, "innerLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 310
    const/4 v4, 0x0

    .line 311
    .local v4, "progressBarRemoved":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 312
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 313
    .local v1, "childGroup":Landroid/view/View;
    if-eqz v1, :cond_3

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 314
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    move-object v5, v1

    .line 315
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_2

    .line 317
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "childGroup":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 318
    const/4 v4, 0x1

    .line 322
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    if-eqz v4, :cond_3

    .line 327
    .end local v3    # "j":I
    :cond_1
    return-void

    .line 314
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childGroup":Landroid/view/View;
    .restart local v3    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childGroup":Landroid/view/View;
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;
    .locals 1

    .prologue
    .line 492
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abandonAudioFocus(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 512
    return-void
.end method

.method public endTime()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->endTime:I

    return v0
.end method

.method public getHideAnnotations()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->hideAnnotations:Z

    return v0
.end method

.method public getPlayerLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getVideoLayoutView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string v0, "youtube"

    return-object v0
.end method

.method public getTimeRemaining()J
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getVideoDurationInMillis()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoDurationInMillis()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getDurationMillis()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoLayoutView()Landroid/view/View;
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoPositionInMillis()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getCurrentTimeMillis()I

    move-result v0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_0
    return-void
.end method

.method hideAnnotationsAndProgressBar()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lcom/samsung/milk/milkvideo/annotations/HereBeDragons;
    .end annotation

    .annotation build Lcom/samsung/milk/milkvideo/annotations/MustBeUpdated;
        what = "YouTube SDK"
        when = "version > 1.0.0"
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 296
    .local v1, "youTubePlayerView":Landroid/view/ViewGroup;
    if-nez v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 300
    .local v0, "innerLayout":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 306
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->hideProgressBar(Landroid/widget/FrameLayout;)V

    goto :goto_0
.end method

.method public isPlayerFinished()Z
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getVideoDurationInMillis()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v2}, Lcom/google/android/youtube/player/YouTubePlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 342
    :cond_0
    :goto_0
    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public isVideoBuffering()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoBuffering:Z

    return v0
.end method

.method public isVideoLoading()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoLoading:Z

    return v0
.end method

.method public isVideoReady()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoReady:Z

    return v0
.end method

.method public loadVideo(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoBuffering:Z

    .line 92
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoReady:Z

    .line 93
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoLoading:Z

    .line 94
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->videoTitle:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->originalPosterUUID:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->startTime:I

    .line 100
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->onLoadVideo()V

    .line 101
    return-void
.end method

.method protected notifyVideoPlayed()V
    .locals 13

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->canSendVideoPlayedEvent:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v10, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->videoTitle:Ljava/lang/String;

    const-string v4, "played"

    iget v5, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->videoLength:I

    iget v6, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->startTime:I

    iget v7, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->endTime:I

    iget-wide v8, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->endWallTime:J

    iget-wide v11, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->startWallTime:J

    sub-long/2addr v8, v11

    long-to-int v8, v8

    iget-object v9, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->originalPosterUUID:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 168
    :cond_0
    return-void
.end method

.method public notifyVideoReadyToPlay()V
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getVideoDurationInMillis()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->videoLength:I

    .line 160
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;

    iget v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->videoLength:I

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public onAdStarted()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public onBuffering(Z)V
    .locals 4
    .param p1, "buffering"    # Z

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")onBuffering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoBuffering:Z

    .line 477
    if-eqz p1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->bufferingTracker:Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->bufferingStarted(Ljava/lang/String;J)V

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->setBufferingSpinner(Z)V

    .line 485
    :cond_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->bufferingTracker:Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->bufferingEnded(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected onComplete()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;->addFocusChangeResponseListener(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->fullscreenDecorView(Landroid/support/v4/app/FragmentActivity;)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->setupSystemVisibilityChangeListener(Landroid/support/v4/app/FragmentActivity;)V

    .line 75
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onError(Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;)V
    .locals 5
    .param p1, "errorReason"    # Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;

    .prologue
    const v4, 0x7f0800c9

    .line 395
    const-string v0, "onError: %s embedCode: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment$1;->$SwitchMap$com$google$android$youtube$player$YouTubePlayer$ErrorReason:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 424
    :goto_0
    :pswitch_0
    return-void

    .line 401
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/CloseVideoPlayerEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/CloseVideoPlayerEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-direct {v1, v2, v4}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    .line 406
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->setupPlayer()V

    goto :goto_0

    .line 409
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-direct {v1, v2, v4}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 412
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/CloseVideoPlayerEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/CloseVideoPlayerEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 417
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->handleRestrictedVideo()V

    goto :goto_0

    .line 420
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->pause()V

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 3
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "youTubeInitializationResult"    # Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")YouTube player failed to initialize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    .line 333
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YouTube initialization result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 2
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "youTubePlayer"    # Lcom/google/android/youtube/player/YouTubePlayer;
    .param p3, "b"    # Z

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")YouTube player initialized successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    if-nez p2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendYouTubeInitFailureEvent()V

    .line 277
    :cond_0
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    .line 278
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlaybackEventListener(Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    sget-object v1, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->CHROMELESS:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStyle(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreenControlFlags(I)V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getHideAnnotations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->hideAnnotationsAndProgressBar()V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->play()V

    .line 291
    :cond_2
    return-void
.end method

.method public onLoadVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")onLoadVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->setupPlayer()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->embedCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onLoaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoReady:Z

    .line 374
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoLoading:Z

    .line 375
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->notifyVideoReadyToPlay()V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loaded..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public onLoading()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoReady:Z

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoLoading:Z

    .line 369
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->setBufferingSpinner(Z)V

    .line 201
    invoke-super {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public onPaused()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")onPaused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoBuffering:Z

    .line 465
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 466
    return-void
.end method

.method public onPlaying()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoBuffering:Z

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")Started playing video..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->fullscreenDecorView(Landroid/support/v4/app/FragmentActivity;)V

    .line 196
    return-void
.end method

.method public onSeekTo(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 489
    return-void
.end method

.method public onStopped()V
    .locals 2

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")onStopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method public onVideoEnded()V
    .locals 0

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->onComplete()V

    .line 391
    return-void
.end method

.method public onVideoStarted()V
    .locals 2

    .prologue
    .line 385
    const-string v0, "onVideoStarted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->setupPlayer()V

    .line 87
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v1

    iput v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->endTime:I

    .line 140
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->endWallTime:J

    .line 142
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->notifyVideoPlayed()V

    .line 143
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public pauseOnAudioFocusChange()V
    .locals 0

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->pause()V

    .line 517
    return-void
.end method

.method public play(I)V
    .locals 4
    .param p1, "requestedPlayPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")play"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 109
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->seekBarTouched:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->setPlayPositionInMillis(I)V

    .line 111
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->seekBarTouched:Z

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->isVideoReady:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->startTime:I

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->startWallTime:J

    .line 119
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendVideoPlayedEvent()V

    .line 121
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 123
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->setupPlayer()V

    .line 130
    :cond_2
    :goto_0
    return-void

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->play()V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")YouTube player released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 263
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    .line 268
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")YouTube player in a bad state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public requestAudioFocus(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 507
    return-void
.end method

.method public resizeForLandscape()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public resizeForPortrait()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public seekBarWasTouched()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->seekBarTouched:Z

    .line 155
    return-void
.end method

.method protected setBufferingSpinner(Z)V
    .locals 2
    .param p1, "buffering"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoBufferingStatusChangeEvent;

    invoke-direct {v1, p1}, Lcom/samsung/milk/milkvideo/events/VideoBufferingStatusChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public setHideAnnotations(Z)V
    .locals 0
    .param p1, "hideAnnotations"    # Z

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->hideAnnotations:Z

    .line 497
    return-void
.end method

.method public setPlayPositionInMillis(I)V
    .locals 1
    .param p1, "newPosition"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->youTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->seekToMillis(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public setVideoDurationInMillis(I)V
    .locals 0
    .param p1, "newDuration"    # I

    .prologue
    .line 254
    return-void
.end method

.method protected setupPlayer()V
    .locals 1

    .prologue
    .line 206
    const-string v0, "AIzaSyCUPQdovVxRY1IzwQN0UGLhu-ckVHZXcW4"

    invoke-virtual {p0, v0, p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 207
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public startTime()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->startTime:I

    return v0
.end method
