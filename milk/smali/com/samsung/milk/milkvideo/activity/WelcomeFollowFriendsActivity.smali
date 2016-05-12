.class public abstract Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "WelcomeFollowFriendsActivity.java"


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getFollowFriendsFragment()Landroid/support/v4/app/Fragment;
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;->overridePendingTransition(II)V

    .line 37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;->setContentView(I)V

    .line 21
    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f060042

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;->getFollowFriendsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    return-void
.end method
