.class public Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "EditProfileActivity.java"


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "editProfileActivity":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    .line 38
    .local v0, "editProfileFragment":Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->profileUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const v1, 0x7f0800c5

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$1;-><init>(Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;)V

    new-instance v3, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity$2;-><init>(Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;)V

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/utils/AlertUtils;->createConfirmCancelAlertDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    .line 56
    const/high16 v1, 0x10a0000

    const v2, 0x7f04000b

    invoke-virtual {p0, v1, v2}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 28
    invoke-static {p0}, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->setFullscreenResizable(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    const v0, 0x7f04000a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;->overridePendingTransition(II)V

    .line 32
    return-void
.end method
