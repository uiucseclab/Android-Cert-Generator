.class Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getUsersList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/api/UserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

.field final synthetic val$doAnimate:Z


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;Z)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    iput-boolean p2, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;->val$doAnimate:Z

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/UserListResponse;Lretrofit/client/Response;)V
    .locals 3
    .param p1, "userListResponse"    # Lcom/samsung/milk/milkvideo/api/UserListResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/UserListResponse;->getUsers()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;->val$doAnimate:Z

    # invokes: Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->displayUsers(Ljava/util/List;Z)V
    invoke-static {v0, v1, v2}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;Ljava/util/List;Z)V

    .line 90
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 86
    check-cast p1, Lcom/samsung/milk/milkvideo/api/UserListResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;->success(Lcom/samsung/milk/milkvideo/api/UserListResponse;Lretrofit/client/Response;)V

    return-void
.end method
