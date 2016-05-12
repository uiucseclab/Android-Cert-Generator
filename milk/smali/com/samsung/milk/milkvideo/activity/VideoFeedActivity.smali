.class public Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "VideoFeedActivity.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"


# instance fields
.field categoryFragment:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

.field private categoryName:Ljava/lang/String;

.field private classicRainbowContainer:Landroid/widget/FrameLayout;

.field private edgeContainer:Landroid/widget/FrameLayout;

.field edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field feedVideosRepository:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private orientation:I

.field rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

.field slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field videoFeedFragment:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

.field videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    return-object v0
.end method

.method private setCurrentUserFromPrefs()V
    .locals 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserFromPrefs()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    .line 267
    .local v0, "currentUser":Lcom/samsung/milk/milkvideo/models/User;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setCurrentUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 269
    const-string v1, "Cached User: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method private setSessionFromPrefs()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setCurrentSessionFromPrefs()V

    .line 274
    return-void
.end method

.method private shouldPlayContinuously()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    iget v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "nachos_prefs"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "autoplay_enabled"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p0, p1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->isVideoPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->handleBackPressed()V

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryFragment:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->hasPreviousCategory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryFragment:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->handleBackPressed()V

    goto :goto_0

    .line 211
    :cond_1
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->orientation:I

    .line 150
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 151
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 155
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isShowNextVideoInCocktail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 157
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 162
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 182
    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    :goto_1
    return-void

    .line 158
    .restart local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isRainbowBarInCocktail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 164
    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 165
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 167
    .restart local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isRainbowBarInCocktail()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 170
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/RainbowView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 177
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 180
    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_5
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 173
    .restart local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_6
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isShowNextVideoInCocktail()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->feedVideosRepository:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 67
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->setRequestedOrientation(I)V

    .line 69
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->setSessionFromPrefs()V

    .line 70
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->setCurrentUserFromPrefs()V

    .line 72
    sget-object v1, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .line 73
    sget-object v1, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->newInstance(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoFeedFragment:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    .line 74
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryFragment:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002e

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    .line 77
    new-instance v1, Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    .line 78
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    .line 79
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 81
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->setContentView(I)V

    .line 83
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f060036

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06003f

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryFragment:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002d

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 93
    .local v0, "edgeBackgroundView":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->setSubContentView(Landroid/app/Activity;Landroid/view/View;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isRainbowBarInCocktail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Lcom/samsung/milk/milkvideo/views/RainbowView;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/milk/milkvideo/views/RainbowView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

    .line 98
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    .end local v0    # "edgeBackgroundView":Landroid/widget/FrameLayout;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f060039

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoFeedFragment:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 107
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->setIntent(Landroid/content/Intent;)V

    .line 127
    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryName:Ljava/lang/String;

    .line 130
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->feedVideosRepository:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/ActivityPauseEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/ActivityPauseEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->feedVideosRepository:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoPagerAdapter:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoFeedFragment:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoFeedFragment:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->populateVideoFeed()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryName:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method public onScreenOrientation(Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->isVideoPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->setRequestedOrientation(I)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onShowRainbowFragment(Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->classicRainbowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;->show()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    return-void

    .line 250
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onStart()V

    .line 113
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->classicRainbowContainer:Landroid/widget/FrameLayout;

    .line 115
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isRainbowBarInCocktail()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->classicRainbowContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 117
    new-instance v0, Lcom/samsung/milk/milkvideo/views/RainbowView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/views/RainbowView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

    .line 118
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->classicRainbowContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->rainbowView:Lcom/samsung/milk/milkvideo/views/RainbowView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    :cond_1
    return-void
.end method

.method public onVideoComplete(Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlaybackCompleteEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->shouldPlayContinuously()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onVideoFeedReady(Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryFragment:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->updateCategory(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isRainbowBarInCocktail()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isShowNextVideoInCocktail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    invoke-static {p0}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$1;-><init>(Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/utils/AlertUtils;->createNotificationAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onVideoSelected(Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->edgeVideoViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->getVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 246
    return-void
.end method
