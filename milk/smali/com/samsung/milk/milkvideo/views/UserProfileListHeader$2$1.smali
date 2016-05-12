.class Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;
.super Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.source "UserProfileListHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

.field final synthetic val$isUnfollowRequest:Z

.field final synthetic val$otherUser:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;ZLandroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iput-boolean p2, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->val$isUnfollowRequest:Z

    iput-object p3, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->val$otherUser:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    const/4 v4, 0x1

    .line 97
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->val$isUnfollowRequest:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v1, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f080076

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->SUCCESS:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNotification(Landroid/app/Activity;IZLcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setFollowing(Z)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setEnabled(Z)V

    .line 103
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 6
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v5, 0x1

    .line 85
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->val$isUnfollowRequest:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v1, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f080076

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->SUCCESS:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-virtual {v1, v0, v2, v5, v3}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNotification(Landroid/app/Activity;IZLcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->val$otherUser:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isBrand()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v3}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isFollowing()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendFollowOrUnfollowEvent(Ljava/lang/String;ZZZ)V

    .line 90
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isFollowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->updateFollowingCount(Z)V

    .line 91
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2$1;->this$1:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setEnabled(Z)V

    .line 93
    return-void
.end method
