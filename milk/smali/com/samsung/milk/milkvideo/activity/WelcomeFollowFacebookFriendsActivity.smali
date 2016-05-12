.class public Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFacebookFriendsActivity;
.super Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;
.source "WelcomeFollowFacebookFriendsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFriendsActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFacebookFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected bridge synthetic getFollowFriendsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFacebookFriendsActivity;->getFollowFriendsFragment()Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFollowFriendsFragment()Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;

    move-result-object v0

    return-object v0
.end method
