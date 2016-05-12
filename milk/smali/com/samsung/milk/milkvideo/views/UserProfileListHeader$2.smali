.class Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;
.super Ljava/lang/Object;
.source "UserProfileListHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->findSubViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 76
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setEnabled(Z)V

    .line 78
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->getUser()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "otherUser":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v7, v7, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "currentUserUuid":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isFollowing()Z

    move-result v2

    .line 82
    .local v2, "isUnfollowRequest":Z
    new-instance v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;-><init>(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;ZLandroid/view/View;Ljava/lang/String;)V

    .line 106
    .local v0, "callback":Lretrofit/ResponseCallback;
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v7, v7, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 107
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isFollowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v7, v7, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    invoke-interface {v7, v1, v3, v0}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->unfollowUser(Ljava/lang/String;Ljava/lang/String;Lretrofit/ResponseCallback;)V

    .line 120
    :goto_0
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v8}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isFollowing()Z

    move-result v8

    if-nez v8, :cond_2

    :goto_1
    invoke-virtual {v7, v5}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setFollowing(Z)V

    .line 121
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v5}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->refreshDrawableState()V

    .line 122
    return-void

    .line 110
    :cond_0
    new-instance v4, Lcom/samsung/milk/milkvideo/api/UserFollowRequest;

    invoke-direct {v4}, Lcom/samsung/milk/milkvideo/api/UserFollowRequest;-><init>()V

    .line 111
    .local v4, "request":Lcom/samsung/milk/milkvideo/api/UserFollowRequest;
    invoke-virtual {v4, v3}, Lcom/samsung/milk/milkvideo/api/UserFollowRequest;->setUserToFollow(Ljava/lang/String;)V

    .line 113
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v7, v7, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    invoke-interface {v7, v1, v4, v0}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->followUser(Ljava/lang/String;Lcom/samsung/milk/milkvideo/api/UserFollowRequest;Lretrofit/ResponseCallback;)V

    goto :goto_0

    .line 116
    .end local v4    # "request":Lcom/samsung/milk/milkvideo/api/UserFollowRequest;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->start(Landroid/content/Context;Z)V

    .line 117
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v5, v6

    .line 120
    goto :goto_1
.end method
