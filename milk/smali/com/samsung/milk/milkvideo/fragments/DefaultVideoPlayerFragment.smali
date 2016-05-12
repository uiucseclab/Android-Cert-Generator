.class public Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "DefaultVideoPlayerFragment.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;


# static fields
.field private static final HIGH_OOYALA_BITRATE_KBPS:I = 0x1194

.field private static final MEDIUM_OOYALA_BITRATE_KBPS:I = 0x7d0


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

.field bandwidthDetector:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field bufferingTracker:Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private canSendVideoPlayedEvent:Z

.field defaultPlayer:Landroid/media/MediaPlayer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private defaultPlayerLayout:Landroid/widget/FrameLayout;

.field protected embedCode:Ljava/lang/String;

.field protected endTime:I

.field protected endWallTime:J

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private isComplete:Z

.field private isVideoBuffering:Z

.field protected isVideoLoading:Z

.field protected isVideoReady:Z

.field ooyalaRestService:Lcom/samsung/milk/milkvideo/api/OoyalaRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected originalPosterUUID:Ljava/lang/String;

.field private volatile seekBarTouched:Z

.field protected startTime:I

.field protected startWallTime:J

.field private streamUrl:Ljava/lang/String;

.field private surfaceView:Landroid/view/SurfaceView;

.field timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected videoLength:I

.field protected videoTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->seekBarTouched:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoBuffering:Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->streamUrl:Ljava/lang/String;

    return-object p1
.end method

.method private setSurfaceViewDimensions()V
    .locals 5

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->getScreenDimensions(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    .line 340
    .local v0, "screen":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 402
    return-void
.end method

.method public endTime()I
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 247
    const v0, 0x7f030033

    return v0
.end method

.method public getPlayerLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "ooyala"

    return-object v0
.end method

.method public getTimeRemaining()J
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getVideoDurationInMillis()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVideoDurationInMillis()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getVideoLayoutView()Landroid/view/View;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getVideoPositionInMillis()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public isPlayerFinished()Z
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getVideoDurationInMillis()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getVideoPositionInMillis()I

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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 289
    .local v0, "isPlaying":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    return v0

    .end local v0    # "isPlaying":Z
    :cond_0
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method public isVideoBuffering()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoBuffering:Z

    return v0
.end method

.method public isVideoLoading()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoLoading:Z

    return v0
.end method

.method public isVideoReady()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoReady:Z

    return v0
.end method

.method public loadVideo(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 10
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoBuffering:Z

    .line 98
    iput-boolean v9, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoReady:Z

    .line 99
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoLoading:Z

    .line 100
    iput v9, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->startTime:I

    .line 102
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->embedCode:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->videoTitle:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->originalPosterUUID:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getStreamUrlMedium()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->streamUrl:Ljava/lang/String;

    .line 107
    const/16 v6, 0x7d0

    .line 108
    .local v6, "desiredBitrate":I
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->bandwidthDetector:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->getCurrentBandwidth()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 109
    const/16 v6, 0x1194

    .line 110
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getStreamUrlHigh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->streamUrl:Ljava/lang/String;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->streamUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    const-wide/16 v4, 0x168

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "expires":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->embedCode:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/milk/milkvideo/utils/OoyalaSignatureUtils;->generateSignatureForStreams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "signature":Ljava/lang/String;
    move v8, v6

    .line 119
    .local v8, "finalDesiredBitrate":I
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->ooyalaRestService:Lcom/samsung/milk/milkvideo/api/OoyalaRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->embedCode:Ljava/lang/String;

    sget-object v4, Lcom/samsung/milk/milkvideo/utils/OoyalaSignatureUtils;->API_KEY:Ljava/lang/String;

    new-instance v5, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;

    invoke-direct {v5, p0, v8}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;I)V

    invoke-interface/range {v0 .. v5}, Lcom/samsung/milk/milkvideo/api/OoyalaRestService;->getStreams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v2    # "expires":Ljava/lang/String;
    .end local v3    # "signature":Ljava/lang/String;
    .end local v8    # "finalDesiredBitrate":I
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v7

    .line 137
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v0, "Failed to generate ooyala signature, using .m3u8 stream instead"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->onLoadVideo()V

    goto :goto_0

    .line 139
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v7

    .line 140
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string v0, "Failed to generate ooyala signature, using .m3u8 stream instead"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->onLoadVideo()V

    goto :goto_0

    .line 144
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->onLoadVideo()V

    goto :goto_0
.end method

.method protected notifyVideoPlayed()V
    .locals 13

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->canSendVideoPlayedEvent:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v10, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->embedCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->videoTitle:Ljava/lang/String;

    const-string v4, "played"

    iget v5, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->videoLength:I

    iget v6, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->startTime:I

    iget v7, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->endTime:I

    iget-wide v8, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->endWallTime:J

    iget-wide v11, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->startWallTime:J

    sub-long/2addr v8, v11

    long-to-int v8, v8

    iget-object v9, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->originalPosterUUID:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 209
    :cond_0
    return-void
.end method

.method public notifyVideoReadyToPlay()V
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getVideoDurationInMillis()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->videoLength:I

    .line 201
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;

    iget v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->videoLength:I

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 389
    const-string v0, "onCompletion"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isComplete:Z

    .line 392
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;->addFocusChangeResponseListener(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo: what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->bufferingTracker:Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->embedCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->bufferingStarted(Ljava/lang/String;J)V

    .line 366
    :cond_0
    :goto_0
    return v4

    .line 363
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->bufferingTracker:Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->embedCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->bufferingEnded(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onLoadVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/milk/milkvideo/utils/Constants;->CLICK_START:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms - Ooyala setup load video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, v7}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->setBufferingSpinner(Z)V

    .line 322
    iput-boolean v7, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoBuffering:Z

    .line 323
    iput-boolean v6, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoReady:Z

    .line 324
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 328
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->streamUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://player.ooyala.com/player/all/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->embedCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->streamUrl:Ljava/lang/String;

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->streamUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Error loading video: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->embedCode:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoBuffering:Z

    .line 243
    :cond_0
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onPause()V

    .line 244
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x0

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoReady:Z

    .line 346
    iput-boolean v5, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoLoading:Z

    .line 347
    iput-boolean v5, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoBuffering:Z

    .line 348
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->notifyVideoReadyToPlay()V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/milk/milkvideo/utils/Constants;->CLICK_START:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms - onPrepared "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/milk/milkvideo/utils/Constants;->CLICK_START:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms - Is playing? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 353
    invoke-virtual {p0, v5}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->setBufferingSpinner(Z)V

    .line 355
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 356
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "onResume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onResume()V

    .line 234
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->setSurfaceViewDimensions()V

    .line 235
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->setupPlayer()V

    .line 94
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "pause"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->endTime:I

    .line 182
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->endWallTime:J

    .line 184
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->notifyVideoPlayed()V

    .line 186
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoReady:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public pauseOnAudioFocusChange()V
    .locals 0

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->pause()V

    .line 407
    return-void
.end method

.method public play(I)V
    .locals 4
    .param p1, "requestedPlayPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->canSendVideoPlayedEvent:Z

    .line 153
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->seekBarTouched:Z

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->setPlayPositionInMillis(I)V

    .line 155
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->seekBarTouched:Z

    .line 159
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isComplete:Z

    .line 161
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoReady:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->startTime:I

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->startWallTime:J

    .line 166
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendVideoPlayedEvent()V

    .line 168
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->afChangeListener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 170
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoReady:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 173
    :cond_2
    return-void

    .line 156
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isComplete:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    const-string v0, "release"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 315
    iput-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    .line 316
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 317
    return-void
.end method

.method public requestAudioFocus(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 397
    return-void
.end method

.method public resizeForLandscape()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 212
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .local v0, "surfaceParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 214
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 215
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method

.method public resizeForPortrait()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->setSurfaceViewDimensions()V

    .line 220
    return-void
.end method

.method public seekBarWasTouched()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->seekBarTouched:Z

    .line 197
    return-void
.end method

.method protected setBufferingSpinner(Z)V
    .locals 2
    .param p1, "buffering"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoBufferingStatusChangeEvent;

    invoke-direct {v1, p1}, Lcom/samsung/milk/milkvideo/events/VideoBufferingStatusChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public setPlayPositionInMillis(I)V
    .locals 1
    .param p1, "newPosition"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 278
    return-void
.end method

.method public setVideoDurationInMillis(I)V
    .locals 0
    .param p1, "newDuration"    # I

    .prologue
    .line 285
    return-void
.end method

.method protected setupPlayer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 255
    iput-boolean v5, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoReady:Z

    .line 256
    iput-boolean v5, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->isVideoLoading:Z

    .line 257
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    .line 258
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayerLayout:Landroid/widget/FrameLayout;

    .line 259
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 260
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 263
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/milk/milkvideo/utils/Constants;->CLICK_START:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms - Ooyala setup Player request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_0
    return-void
.end method

.method public startTime()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->startTime:I

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 379
    const-string v0, "surfaceChanged"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 371
    const-string v0, "surfaceCreated"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->defaultPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 375
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 384
    const-string v0, "surfaceDestroyed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    return-void
.end method
