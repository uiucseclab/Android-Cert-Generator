.class Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "FeedVideosRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->moreVideos(Lcom/samsung/milk/milkvideo/events/MoreFeedVideos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/models/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;->this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;->this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    # operator-- for: Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->page:I
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->access$210(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;)I

    .line 53
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;->this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->requestInProgress:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->access$102(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;Z)Z

    .line 54
    return-void
.end method

.method public success(Lcom/samsung/milk/milkvideo/models/Feed;Lretrofit/client/Response;)V
    .locals 4
    .param p1, "feed"    # Lcom/samsung/milk/milkvideo/models/Feed;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;->this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Feed;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->noMoreVideos:Z
    invoke-static {v2, v0}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->access$002(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;Z)Z

    .line 46
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;->this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/MoreFeedVideosResponse;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Feed;->getVideos()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/milk/milkvideo/events/MoreFeedVideosResponse;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;->this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    # setter for: Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->requestInProgress:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->access$102(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;Z)Z

    .line 48
    return-void

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 42
    check-cast p1, Lcom/samsung/milk/milkvideo/models/Feed;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;->success(Lcom/samsung/milk/milkvideo/models/Feed;Lretrofit/client/Response;)V

    return-void
.end method
