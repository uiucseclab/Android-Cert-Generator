.class Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;
.super Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.source "UserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

.field final synthetic val$isFollowRequest:Z

.field final synthetic val$otherUser:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;ZLandroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iput-boolean p2, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$isFollowRequest:Z

    iput-object p3, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$otherUser:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    const/4 v4, 0x1

    .line 118
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$100(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f080076

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->SUCCESS:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNotification(Landroid/app/Activity;IZLcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$200(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v0, v4}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setEnabled(Z)V

    .line 123
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 7
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$isFollowRequest:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v2, 0xcf

    if-ne v0, v2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$100(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v3, 0x7f080076

    sget-object v4, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->SUCCESS:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNotification(Landroid/app/Activity;IZLcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$200(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$400(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$otherUser:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->isBrand()Z

    move-result v4

    iget-boolean v5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$isFollowRequest:Z

    sget-object v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FRIENDS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v6, v6, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->fragmentType:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    invoke-static {v6}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$300(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    move-result-object v6

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendFollowOrUnfollowEvent(Ljava/lang/String;ZZZ)V

    .line 112
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$000(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/services/LoginState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->val$isFollowRequest:Z

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->updateFollowingCount(Z)V

    .line 114
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->access$200(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1$1;->this$1:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;->val$user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-direct {v2, v3}, Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;-><init>(Lcom/samsung/milk/milkvideo/models/User;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
