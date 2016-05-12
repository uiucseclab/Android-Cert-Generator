.class public Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;
.super Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;
.source "DefaultGoogleStyleProgressLayout.java"


# instance fields
.field private mActionBarHeaderPullingProgressLayout:Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;

.field private mActionBarHeaderRefreshingProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 39
    sget v0, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_progress_google_style:I

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->initInflate(Landroid/content/Context;I)V

    .line 40
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->initProperties()V

    .line 41
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->reset()V

    .line 42
    return-void
.end method

.method private initInflate(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflateId"    # I

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    return-void
.end method

.method private initProperties()V
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/handmark/pulltorefresh/library/R$id;->pulling_progress:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->mActionBarHeaderPullingProgressLayout:Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;

    .line 56
    sget v0, Lcom/handmark/pulltorefresh/library/R$id;->refreshing_progress:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->mActionBarHeaderRefreshingProgressBar:Landroid/widget/ProgressBar;

    .line 57
    return-void
.end method


# virtual methods
.method public onPull(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 88
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 89
    .local v0, "percent":I
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->mActionBarHeaderPullingProgressLayout:Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;

    invoke-virtual {v1, v0}, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->setPercent(I)V

    .line 90
    return-void
.end method

.method public pullToRefresh()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public refreshing()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->mActionBarHeaderPullingProgressLayout:Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->mActionBarHeaderRefreshingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public releaseToRefresh()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->mActionBarHeaderPullingProgressLayout:Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->mActionBarHeaderRefreshingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/DefaultGoogleStyleProgressLayout;->mActionBarHeaderPullingProgressLayout:Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/internal/PullingProgressLayout;->setPercent(I)V

    .line 66
    return-void
.end method
