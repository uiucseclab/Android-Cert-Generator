.class public abstract Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;
.super Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
.source "NewAccountUserInfoFragment.java"


# instance fields
.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;-><init>()V

    return-void
.end method

.method private getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "accountType":Ljava/lang/String;
    instance-of v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;

    if-eqz v1, :cond_1

    .line 68
    const-string v0, "facebook"

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    instance-of v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;

    if-eqz v1, :cond_2

    .line 70
    const-string v0, "samsung"

    goto :goto_0

    .line 71
    :cond_2
    instance-of v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;

    if-eqz v1, :cond_0

    .line 72
    const-string v0, "google"

    goto :goto_0
.end method


# virtual methods
.method protected abstract createAccount()V
.end method

.method protected createFailure()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->setSpinnerVisibility(I)V

    .line 80
    return-void
.end method

.method protected createSuccess()V
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->setSpinnerVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->getAccountType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendLoginEvent(Ljava/lang/String;Z)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 63
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->submitButton:Landroid/widget/Button;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->submitButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method
