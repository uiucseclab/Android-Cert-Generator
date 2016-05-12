.class Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;
.super Ljava/lang/Object;
.source "UserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->setUpFollowButton(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/views/UserListItemView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

.field final synthetic val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

.field final synthetic val$user:Lcom/samsung/milk/milkvideo/models/User;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;Lcom/samsung/milk/milkvideo/views/FollowButtonView;Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    iput-object p3, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 96
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v7, v6}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setEnabled(Z)V

    .line 97
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isFollowing()Z

    move-result v7

    if-nez v7, :cond_0

    move v2, v5

    .line 99
    .local v2, "isFollowRequest":Z
    :goto_0
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->getUser()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "otherUser":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$000(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/services/LoginState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "currentUserUuid":Ljava/lang/String;
    new-instance v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;-><init>(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;ZLandroid/view/View;Ljava/lang/String;)V

    .line 127
    .local v0, "callback":Lretrofit/ResponseCallback;
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$000(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/services/LoginState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isFollowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    invoke-static {v5}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$500(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/api/NachosRestService;

    move-result-object v5

    invoke-interface {v5, v1, v3, v0}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->unfollowUser(Ljava/lang/String;Ljava/lang/String;Lretrofit/ResponseCallback;)V

    .line 130
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v5, v2}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setFollowing(Z)V

    .line 131
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v5, v2}, Lcom/samsung/milk/milkvideo/models/User;->setFollowedByMe(Z)V

    .line 143
    :goto_1
    return-void

    .end local v0    # "callback":Lretrofit/ResponseCallback;
    .end local v1    # "currentUserUuid":Ljava/lang/String;
    .end local v2    # "isFollowRequest":Z
    .end local v3    # "otherUser":Ljava/lang/String;
    :cond_0
    move v2, v6

    .line 97
    goto :goto_0

    .line 133
    .restart local v0    # "callback":Lretrofit/ResponseCallback;
    .restart local v1    # "currentUserUuid":Ljava/lang/String;
    .restart local v2    # "isFollowRequest":Z
    .restart local v3    # "otherUser":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/samsung/milk/milkvideo/api/UserFollowRequest;

    invoke-direct {v4}, Lcom/samsung/milk/milkvideo/api/UserFollowRequest;-><init>()V

    .line 134
    .local v4, "request":Lcom/samsung/milk/milkvideo/api/UserFollowRequest;
    invoke-virtual {v4, v3}, Lcom/samsung/milk/milkvideo/api/UserFollowRequest;->setUserToFollow(Ljava/lang/String;)V

    .line 135
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    invoke-static {v5}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$500(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/api/NachosRestService;

    move-result-object v5

    invoke-interface {v5, v1, v4, v0}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->followUser(Ljava/lang/String;Lcom/samsung/milk/milkvideo/api/UserFollowRequest;Lretrofit/ResponseCallback;)V

    .line 136
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v5, v2}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setFollowing(Z)V

    .line 137
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v5, v2}, Lcom/samsung/milk/milkvideo/models/User;->setFollowedByMe(Z)V

    goto :goto_1

    .line 140
    .end local v4    # "request":Lcom/samsung/milk/milkvideo/api/UserFollowRequest;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->start(Landroid/content/Context;Z)V

    .line 141
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v6, v5}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setEnabled(Z)V

    goto :goto_1
.end method
