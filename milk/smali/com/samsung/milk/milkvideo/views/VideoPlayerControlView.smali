.class public Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;
.super Landroid/widget/RelativeLayout;
.source "VideoPlayerControlView.java"


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private infoButton:Landroid/widget/ImageButton;

.field private playPauseIcon:Landroid/widget/ImageView;

.field private seekBar:Landroid/widget/SeekBar;

.field private videoPlayTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->infoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030067

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    const v1, 0x7f06014a

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->infoButton:Landroid/widget/ImageButton;

    .line 43
    const v1, 0x7f060148

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->seekBar:Landroid/widget/SeekBar;

    .line 44
    const v1, 0x7f06014b

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->playPauseIcon:Landroid/widget/ImageView;

    .line 45
    const v1, 0x7f060149

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->videoPlayTime:Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setUpListeners()V

    .line 48
    return-void
.end method

.method private setUpListeners()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->infoButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$1;-><init>(Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$2;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$2;-><init>(Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getRequestedPlayPosition()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getVideoLength()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    return v0
.end method

.method public setTimeRemaining(J)V
    .locals 5
    .param p1, "ms"    # J

    .prologue
    .line 87
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->videoPlayTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-eqz v0, :cond_0

    const-string v0, "-"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->msToTimeRemaining(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void

    .line 87
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setVideoLength(I)V
    .locals 1
    .param p1, "videoLength"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 109
    return-void
.end method

.method public showAndEnableInfoButton()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->infoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->infoButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 118
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->infoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public showPauseIcon()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->playPauseIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    return-void
.end method

.method public showReplayIcon()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->playPauseIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    return-void
.end method

.method public syncToVideoPlayer(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;Z)V
    .locals 2
    .param p1, "videoPlayer"    # Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
    .param p2, "playbackCompleted"    # Z

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 95
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setTimeRemaining(J)V

    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->getTimeRemaining()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setTimeRemaining(J)V

    .line 99
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->seekBar:Landroid/widget/SeekBar;

    invoke-interface {p1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
