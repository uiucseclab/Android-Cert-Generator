.class Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;
.super Ljava/lang/Object;
.source "FollowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserFollowStateChanged(Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v2

    .line 201
    .local v2, "user":Lcom/samsung/milk/milkvideo/models/User;
    const/4 v3, 0x0

    .line 202
    .local v3, "userFound":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 203
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v4, v1}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/User;

    .line 205
    .local v0, "adapterUser":Lcom/samsung/milk/milkvideo/models/User;
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->isFollowedByMe()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v5, v5, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 207
    const/4 v3, 0x1

    .line 215
    .end local v0    # "adapterUser":Lcom/samsung/milk/milkvideo/models/User;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 216
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->notifyDataSetChanged()V

    .line 218
    :cond_1
    return-void

    .line 209
    .restart local v0    # "adapterUser":Lcom/samsung/milk/milkvideo/models/User;
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 210
    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->isFollowedByMe()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/milk/milkvideo/models/User;->setFollowedByMe(Z)V

    .line 211
    const/4 v3, 0x1

    .line 212
    goto :goto_1

    .line 202
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public refreshUserList(Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->type:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FOLLOWING:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    if-ne v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->followingCallback:Lretrofit/Callback;

    invoke-interface {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getFollowingList(Ljava/lang/String;Lretrofit/Callback;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->type:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FOLLOWERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->followerCallback:Lretrofit/Callback;

    invoke-interface {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getFollowersList(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method
