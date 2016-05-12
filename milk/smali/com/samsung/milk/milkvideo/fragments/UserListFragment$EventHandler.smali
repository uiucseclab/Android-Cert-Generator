.class Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;
.super Ljava/lang/Object;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/UserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserFollowStateChanged(Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v2

    .line 114
    .local v2, "user":Lcom/samsung/milk/milkvideo/models/User;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/User;

    .line 116
    .local v0, "adapterUser":Lcom/samsung/milk/milkvideo/models/User;
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->isFollowedByMe()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/models/User;->setFollowedByMe(Z)V

    .line 118
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->notifyDataSetChanged()V

    .line 122
    .end local v0    # "adapterUser":Lcom/samsung/milk/milkvideo/models/User;
    :cond_0
    return-void

    .line 114
    .restart local v0    # "adapterUser":Lcom/samsung/milk/milkvideo/models/User;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public refreshUserList(Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/RefreshUserListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getUsersList(Z)V
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;Z)V

    .line 109
    return-void
.end method
