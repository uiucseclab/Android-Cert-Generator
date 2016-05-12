.class public Lcom/samsung/milk/milkvideo/views/ActionContainerView;
.super Landroid/widget/FrameLayout;
.source "ActionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/ActionContainerView$ReplayClickListener;,
        Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;,
        Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;
    }
.end annotation


# static fields
.field public static final ACTION_DISMISS_DELAY_LONG:I = 0xfa0

.field public static final ACTION_DISMISS_DELAY_SHORT:I = 0x3e8

.field private static final ANIMATION_FADE_OUT_DURATION:J = 0x1f4L

.field private static final ANIMATION_SCALE_DURATION:I = 0x1f4


# instance fields
.field appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private dismissActionsRunnable:Ljava/lang/Runnable;

.field private displayReplayButton:Z

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

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

.field private replayButton:Landroid/widget/TextView;

.field private repostButton:Landroid/widget/TextView;

.field repostService:Lcom/samsung/milk/milkvideo/services/RepostService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private shareButton:Landroid/widget/TextView;

.field private slideInRightAnimation0:Landroid/view/animation/Animation;

.field private slideInRightAnimation1:Landroid/view/animation/Animation;

.field private slideInRightAnimation2:Landroid/view/animation/Animation;

.field private slideInRightAnimation3:Landroid/view/animation/Animation;

.field private starButton:Landroid/widget/TextView;

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private video:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->displayReplayButton:Z

    .line 75
    new-instance v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->dismissActionsRunnable:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateRepostViewImmediately(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->startSignupActivity(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->isStarLit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private buildFadeAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 445
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 446
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 447
    return-object v0
.end method

.method private buildScaleAnimation(Landroid/view/View;I)Ljava/util/List;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 451
    const-string v2, "scaleX"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 452
    .local v0, "scaleX":Landroid/animation/ObjectAnimator;
    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 453
    .local v1, "scaleY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 454
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 455
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 456
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 457
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/ObjectAnimator;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method private init()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 123
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030054

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->init_buttons()V

    .line 126
    return-void
.end method

.method private init_buttons()V
    .locals 4

    .prologue
    const v3, 0x7f04000a

    .line 129
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation0:Landroid/view/animation/Animation;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation1:Landroid/view/animation/Animation;

    .line 131
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation2:Landroid/view/animation/Animation;

    .line 133
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation2:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation3:Landroid/view/animation/Animation;

    .line 135
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation3:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 137
    const v0, 0x7f060104

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f060106

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f060105

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f060107

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->reset()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->setupListeners()V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->redrawForOrientationChange()V

    .line 145
    return-void
.end method

.method private isStarLit()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private resetButtonScale()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 208
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 209
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 211
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 212
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 214
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 215
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 217
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 218
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 219
    return-void
.end method

.method private setupListeners()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ReplayClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ReplayClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v0, 0x7f060103

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/views/ActionContainerView$4;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$4;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method

.method private startSignupActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 440
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->start(Landroid/content/Context;Z)V

    .line 442
    return-void
.end method

.method private updateRepostViewImmediately(Z)V
    .locals 3
    .param p1, "light"    # Z

    .prologue
    const/4 v2, 0x0

    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 232
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    const v1, 0x7f02000d

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 236
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public displayReplayButton()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->displayReplayButton:Z

    .line 97
    return-void
.end method

.method public getVideo()Lcom/samsung/milk/milkvideo/models/Video;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-direct {p0, p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->buildFadeAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->buildScaleAnimation(Landroid/view/View;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    const/16 v3, 0xfa

    invoke-direct {p0, v2, v3}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->buildScaleAnimation(Landroid/view/View;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    const/16 v3, 0x1f4

    invoke-direct {p0, v2, v3}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->buildScaleAnimation(Landroid/view/View;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    const/16 v3, 0x2ee

    invoke-direct {p0, v2, v3}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->buildScaleAnimation(Landroid/view/View;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 187
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 188
    new-instance v2, Lcom/samsung/milk/milkvideo/views/ActionContainerView$2;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$2;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public isRepostLit()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public redrawForOrientationChange()V
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 299
    .local v0, "buttonSpacing":I
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->redrawForOrientationChange(I)V

    .line 300
    return-void
.end method

.method public redrawForOrientationChange(I)V
    .locals 3
    .param p1, "buttonSpacing"    # I

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 306
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 307
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 311
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 314
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 315
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    return-void
.end method

.method public removeDismissTimerAndHideNow()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->dismissActionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 116
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->setVisibility(I)V

    .line 199
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->setAlpha(F)V

    .line 201
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->dismissActionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 203
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetButtonScale()V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetReplayButton()V

    .line 205
    return-void
.end method

.method public resetDismissTimer()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->dismissActionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->dismissActionsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    return-void
.end method

.method public resetReplayButton()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->displayReplayButton:Z

    .line 101
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->redrawForOrientationChange(I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    return-void
.end method

.method public setVideo(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    .line 289
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateRepostView(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateStarView()V

    .line 291
    return-void
.end method

.method public show(Z)V
    .locals 4
    .param p1, "shouldSelfDismiss"    # Z

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->setVisibility(I)V

    .line 151
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->dismissActionsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateStarView()V

    .line 157
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateRepostView(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->showReplayButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation0:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->replayButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->slideInRightAnimation3:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReplayButton()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->displayReplayButton:Z

    return v0
.end method

.method public updateRepostView(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 1
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->isRepostedByMe()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateRepostViewImmediately(Z)V

    .line 227
    return-void
.end method

.method public updateStarView()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->isStarredByMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateStarViewImmediately(Z)V

    .line 354
    return-void
.end method

.method public updateStarViewImmediately(Z)V
    .locals 3
    .param p1, "shouldLight"    # Z

    .prologue
    const/4 v2, 0x0

    .line 357
    if-eqz p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    const v1, 0x7f020010

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 359
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    const v1, 0x7f020011

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 363
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
