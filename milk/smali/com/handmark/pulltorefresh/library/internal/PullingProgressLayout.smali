.class public Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;
.super Landroid/widget/LinearLayout;
.source "PullingProgressLayout.java"


# instance fields
.field private mPullingLeftBar:Landroid/widget/ProgressBar;

.field private mPullingRightBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->initializeLayout(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->initializeLayout(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private initializeLayout(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x28

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/handmark/pulltorefresh/library/R$layout;->pulling_progress_layout:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pulling_left_progressbar:I

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingLeftBar:Landroid/widget/ProgressBar;

    .line 56
    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pulling_right_progressbar:I

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingRightBar:Landroid/widget/ProgressBar;

    .line 58
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingLeftBar:Landroid/widget/ProgressBar;

    sget v2, Lcom/handmark/pulltorefresh/library/R$drawable;->progress_horizontal_holo_light:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingRightBar:Landroid/widget/ProgressBar;

    sget v2, Lcom/handmark/pulltorefresh/library/R$drawable;->progress_horizontal_holo_light:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingLeftBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 62
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingRightBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 64
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingLeftBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingRightBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public setPercent(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 72
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 73
    const/16 p1, 0x64

    .line 76
    :cond_0
    if-gez p1, :cond_1

    .line 77
    const/4 p1, 0x0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingLeftBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 81
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->mPullingRightBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    return-void
.end method
