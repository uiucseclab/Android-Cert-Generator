.class public Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "SignupUserActivity.java"


# static fields
.field public static final FROM_ACTION_CONTAINER:Ljava/lang/String; = "FromActionContainer"


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
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

.method private getSignupUserFragment()Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 56
    .local v0, "mgr":Landroid/support/v4/app/FragmentManager;
    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    return-object v1
.end method

.method public static start(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFromActionContainer"    # Z

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FromActionContainer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->getSignupUserFragment()Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    .line 45
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->setContentView(I)V

    .line 27
    if-nez p1, :cond_1

    .line 28
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    move-result-object v0

    .line 29
    .local v0, "frag":Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06003b

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 38
    .end local v0    # "frag":Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const v1, 0x7f04000a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->overridePendingTransition(II)V

    .line 40
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->getSignupUserFragment()Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    move-result-object v0

    .line 71
    .local v0, "signupUserFragment":Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;
    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->getGoogleErrorDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method
