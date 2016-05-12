.class public Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;
.super Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;
.source "CondensableMyProfileHeader.java"


# instance fields
.field private backgroundPhotoHeight:F

.field private listViewToTrack:Landroid/widget/ListView;

.field private mostRecentFlingVelocity:F

.field private mostRecentScrollDistance:F

.field private tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

.field private totalScroll:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method private headerButtonsAboveTabButtons()Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->totalScroll:F

    iget v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->backgroundPhotoHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideTabbedHeaderIfTabButtonsOnscreen()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->getScrollPosition()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->totalScroll:F

    .line 102
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;->isOffScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->headerButtonsAboveTabButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->isOffScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;->hide()V

    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->hide()V

    .line 105
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->show()V

    .line 107
    :cond_0
    return-void
.end method

.method private isFlingingContentUp()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->mostRecentFlingVelocity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScrollingContentUp()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->mostRecentScrollDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected animateHeaderSwitch()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->isScrollingContentUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->headerButtonsAboveTabButtons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    goto :goto_0
.end method

.method protected findSubViews()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findSubViews()V

    .line 50
    new-instance v0, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    const v1, 0x7f06010f

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    .line 51
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->allHolders:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public flingInProgressTabCheck()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->hideTabbedHeaderIfTabButtonsOnscreen()V

    .line 98
    return-void
.end method

.method public getScrollPosition()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->listViewToTrack:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "firstVisibleChild":Landroid/view/View;
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return v2

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->listViewToTrack:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "videoThumbnail":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->listViewToTrack:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->listViewToTrack:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->backgroundPhotoHeight:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;->hide()V

    .line 137
    return-void
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const v0, 0x7f030057

    invoke-static {p1, v0, p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    return-void
.end method

.method protected initializeSubViews()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->initializeSubViews()V

    .line 42
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;->hideOnInitialLayout()V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->backgroundPhotoHeight:F

    .line 45
    return-void
.end method

.method protected onFlingY(F)Z
    .locals 2
    .param p1, "velocityY"    # F

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->getScrollPosition()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->totalScroll:F

    .line 76
    iput p1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->mostRecentFlingVelocity:F

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->shouldSwitchHeaders(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->isFlingingContentUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    .line 89
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->isFlingingContentUp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->headerButtonsAboveTabButtons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->scrollTo(F)V

    goto :goto_0
.end method

.method protected onScrollY(F)Z
    .locals 1
    .param p1, "distanceY"    # F

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->getScrollPosition()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->totalScroll:F

    .line 57
    iput p1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->mostRecentScrollDistance:F

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;->isOffScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->headerButtonsAboveTabButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->animateHeaderSwitch()V

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->onScrollY(F)Z

    move-result v0

    goto :goto_0
.end method

.method public scrollStateIdleTabCheck()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->hideTabbedHeaderIfTabButtonsOnscreen()V

    .line 94
    return-void
.end method

.method public setListViewToTrack(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listViewToTrack"    # Landroid/widget/ListView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->listViewToTrack:Landroid/widget/ListView;

    .line 31
    return-void
.end method

.method public setTabbedHeaderOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setTitle(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->tabbedHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/TabbedHeaderHolder;->setTitleText(Ljava/lang/String;)V

    .line 71
    return-void
.end method
