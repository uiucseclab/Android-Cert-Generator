.class Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

.field final synthetic val$spinner:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->val$spinner:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->val$spinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/support/BaseCallback;->failure(Lretrofit/RetrofitError;)V

    goto :goto_0
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/UserListResponse;Lretrofit/client/Response;)V
    .locals 5
    .param p1, "userListResponse"    # Lcom/samsung/milk/milkvideo/api/UserListResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 60
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->val$spinner:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/UserListResponse;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 65
    .local v1, "selectableUsers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/SelectableUser;>;"
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/UserListResponse;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/models/User;

    .line 66
    .local v2, "user":Lcom/samsung/milk/milkvideo/models/User;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->isVolt(Lcom/samsung/milk/milkvideo/models/User;)Z
    invoke-static {v3, v2}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;Lcom/samsung/milk/milkvideo/models/User;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    new-instance v3, Lcom/samsung/milk/milkvideo/models/SelectableUser;

    invoke-direct {v3, v2}, Lcom/samsung/milk/milkvideo/models/SelectableUser;-><init>(Lcom/samsung/milk/milkvideo/models/User;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    .end local v2    # "user":Lcom/samsung/milk/milkvideo/models/User;
    :cond_2
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->adapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->setList(Ljava/util/List;)V

    .line 72
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->adapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 57
    check-cast p1, Lcom/samsung/milk/milkvideo/api/UserListResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;->success(Lcom/samsung/milk/milkvideo/api/UserListResponse;Lretrofit/client/Response;)V

    return-void
.end method
