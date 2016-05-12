.class public Lcom/samsung/milk/milkvideo/activity/WelcomeFollowGooglePlusFriendsActivity;
.super Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;
.source "WelcomeFollowGooglePlusFriendsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowGooglePlusFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getFollowFriendsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowGooglePlusFriendsFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowGooglePlusFriendsFragment;

    move-result-object v0

    return-object v0
.end method
