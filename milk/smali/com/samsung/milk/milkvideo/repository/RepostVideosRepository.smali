.class public Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;
.super Lcom/samsung/milk/milkvideo/repository/VideosRepository;
.source "RepostVideosRepository.java"


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p2, "eventBus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/VideosRepository;-><init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V

    .line 15
    return-void
.end method


# virtual methods
.method public refreshVideos(Lcom/samsung/milk/milkvideo/events/RefreshRepostVideos;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/RefreshRepostVideos;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/RefreshRepostVideos;->getUuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository$1;-><init>(Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getReposts(Ljava/lang/String;Lretrofit/Callback;)V

    .line 25
    return-void
.end method
