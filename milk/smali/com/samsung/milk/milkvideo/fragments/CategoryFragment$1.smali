.class Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;
.super Ljava/lang/Object;
.source "CategoryFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->populateCategories()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/samsung/milk/milkvideo/api/CategoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0
    .param p1, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 83
    return-void
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/CategoryListResponse;Lretrofit/client/Response;)V
    .locals 2
    .param p1, "categoryListResponse"    # Lcom/samsung/milk/milkvideo/api/CategoryListResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;)Lcom/samsung/milk/milkvideo/views/CategoryListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;)Lcom/samsung/milk/milkvideo/views/CategoryListView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/CategoryListResponse;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setCategoryList(Ljava/util/List;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->categoryListView:Lcom/samsung/milk/milkvideo/views/CategoryListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;)Lcom/samsung/milk/milkvideo/views/CategoryListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->getCurrentCategoryIndex()I

    move-result v1

    iput v1, v0, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->currentCategoryIndex:I

    .line 78
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 71
    check-cast p1, Lcom/samsung/milk/milkvideo/api/CategoryListResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment$1;->success(Lcom/samsung/milk/milkvideo/api/CategoryListResponse;Lretrofit/client/Response;)V

    return-void
.end method
