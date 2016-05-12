.class public Lcom/samsung/milk/milkvideo/activity/SearchActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "SearchActivity.java"


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->isVideoPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->handleBackPressed()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/OrientationToLandscapeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/OrientationToPortraitEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->setRequestedOrientation(I)V

    .line 32
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->setContentView(I)V

    .line 34
    sget-object v0, Lcom/samsung/milk/milkvideo/models/Category;->SEARCH:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    .line 35
    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f060037

    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f060036

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->applyBlurredBackground(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method public onScreenOrientation(Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->videoPlayerContainerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->isVideoPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->setRequestedOrientation(I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/SearchActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
