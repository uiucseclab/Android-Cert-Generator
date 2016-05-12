.class public Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "VideoPlayerContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$11;
    }
.end annotation


# static fields
.field protected static final CURRENT_VIDEO_CONTEXT_KEY:Ljava/lang/String; = "currentVideoContext"

.field private static final UPDATE_TRACKER_WITH_CATEGORY_KEY:Ljava/lang/String; = "updateTrackerWithCategory"

.field public static final WITHOUT_ANIMATION:Z = false

.field public static final WITH_ANIMATION:Z = true


# instance fields
.field protected bottomDownAnimation:Landroid/view/animation/Animation;

.field protected bottomUpAnimation:Landroid/view/animation/Animation;

.field currentVideo:Lcom/samsung/milk/milkvideo/models/Video;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected currentVideoContext:Ljava/lang/String;

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected fadeOutAnimation:Landroid/view/animation/Animation;

.field private fragmentRoot:Landroid/view/View;

.field gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field gestureDetectorFactory:Lcom/samsung/milk/milkvideo/utils/GestureDetectorFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field gestureListener:Landroid/view/GestureDetector$OnGestureListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field ooyalaVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

.field ooyalaVideoPlayerFragmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "ooyala"
    .end annotation
.end field

.field phoneStateListener:Landroid/telephony/PhoneStateListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected slideFromRightAnimation:Landroid/view/animation/Animation;

.field telephonyManager:Landroid/telephony/TelephonyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private thumbnail:Landroid/widget/ImageView;

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected updateTrackerWithCategory:Z

.field videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private videoCloseConfirmationDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

.field private videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

.field private videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

.field private videoPlayerCloseButton:Landroid/widget/ImageButton;

.field private videoPlayerContainer:Landroid/view/View;

.field private videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

.field youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

.field youTubeVideoPlayerFragmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "youtube"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 686
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->closeVideoPlayer(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->resumeVideo()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)Lcom/samsung/milk/milkvideo/views/VideoInfoView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    return-object v0
.end method

.method private addFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "next"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 233
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v2, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->releaseCurrentVideoPlayer()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 237
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 238
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0600ce

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 239
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 240
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 241
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 242
    return-void
.end method

.method private closeVideoPlayer(Z)V
    .locals 11
    .param p1, "hasAnimation"    # Z

    .prologue
    .line 736
    const/4 v6, 0x0

    .line 737
    .local v6, "startTime":I
    const/4 v7, 0x0

    .line 739
    .local v7, "endTime":I
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 741
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->startTime()I

    move-result v6

    .line 742
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->endTime()I

    move-result v7

    .line 743
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->releaseCurrentVideoPlayer()V

    .line 746
    :cond_0
    if-eqz p1, :cond_3

    .line 747
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->bottomUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 753
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 755
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->hideVideoInfo()V

    .line 756
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->showAndEnableInfoButton()V

    .line 758
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/Video;->setVideoPlaying(Z)V

    .line 760
    iget-object v10, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "playcompleted"

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/Video;->getDuration()I

    move-result v5

    sub-int v8, v7, v6

    iget-object v9, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v9}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 770
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoPlayerCloseEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoPlayerCloseEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 773
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    .line 774
    return-void

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getOrientation()I
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;
    .locals 3
    .param p0, "currentVideoContext"    # Ljava/lang/String;

    .prologue
    .line 782
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 783
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "currentVideoContext"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;-><init>()V

    .line 786
    .local v1, "fragment":Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;
    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 787
    return-object v1
.end method

.method private redrawVideoInfo()V
    .locals 7

    .prologue
    const v6, 0x7f0600ce

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 715
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->redrawForOrientationChanged()V

    .line 717
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I

    move-result v1

    .line 718
    .local v1, "orientation":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 719
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 720
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 721
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 722
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v2, v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 725
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 726
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 727
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v2, v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private releaseCurrentVideoPlayer()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->release()V

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    .line 779
    return-void
.end method

.method private resumeVideo()V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 326
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->getRequestedPlayPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->play(I)V

    .line 328
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->getPlayerType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "youtube web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hidePlayerControls()V

    .line 332
    :cond_0
    return-void
.end method

.method private setUpAnimations()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->bottomDownAnimation:Landroid/view/animation/Animation;

    .line 201
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->bottomDownAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->bottomUpAnimation:Landroid/view/animation/Animation;

    .line 209
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->bottomUpAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->slideFromRightAnimation:Landroid/view/animation/Animation;

    .line 229
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 230
    return-void
.end method

.method private setupVideoPlayerAndPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->isOoyala()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showOoyalaPlayer()V

    .line 293
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->ooyalaVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    .line 308
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->shouldAnimatePlayerShowAndHide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->hide()V

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->setupListeners()V

    .line 312
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-interface {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->loadVideo(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 313
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->shouldAnimatePlayerShowAndHide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->bottomDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->resumeVideo()V

    .line 318
    return-void

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :cond_4
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showYoutubePlayer()V

    .line 297
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    .line 298
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->isYoutubeDegraded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    check-cast v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;->setHideAnnotations(Z)V

    goto :goto_0
.end method

.method private shouldAnimatePlayerShowAndHide()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 321
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCloseVideoDialog()V
    .locals 3

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 693
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoCloseConfirmationDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$9;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$9;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$10;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$10;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->createCloseVideoDialog(Landroid/content/Context;Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseListener;Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;)Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoCloseConfirmationDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoCloseConfirmationDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoCloseConfirmationDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->show()V

    .line 712
    :cond_1
    return-void
.end method

.method private showOoyalaPlayer()V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 252
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->ooyalaVideoPlayerFragmentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->ooyalaVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    .line 253
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->ooyalaVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 254
    return-void
.end method

.method private showYoutubePlayer()V
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 246
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragmentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    .line 247
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 248
    return-void
.end method


# virtual methods
.method public getCurrentVideo()Lcom/samsung/milk/milkvideo/models/Video;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    return-object v0
.end method

.method public getCurrentVideoContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideoContext:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVisibleVideoPlayerFragment()Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    return-object v0
.end method

.method public handleBackPressed()V
    .locals 2

    .prologue
    .line 455
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v1, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I

    move-result v0

    .line 457
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showCloseVideoDialog()V

    .line 463
    .end local v0    # "orientation":I
    :cond_0
    :goto_0
    return-void

    .line 460
    .restart local v0    # "orientation":I
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->closeVideoPlayer(Z)V

    goto :goto_0
.end method

.method hideActionContainer()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->hide()V

    .line 284
    return-void
.end method

.method hidePlayerControls()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setVisibility(I)V

    .line 272
    return-void
.end method

.method public hideThumbnail()V
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->thumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    return-void
.end method

.method public isVideoPlayerVisible()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCategorySelectionStartedEvent(Lcom/samsung/milk/milkvideo/events/CategorySelectionStartedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/CategorySelectionStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->closeVideoPlayer(Z)V

    .line 475
    return-void
.end method

.method public onCloseVideoPlayer(Lcom/samsung/milk/milkvideo/events/CloseVideoPlayerEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/CloseVideoPlayerEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 678
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->closeVideoPlayer(Z)V

    .line 679
    return-void
.end method

.method public onConnectivityChange(Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 655
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->handler:Landroid/os/Handler;

    .line 102
    const-string v0, "oncreate"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "currentVideoContext"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideoContext:Ljava/lang/String;

    .line 106
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 117
    if-eqz p3, :cond_0

    .line 118
    const-string v0, "updateTrackerWithCategory"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->updateTrackerWithCategory:Z

    .line 119
    const-string v0, "currentVideoContext"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideoContext:Ljava/lang/String;

    .line 121
    :cond_0
    const v0, 0x7f030043

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 159
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onDestroyView()V

    .line 160
    return-void
.end method

.method public onDismissActions(Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hideActionContainer()V

    .line 558
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoIsPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->isVideoBuffering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showPlayerControls()V

    .line 562
    :cond_0
    return-void
.end method

.method public onMessageNotification(Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 646
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->getVideoPositionInMillis()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->closeVideoPlayer(Z)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->updateTrackerWithCategory:Z

    .line 169
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hideActionContainer()V

    .line 171
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onPause()V

    .line 172
    return-void
.end method

.method public onPlayerStateChange(Lcom/samsung/milk/milkvideo/events/PlayerStateChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/PlayerStateChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 683
    sget-object v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$11;->$SwitchMap$com$samsung$milk$milkvideo$fragments$YouTubeWebPlayerFragment$YouTubePlayerState:[I

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/PlayerStateChangeEvent;->getState()Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 688
    :goto_0
    return-void

    .line 685
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hidePlayerControls()V

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onResume()V

    .line 177
    iget-boolean v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->updateTrackerWithCategory:Z

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideoContext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->onCategoryChanged(Ljava/lang/String;)V

    .line 180
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->updateTrackerWithCategory:Z

    .line 181
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I

    move-result v0

    .line 182
    .local v0, "orientation":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 183
    invoke-virtual {p0, v6}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->onScreenRotatedToLandscape(Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;)V

    .line 189
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "rotationValue":I
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v5, Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;

    sget v6, Lcom/samsung/milk/milkvideo/utils/Constants;->ORIENTATION_LOCKED:I

    if-ne v1, v6, :cond_3

    :goto_1
    invoke-direct {v5, v2}, Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "rotationValue":I
    :goto_2
    return-void

    .line 184
    :cond_2
    if-ne v0, v2, :cond_1

    .line 185
    invoke-virtual {p0, v6}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->onScreenRotatedToPortrait(Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;)V

    goto :goto_0

    .restart local v1    # "rotationValue":I
    :cond_3
    move v2, v3

    .line 190
    goto :goto_1

    .line 191
    .end local v1    # "rotationValue":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const-string v0, "currentVideoContext"

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideoContext:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "updateTrackerWithCategory"

    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->updateTrackerWithCategory:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public onScreenRotatedToLandscape(Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 566
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 567
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 568
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 569
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->resizeForLandscape()V

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerCloseButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->hideVideoInfo()V

    .line 575
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->showAndEnableInfoButton()V

    .line 576
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->redrawForOrientationChange()V

    .line 578
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->redrawVideoInfo()V

    .line 579
    return-void
.end method

.method public onScreenRotatedToPortrait(Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 583
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/RefreshVideoListItemEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/RefreshVideoListItemEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 584
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 585
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 586
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 587
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->resizeForPortrait()V

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerCloseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 593
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->showReplayButton()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->redrawForOrientationChange(I)V

    .line 599
    :goto_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->redrawVideoInfo()V

    .line 600
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoCloseConfirmationDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoCloseConfirmationDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoCloseConfirmationDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->dismiss()V

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->slideFromRightAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 605
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hideThumbnail()V

    .line 606
    return-void

    .line 596
    :cond_2
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->redrawForOrientationChange()V

    goto :goto_0
.end method

.method public onSeekBarTouched(Lcom/samsung/milk/milkvideo/events/SeekBarTouchedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/SeekBarTouchedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->seekBarWasTouched()V

    .line 470
    :cond_0
    return-void
.end method

.method public onVideoBufferingStatusChange(Lcom/samsung/milk/milkvideo/events/VideoBufferingStatusChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoBufferingStatusChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const v1, 0x7f0600d0

    .line 664
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoBufferingStatusChangeEvent;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hidePlayerControls()V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 669
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hideThumbnail()V

    .line 670
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->show()V

    goto :goto_0
.end method

.method public onVideoComplete(Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 630
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 631
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->displayReplayButton()V

    .line 632
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->redrawForOrientationChange(I)V

    .line 633
    invoke-virtual {p0, v3}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showActionContainer(Z)V

    .line 637
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->showReplayIcon()V

    .line 638
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->syncToVideoPlayer(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;Z)V

    .line 639
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/NachosSettings;->isAutoplayEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showPlayerControls()V

    goto :goto_0
.end method

.method public onVideoContextChanged(Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;->getVideoContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideoContext:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public onVideoInfoClicked(Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->showAndEnableInfoButton()V

    .line 485
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->redrawVideoInfo()V

    .line 483
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->showVideoInfo()V

    goto :goto_0
.end method

.method public onVideoPauseActions(Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 615
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getCurrentVideoContext()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/milk/milkvideo/api/PlayEvent;->fromVideoStatusEvent(Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/milk/milkvideo/api/PlayEvent;

    move-result-object v0

    .line 617
    .local v0, "playEvent":Lcom/samsung/milk/milkvideo/api/PlayEvent;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->postPlayEvent(Lcom/samsung/milk/milkvideo/api/PlayEvent;Lretrofit/ResponseCallback;)V

    .line 618
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "played"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getPosterUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/api/PlayEvent;->setBrandUUID(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendVideoPlayedEvent(Lcom/samsung/milk/milkvideo/api/PlayEvent;)V

    .line 621
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;->sendUserEngagedEvent()V

    .line 624
    .end local v0    # "playEvent":Lcom/samsung/milk/milkvideo/api/PlayEvent;
    :cond_0
    return-void
.end method

.method public onVideoPlayRequest(Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->hideVideoInfo()V

    .line 509
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->hideActionContainer()V

    .line 511
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->getRequestedVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v11

    .line 512
    .local v11, "video":Lcom/samsung/milk/milkvideo/models/Video;
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0, v11}, Lcom/samsung/milk/milkvideo/models/Video;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v12, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "playcompleted"

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/Video;->getDuration()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v6}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->startTime()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v7}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->endTime()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v8}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->endTime()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v9}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->startTime()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v9}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/Video;->setVideoPlaying(Z)V

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoIsPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoIsLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->shouldAnimatePlayerShowAndHide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->closeVideoPlayer(Z)V

    .line 528
    :cond_2
    iput-object v11, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    .line 529
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/Video;->setVideoPlaying(Z)V

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->setVideo(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 533
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->currentVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setVideoInfo(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 534
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerCloseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 535
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->setupVideoPlayerAndPlay()V

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 539
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 547
    :goto_0
    return-void

    .line 541
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v10

    .line 544
    .local v10, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 545
    const-string v0, "system has no ability to set accelerometer rotation"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVideoReadyToPlay(Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;->getVideoLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setVideoLength(I)V

    .line 660
    return-void
.end method

.method public onVideoReplayRequest(Lcom/samsung/milk/milkvideo/events/VideoReplayRequestedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoReplayRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->resumeVideo()V

    .line 552
    return-void
.end method

.method public onVideoTransitionEvent(Lcom/samsung/milk/milkvideo/events/VideoTransitionEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoTransitionEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 490
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 491
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 492
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoTransitionEvent;->getVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v1

    .line 493
    .local v1, "video":Lcom/samsung/milk/milkvideo/models/Video;
    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->setThumbnail(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showThumbnail()V

    .line 495
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->slideFromRightAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 496
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 497
    .local v0, "duration":I
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$8;

    invoke-direct {v3, p0, v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$8;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;Lcom/samsung/milk/milkvideo/models/Video;)V

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 504
    .end local v0    # "duration":I
    .end local v1    # "video":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    .line 131
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    .line 132
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerCloseButton:Landroid/widget/ImageButton;

    .line 133
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerContainer:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->thumbnail:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 151
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 153
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->setUpAnimations()V

    .line 154
    return-void
.end method

.method protected pauseVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 336
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->pause()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->syncToVideoPlayer(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;Z)V

    .line 341
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->showPauseIcon()V

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showPlayerControls()V

    .line 344
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 2
    .param p1, "previewImageUrl"    # Ljava/lang/String;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 363
    :cond_0
    return-void
.end method

.method protected setupListeners()V
    .locals 4

    .prologue
    .line 377
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$5;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 423
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->gestureDetectorFactory:Lcom/samsung/milk/milkvideo/utils/GestureDetectorFactory;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, v2, v3}, Lcom/samsung/milk/milkvideo/utils/GestureDetectorFactory;->create(Landroid/app/Activity;Landroid/view/GestureDetector$OnGestureListener;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 425
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->getVideoLayoutView()Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "videoLayoutView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 427
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$6;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerCloseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$7;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$7;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    return-void
.end method

.method showActionContainer()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showActionContainer(Z)V

    .line 276
    return-void
.end method

.method showActionContainer(Z)V
    .locals 1
    .param p1, "shouldSelfDismiss"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->show(Z)V

    .line 280
    return-void
.end method

.method showPlayerControls()V
    .locals 4

    .prologue
    .line 257
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v2}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->getPlayerType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v2}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->isVideoReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v2}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->getPlayerType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v2}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->isPlayerFinished()Z

    move-result v1

    .line 262
    .local v1, "isPlayerFinishing":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 265
    .local v0, "color":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {v2, v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setBackgroundColor(I)V

    .line 267
    .end local v0    # "color":I
    .end local v1    # "isPlayerFinishing":Z
    :cond_2
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayerControls:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setVisibility(I)V

    goto :goto_0

    .line 262
    .restart local v1    # "isPlayerFinishing":Z
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public showThumbnail()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->thumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    return-void
.end method

.method public videoIsLoading()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->isVideoLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoIsPlaying()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoPlayer:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
