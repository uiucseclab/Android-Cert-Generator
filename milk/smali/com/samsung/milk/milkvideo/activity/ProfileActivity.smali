.class public Lcom/samsung/milk/milkvideo/activity/ProfileActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "ProfileActivity.java"


# static fields
.field public static final INTENT_USER_KEY:Ljava/lang/String; = "userid"


# instance fields
.field brandVideosRepository:Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private edgeContainer:Landroid/widget/FrameLayout;

.field edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private orientation:I

.field repostVideosRepository:Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field starredVideosRepository:Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userUuid"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "userid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    return-object v0
.end method

.method private shouldPlayContinuously()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/NachosSettings;->isAutoplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userUuid"    # Ljava/lang/String;

    .prologue
    .line 50
    instance-of v3, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 51
    check-cast v0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;

    .line 52
    .local v0, "currActivity":Lcom/samsung/milk/milkvideo/activity/ProfileActivity;
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f060035

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getCurrentProfileUuid()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "currUuid":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    .end local v0    # "currActivity":Lcom/samsung/milk/milkvideo/activity/ProfileActivity;
    .end local v1    # "currUuid":Ljava/lang/String;
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 59
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->isVideoPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->handleBackPressed()V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    .line 116
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->orientation:I

    .line 125
    iget v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isShowNextVideoInCocktail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 131
    :cond_2
    iget v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->setRequestedOrientation(I)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002e

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeContainer:Landroid/widget/FrameLayout;

    .line 68
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030030

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    .line 69
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    .line 70
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 72
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->setContentView(I)V

    .line 74
    const-string v1, "UserReposts"

    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .line 75
    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f060035

    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f060036

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002d

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 85
    .local v0, "edgeBackgroundView":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->setSubContentView(Landroid/app/Activity;Landroid/view/View;)V

    .line 89
    .end local v0    # "edgeBackgroundView":Landroid/widget/FrameLayout;
    :cond_1
    const v1, 0x7f04000a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->overridePendingTransition(II)V

    .line 90
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->brandVideosRepository:Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->repostVideosRepository:Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->starredVideosRepository:Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->brandVideosRepository:Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->repostVideosRepository:Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->starredVideosRepository:Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 98
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onResume()V

    .line 99
    return-void
.end method

.method public onScreenOrientation(Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->isVideoPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->setRequestedOrientation(I)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onVideoComplete(Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;)V
    .locals 2
    .param p1, "videoPlaybackCompleteEvent"    # Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->shouldPlayContinuously()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onVideoSelected(Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->getVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 164
    return-void
.end method
