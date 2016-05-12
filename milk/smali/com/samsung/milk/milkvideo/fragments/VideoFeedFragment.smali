.class public Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "VideoFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;,
        Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;,
        Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;
    }
.end annotation


# static fields
.field static final CHILD_LIST_VIEW:I = 0x1

.field private static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field private static final THUMBNAILS_ON_SCREEN:I = 0x4


# instance fields
.field bandwidthDetector:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field feedScrollListener:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;

.field lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

.field private loadingSpinner:Landroid/view/View;

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

.field private nux:Landroid/view/View;

.field private paused:Z

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private pullToRefreshSwipeListView:Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;

.field slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private spinnerSwitcher:Landroid/widget/ViewSwitcher;

.field private splashScreen:Landroid/view/View;

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

.field private videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->paused:Z

    .line 476
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->updateVideosForScroll()V

    return-void
.end method

.method private getSwipeListViewTouchListener()Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    .locals 6

    .prologue
    .line 249
    const/4 v2, 0x0

    .line 251
    .local v2, "touchListener":Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    :try_start_0
    const-class v4, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    const-string v5, "touchListener"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 252
    .local v3, "touchListenerField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 253
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .end local v3    # "touchListenerField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 516
    :cond_0
    sget-object v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->NULL_VIDEO_LIST_ADAPTER:Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    .line 518
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    goto :goto_0
.end method

.method private isSplashScreenVisible()Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

.method public static newInstance(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "category"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 446
    :cond_0
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;-><init>()V

    .line 447
    .local v1, "fragment":Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 448
    return-object v1
.end method

.method private refreshVideoFeedForCurrentCategory()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getCurrentCategory()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 132
    .local v0, "forceRefresh":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->populateVideoFeed(Ljava/lang/Boolean;Z)V

    .line 133
    return-void

    .line 131
    .end local v0    # "forceRefresh":Ljava/lang/Boolean;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUpCondensableHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v3, 0x7f06010e

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "rightButton":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 138
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isRainbowBarInCocktail()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 143
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v3, 0x7f0200a4

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setLeftButtonSrc(I)V

    .line 146
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v3, 0x7f02009d

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setRightButtonSrc(I)V

    .line 147
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setSmallHeaderOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0
.end method

.method private setUpVideoFeedListListeners(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getSwipeListViewTouchListener()Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-result-object v0

    .line 160
    .local v0, "finalTouchListener":Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    .line 178
    .local v1, "onScrollListener":Landroid/widget/AbsListView$OnScrollListener;
    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;

    invoke-direct {v2, p0, v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->feedScrollListener:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;

    .line 179
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->feedScrollListener:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$VideoFeedScrollListener;

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 181
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setSwipeListViewListener(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;)V

    .line 246
    return-void
.end method

.method private showNuxOnBoardingMessage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 418
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "is_nux_shown"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 419
    .local v0, "isNuxCompleted":Z
    if-nez v0, :cond_0

    .line 420
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->nux:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;

    invoke-direct {v3, v4}, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 422
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendNuxStartedEvent()V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showVideoList()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->splashScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->spinnerSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 413
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->showNuxOnBoardingMessage()V

    .line 414
    return-void
.end method

.method private showVoltSplashScreen()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 429
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->splashScreen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->splashScreen:Landroid/view/View;

    const v1, 0x7f0600c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loadingSpinner:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    return-void
.end method

.method private updateVideosForScroll()V
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v2, v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 271
    .local v1, "videoView":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    if-eqz v2, :cond_0

    .line 272
    check-cast v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .end local v1    # "videoView":Landroid/view/View;
    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->handleScroll()V

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCategoryChanged(Lcom/samsung/milk/milkvideo/events/CategoryChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/CategoryChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 355
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/CategoryChangedEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->populateVideoFeed(Ljava/lang/Boolean;Z)V

    .line 357
    return-void
.end method

.method public onCategorySelectionStarted(Lcom/samsung/milk/milkvideo/events/CategorySelectionStartedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/CategorySelectionStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 362
    return-void
.end method

.method public onConnectivityChange(Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const v1, 0x7f0600c9

    .line 372
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->splashScreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->populateVideoFeed()V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->splashScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->splashScreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v0, 0x7f030042

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onDestroyView()V

    .line 265
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public onNuxCompleted(Lcom/samsung/milk/milkvideo/events/NuxCompletedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/NuxCompletedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 391
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 392
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_nux_shown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 393
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    const v2, 0x7f0800c7

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/milk/milkvideo/widgets/NachosToast;->show(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 397
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendNuxCompletedEvent()V

    .line 398
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onPause()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->paused:Z

    .line 124
    return-void
.end method

.method public onPlayNextVideo(Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/utils/ListUtil;->getNextItemWithWrap(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/Video;

    .line 403
    .local v0, "nextVideo":Lcom/samsung/milk/milkvideo/models/Video;
    if-eqz v0, :cond_0

    .line 404
    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    .line 405
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/VideoTransitionEvent;

    invoke-direct {v2, v0}, Lcom/samsung/milk/milkvideo/events/VideoTransitionEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 407
    :cond_0
    return-void
.end method

.method public onPullToRefresh(Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;->shouldShowHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->reset()V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->hideLargeHeader()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onResume()V

    .line 115
    iget-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->paused:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getCurrentCategory()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->isSplashScreenVisible()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->populateVideoFeed(Ljava/lang/Boolean;Z)V

    .line 118
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->paused:Z

    .line 119
    return-void

    :cond_1
    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public onVideoClick(Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->getRequestedVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    .line 367
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getPositionInList()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->smoothScrollToPositionFromTop(III)V

    .line 368
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loadingSpinner:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->splashScreen:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->spinnerSwitcher:Landroid/widget/ViewSwitcher;

    .line 91
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->nux:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->pullToRefreshSwipeListView:Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;

    .line 94
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->pullToRefreshSwipeListView:Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->pullToRefreshSwipeListView:Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    .line 102
    new-instance v0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-direct {v0, v1, p0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;-><init>(Landroid/widget/ListView;Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    .line 103
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->setUpVideoFeedListListeners(Landroid/view/View;)V

    .line 107
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->setUpCondensableHeader()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->refreshVideoFeedForCurrentCategory()V

    .line 109
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->showVoltSplashScreen()V

    .line 110
    return-void
.end method

.method public populateVideoFeed()V
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->populateVideoFeed(Ljava/lang/Boolean;Z)V

    .line 279
    return-void
.end method

.method public populateVideoFeed(Ljava/lang/Boolean;Z)V
    .locals 4
    .param p1, "forceRefresh"    # Ljava/lang/Boolean;
    .param p2, "showSpinner"    # Z

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loadingSpinner:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 283
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loadingSpinner:Landroid/view/View;

    if-eqz p2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getCurrentCategory()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "category":Ljava/lang/String;
    const-string v1, "Loading category: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;

    invoke-direct {v2, v0, p1}, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->bandwidthDetector:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->updateNetworkBandwidth()V

    .line 293
    return-void

    .line 283
    .end local v0    # "category":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public receiveMoreFeedVideos(Lcom/samsung/milk/milkvideo/events/MoreFeedVideosResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/MoreFeedVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/16 v6, 0x8d

    .line 338
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    move-result-object v0

    .line 340
    .local v0, "adapter":Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    sget-object v3, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->NULL_VIDEO_LIST_ADAPTER:Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    if-ne v0, v3, :cond_0

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/MoreFeedVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/models/Video;

    .line 345
    .local v2, "v":Lcom/samsung/milk/milkvideo/models/Video;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const/16 v4, 0x280

    const/16 v5, 0x164

    invoke-virtual {v3, v4, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    sget-object v4, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 346
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    sget-object v4, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    goto :goto_1

    .line 349
    .end local v2    # "v":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/MoreFeedVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->addAll(Ljava/util/List;)V

    .line 350
    const-string v3, "Got more videos"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public receiveRefreshFeedVideos(Lcom/samsung/milk/milkvideo/events/RefreshFeedVideosResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/RefreshFeedVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/16 v7, 0x8d

    .line 301
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getCurrentCategory()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 325
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/milk/milkvideo/models/Video;

    .line 308
    .local v3, "v":Lcom/samsung/milk/milkvideo/models/Video;
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/models/Video;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    const/16 v5, 0x280

    const/16 v6, 0x164

    invoke-virtual {v4, v5, v6}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    sget-object v5, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    .line 309
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    sget-object v5, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    goto :goto_1

    .line 312
    .end local v3    # "v":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_1
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v4, v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->onCategoryChanged(Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v4, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setTitle(Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->reset()V

    .line 316
    new-instance v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;-><init>()V

    .line 317
    .local v0, "adapter":Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->setList(Ljava/util/List;)V

    .line 318
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v4, v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->showVideoList()V

    .line 321
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loadingSpinner:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v5, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1}, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 324
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->pullToRefreshSwipeListView:Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->onRefreshComplete()V

    goto/16 :goto_0
.end method

.method public videoFetchFail(Lcom/samsung/milk/milkvideo/events/FeedFailureResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/FeedFailureResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getCurrentCategory()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "category":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loadingSpinner:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 333
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->pullToRefreshSwipeListView:Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;->onRefreshComplete()V

    .line 334
    return-void
.end method
