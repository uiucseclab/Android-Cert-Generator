.class Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$1;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "FeedVideosRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->refreshVideos(Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;)V
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
    .line 30
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$1;->this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/samsung/milk/milkvideo/models/Feed;Lretrofit/client/Response;)V
    .locals 3
    .param p1, "feed"    # Lcom/samsung/milk/milkvideo/models/Feed;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$1;->this$0:Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideosResponse;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Feed;->getVideos()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideosResponse;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 30
    check-cast p1, Lcom/samsung/milk/milkvideo/models/Feed;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$1;->success(Lcom/samsung/milk/milkvideo/models/Feed;Lretrofit/client/Response;)V

    return-void
.end method
