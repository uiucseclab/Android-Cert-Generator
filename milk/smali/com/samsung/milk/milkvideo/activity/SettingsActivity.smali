.class public Lcom/samsung/milk/milkvideo/activity/SettingsActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "SettingsActivity.java"


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    .line 32
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;->overridePendingTransition(II)V

    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;->setContentView(I)V

    .line 20
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f060039

    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    const v0, 0x7f04000a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;->overridePendingTransition(II)V

    .line 27
    return-void
.end method
