.class public Lcom/samsung/milk/milkvideo/activity/FollowsActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "FollowsActivity.java"


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

.method public static getIntent(Landroid/content/Context;Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FOLLOW_FRAGMENT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method public static start(Landroid/content/Context;Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->getIntent(Landroid/content/Context;Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->getIntent(Landroid/content/Context;Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FOLLOW_FRAGMENT_UUID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->overridePendingTransition(II)V

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
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f060030

    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 26
    :cond_0
    const v0, 0x7f04000a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->overridePendingTransition(II)V

    .line 27
    return-void
.end method
