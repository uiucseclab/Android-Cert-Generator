.class public Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "FollowFriendsActivity.java"


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
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FOLLOW_FRAGMENT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FRIENDS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    invoke-static {p0, v1}, Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;->getIntent(Landroid/content/Context;Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    .line 33
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;->overridePendingTransition(II)V

    .line 34
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;->setContentView(I)V

    .line 20
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 26
    :cond_0
    const v0, 0x7f04000a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;->overridePendingTransition(II)V

    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->applyBlurredBackground(Landroid/app/Activity;)V

    .line 28
    return-void
.end method
