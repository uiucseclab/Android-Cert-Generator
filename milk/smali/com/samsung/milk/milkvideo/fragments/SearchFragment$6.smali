.class Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->search()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/api/SearchResultResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method

.method private dismissSpinnerAndIsValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "fragmentView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    const v2, 0x7f06008f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 1
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->dismissSpinnerAndIsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/support/BaseCallback;->failure(Lretrofit/RetrofitError;)V

    goto :goto_0
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/SearchResultResponse;Lretrofit/client/Response;)V
    .locals 5
    .param p1, "results"    # Lcom/samsung/milk/milkvideo/api/SearchResultResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->dismissSpinnerAndIsValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;-><init>()V

    .line 192
    .local v0, "adapter":Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->setList(Ljava/util/List;)V

    .line 193
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->getUsers()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->userList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$802(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;Ljava/util/List;)Ljava/util/List;

    .line 194
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$900(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->initSearchHeader()V
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$1000(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    .line 199
    :goto_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->updateSearchListHeader(Lcom/samsung/milk/milkvideo/api/SearchResultResponse;)V
    invoke-static {v1, p1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$1200(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;Lcom/samsung/milk/milkvideo/api/SearchResultResponse;)V

    .line 200
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$1100(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$900(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 201
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$1100(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchResultList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$1100(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchListHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$900(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 184
    check-cast p1, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$6;->success(Lcom/samsung/milk/milkvideo/api/SearchResultResponse;Lretrofit/client/Response;)V

    return-void
.end method
