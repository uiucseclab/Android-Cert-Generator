.class public Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "CategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;
    }
.end annotation


# instance fields
.field protected canUpdateContent:Z

.field private categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

.field private contentUpdateCountdownTimer:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;

.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public currentCategoryIndex:I

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public prevCategoryIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;)Lcom/samsung/milk/milkvideo/views/CategoryListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    return-object v0
.end method

.method private changeCategory(I)V
    .locals 4
    .param p1, "categoryIndex"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getCategoryByIndex(I)Lcom/samsung/milk/milkvideo/models/Category;

    move-result-object v0

    .line 166
    .local v0, "categoryByIndex":Lcom/samsung/milk/milkvideo/models/Category;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/CategoryChangedEvent;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/milk/milkvideo/events/CategoryChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 168
    iget v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentCategoryIndex:I

    iput v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->prevCategoryIndex:I

    .line 169
    iput p1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentCategoryIndex:I

    .line 170
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    iget v2, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentCategoryIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setCurrentCategoryIndex(I)V

    .line 171
    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public handleBackPressed()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->hasPreviousCategory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->prevCategoryIndex:I

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->changeCategory(I)V

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->prevCategoryIndex:I

    .line 148
    :cond_0
    return-void
.end method

.method public hasPreviousCategory()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->prevCategoryIndex:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->prevCategoryIndex:I

    iget v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentCategoryIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectivityChanged(Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getCategorySize()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->populateCategories()V

    .line 132
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const v0, 0x7f030032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onPause()V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->toggleVisibility(Z)V

    .line 50
    return-void
.end method

.method public onProgressChanged(Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;->getMax()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->update(IIZ)V

    .line 110
    return-void
.end method

.method public onShowRequest(Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;->show()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void

    .line 136
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/samsung/milk/milkvideo/events/SeekBarStartTrackingEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/SeekBarStartTrackingEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 98
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/CategorySelectionStartedEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/CategorySelectionStartedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->canUpdateContent:Z

    .line 100
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->contentUpdateCountdownTimer:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;->start()Landroid/os/CountDownTimer;

    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->toggleVisibility(Z)V

    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/SeekBarStartTrackingEvent;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/SeekBarStartTrackingEvent;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->update(IIZ)V

    .line 105
    return-void
.end method

.method public onStopTrackingTouch(Lcom/samsung/milk/milkvideo/events/SeekBarStopTrackingEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/SeekBarStopTrackingEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getCurrentCategoryIndex()I

    move-result v0

    .line 115
    .local v0, "categoryIndex":I
    if-eqz v0, :cond_1

    .line 116
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->canUpdateContent:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentCategoryIndex:I

    if-eq v1, v0, :cond_0

    .line 117
    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->changeCategory(I)V

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->contentUpdateCountdownTimer:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;->cancel()V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->toggleVisibility(Z)V

    .line 125
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->start(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/CategoryListView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->populateCategories()V

    .line 65
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;-><init>(Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->contentUpdateCountdownTimer:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$ContentUpdateCountdownTimer;

    .line 67
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->setupLayoutPortrait()V

    .line 68
    return-void
.end method

.method public populateCategories()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;)V

    invoke-interface {v0, v1}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getCategories(Lretrofit/Callback;)V

    .line 85
    return-void
.end method

.method protected setCategoryListView(Lcom/samsung/milk/milkvideo/views/CategoryListView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/milk/milkvideo/views/CategoryListView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    .line 54
    return-void
.end method

.method protected setupLayoutPortrait()V
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 89
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 90
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 91
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 93
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setScreenHeight(I)V

    .line 94
    return-void
.end method

.method public updateCategory(Ljava/lang/String;)V
    .locals 4
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getIndexByCategory(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getCategorySize()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 154
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setCurrentCategoryIndex(I)V

    .line 156
    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentCategoryIndex:I

    goto :goto_0
.end method
