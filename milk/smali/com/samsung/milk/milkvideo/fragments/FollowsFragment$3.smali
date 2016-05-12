.class Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "FollowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/models/FollowingList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 1
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->hideSpinner()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    .line 235
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/support/BaseCallback;->failure(Lretrofit/RetrofitError;)V

    goto :goto_0
.end method

.method public success(Lcom/samsung/milk/milkvideo/models/FollowingList;Lretrofit/client/Response;)V
    .locals 3
    .param p1, "followingList"    # Lcom/samsung/milk/milkvideo/models/FollowingList;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->hideSpinner()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    .line 227
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/FollowingList;->getFollowing()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->setList(Ljava/util/List;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 222
    check-cast p1, Lcom/samsung/milk/milkvideo/models/FollowingList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;->success(Lcom/samsung/milk/milkvideo/models/FollowingList;Lretrofit/client/Response;)V

    return-void
.end method
