.class Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository$1;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "BrandVideosRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;->refreshVideos(Lcom/samsung/milk/milkvideo/events/RefreshBrandVideos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/models/BrandPostFeed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository$1;->this$0:Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/samsung/milk/milkvideo/models/BrandPostFeed;Lretrofit/client/Response;)V
    .locals 3
    .param p1, "brandPostFeed"    # Lcom/samsung/milk/milkvideo/models/BrandPostFeed;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository$1;->this$0:Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/BrandPostFeed;->getVideos()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 19
    check-cast p1, Lcom/samsung/milk/milkvideo/models/BrandPostFeed;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository$1;->success(Lcom/samsung/milk/milkvideo/models/BrandPostFeed;Lretrofit/client/Response;)V

    return-void
.end method
