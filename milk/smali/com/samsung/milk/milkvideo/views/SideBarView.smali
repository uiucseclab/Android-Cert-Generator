.class public Lcom/samsung/milk/milkvideo/views/SideBarView;
.super Landroid/widget/FrameLayout;
.source "SideBarView.java"


# static fields
.field private static final X_OFFSET:F = 40.0f


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private isExpanded:Z

.field private screenHeight:I

.field private seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

.field private thumb:Landroid/view/View;

.field private thumbPreviousPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumbPreviousPosition:I

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/SideBarView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumbPreviousPosition:I

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/SideBarView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumbPreviousPosition:I

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/SideBarView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/SideBarView;)Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/SideBarView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    return-object v0
.end method

.method private animateX(FZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "withDelay"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    const-string v3, "x"

    new-array v4, v6, [F

    aput p1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 131
    .local v0, "seekBarAnimator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumb:Landroid/view/View;

    const-string v3, "x"

    new-array v4, v6, [F

    aput p1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 133
    .local v1, "thumbAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 134
    if-eqz p2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 138
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 139
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 43
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 44
    .local v3, "windowManager":Landroid/view/WindowManager;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 45
    .local v2, "size":Landroid/graphics/Point;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 46
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->screenHeight:I

    .line 48
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03002b

    const/4 v5, 0x1

    invoke-virtual {v0, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "rootView":Landroid/view/View;
    new-instance v4, Lcom/samsung/milk/milkvideo/views/SideBarView$1;

    invoke-direct {v4, p0}, Lcom/samsung/milk/milkvideo/views/SideBarView$1;-><init>(Lcom/samsung/milk/milkvideo/views/SideBarView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    const v4, 0x7f060070

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    .line 63
    const v4, 0x7f060071

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumb:Landroid/view/View;

    .line 65
    invoke-virtual {p0, v6, v6}, Lcom/samsung/milk/milkvideo/views/SideBarView;->retract(ZZ)V

    .line 67
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getMax()I

    move-result v5

    div-int/lit8 v5, v5, 0x14

    invoke-virtual {v4, v5}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setProgress(I)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/SideBarView;->updateThumbPosition()V

    .line 69
    return-void
.end method


# virtual methods
.method public expand(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->isExpanded:Z

    .line 83
    if-nez p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setX(F)V

    .line 85
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/milk/milkvideo/views/SideBarView;->animateX(FZ)V

    goto :goto_0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getSeekBar()Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->isExpanded:Z

    return v0
.end method

.method public retract(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "withDelay"    # Z

    .prologue
    const/high16 v1, 0x42200000    # 40.0f

    .line 93
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->isExpanded:Z

    .line 95
    if-nez p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setX(F)V

    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/samsung/milk/milkvideo/views/SideBarView;->animateX(FZ)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setProgress(I)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/SideBarView;->updateThumbPosition()V

    .line 119
    return-void
.end method

.method public updateThumbPosition()V
    .locals 3

    .prologue
    .line 73
    iget v1, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->screenHeight:I

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getProgress()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x64

    .line 74
    .local v0, "thumbCurrentPosition":I
    iget v1, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumbPreviousPosition:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 75
    iput v0, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumbPreviousPosition:I

    .line 76
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/SideBarView;->thumb:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 78
    :cond_0
    return-void
.end method
