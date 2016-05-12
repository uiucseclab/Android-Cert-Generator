.class public Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "YouTubeWebPlayerFragment.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$1;,
        Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;,
        Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;
    }
.end annotation


# static fields
.field public static final YOUTUBE_WEB_PLAYER_TYPE:Ljava/lang/String; = "youtube web"


# instance fields
.field appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field audioManager:Landroid/media/AudioManager;
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

.field private isVideoBuffering:Z

.field protected isVideoReady:Z

.field protected originalPosterUUID:Ljava/lang/String;

.field private playerState:I

.field private volatile seekBarTouched:Z

.field protected startTime:I

.field protected startWallTime:J

.field timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected videoLength:I

.field protected videoTitle:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private youTubePlayerInterface:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->seekBarTouched:Z

    .line 43
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoBuffering:Z

    .line 354
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->playerState:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoBuffering:Z

    return p1
.end method


# virtual methods
.method public endTime()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->endTime:I

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f030047

    return v0
.end method

.method public getPlayerLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->playerState:I

    return v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, "youtube web"

    return-object v0
.end method

.method public getTimeRemaining()J
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getVideoDurationInMillis()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getVideoPositionInMillis()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoDurationInMillis()I
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:getDuration()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->youTubePlayerInterface:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->getVideoDurationInMillis()I

    move-result v0

    return v0
.end method

.method public getVideoLayoutView()Landroid/view/View;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVideoPositionInMillis()I
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:getCurrentTime()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->youTubePlayerInterface:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->getVideoPositionInMillis()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public isPlayerFinished()Z
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->playerState:I

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;->ENDED:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerState()I

    move-result v0

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;->PLAYING:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoBuffering()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoBuffering:Z

    return v0
.end method

.method public isVideoLoading()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoReady()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoReady:Z

    return v0
.end method

.method public loadVideo(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoReady:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoBuffering:Z

    .line 108
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->embedCode:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->videoTitle:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->originalPosterUUID:Ljava/lang/String;

    .line 112
    iput v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->startTime:I

    .line 114
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->onLoadVideo()V

    .line 115
    return-void
.end method

.method protected notifyVideoPlayed()V
    .locals 13

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->canSendVideoPlayedEvent:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v10, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->embedCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->videoTitle:Ljava/lang/String;

    const-string v4, "played"

    iget v5, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->videoLength:I

    iget v6, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->startTime:I

    iget v7, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->endTime:I

    iget-wide v8, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->endWallTime:J

    iget-wide v11, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->startWallTime:J

    sub-long/2addr v8, v11

    long-to-int v8, v8

    iget-object v9, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->originalPosterUUID:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 163
    :cond_0
    return-void
.end method

.method public notifyVideoReadyToPlay()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getVideoDurationInMillis()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->videoLength:I

    .line 155
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;

    iget v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->videoLength:I

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method protected onComplete()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLoadVideo()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->youTubePlayerInterface:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->embedCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->setEmbedcode(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/youtube.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->setupPlayer()V

    .line 103
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getVideoPositionInMillis()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->endTime:I

    .line 142
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->endWallTime:J

    .line 144
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->notifyVideoPlayed()V

    .line 146
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:pauseVideo()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public play(I)V
    .locals 4
    .param p1, "requestedPlayPosition"    # I

    .prologue
    const/4 v3, 0x1

    .line 118
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 120
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->seekBarTouched:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->setPlayPositionInMillis(I)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->seekBarTouched:Z

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoReady:Z

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getVideoPositionInMillis()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->startTime:I

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->startWallTime:J

    .line 130
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendVideoPlayedEvent()V

    .line 132
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 134
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:playVideo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:stopVideo()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:clearVideo()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 260
    return-void
.end method

.method public resizeForLandscape()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 166
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 168
    .local v0, "playerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 169
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 170
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    .end local v0    # "playerParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public resizeForPortrait()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    .local v0, "playerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 179
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 180
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getPlayerLayout()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 183
    .end local v0    # "playerParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public seekBarWasTouched()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->seekBarTouched:Z

    .line 151
    return-void
.end method

.method public setPlayPositionInMillis(I)V
    .locals 0
    .param p1, "newPosition"    # I

    .prologue
    .line 232
    return-void
.end method

.method public setVideoDurationInMillis(I)V
    .locals 0
    .param p1, "newDuration"    # I

    .prologue
    .line 243
    return-void
.end method

.method protected setupPlayer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 203
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;-><init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->youTubePlayerInterface:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    .line 204
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    .line 205
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->youTubePlayerInterface:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 209
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 210
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 212
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 213
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 214
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 215
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 216
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 217
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public startTime()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->startTime:I

    return v0
.end method
