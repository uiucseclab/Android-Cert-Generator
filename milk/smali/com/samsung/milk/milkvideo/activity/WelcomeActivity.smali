.class public Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "WelcomeActivity.java"


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->overridePendingTransition(II)V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->setContentView(I)V

    .line 32
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToFacebook()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/FacebookLoggedInWelcomeFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/FacebookLoggedInWelcomeFragment;

    move-result-object v0

    .line 40
    .local v0, "welcomeFragment":Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
    :goto_0
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f060041

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    const v1, 0x7f04000a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->overridePendingTransition(II)V

    .line 49
    return-void

    .line 34
    .end local v0    # "welcomeFragment":Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
    :cond_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToGooglePlus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/GooglePlusLoggedInWelcomeFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/GooglePlusLoggedInWelcomeFragment;

    move-result-object v0

    .restart local v0    # "welcomeFragment":Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
    goto :goto_0

    .line 37
    .end local v0    # "welcomeFragment":Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
    :cond_2
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    move-result-object v0

    .restart local v0    # "welcomeFragment":Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
    goto :goto_0
.end method
