.class public Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;
.super Lcom/samsung/milk/milkvideo/repository/VideosRepository;
.source "FeedVideosRepository.java"


# instance fields
.field private category:Ljava/lang/String;

.field private noMoreVideos:Z

.field private page:I

.field private requestInProgress:Z


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V
    .locals 1
    .param p1, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p2, "eventBus"    # Lcom/squareup/otto/Bus;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/VideosRepository;-><init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V

    .line 18
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->requestInProgress:Z

    .line 19
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->noMoreVideos:Z

    .line 23
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->noMoreVideos:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->requestInProgress:Z

    return p1
.end method

.method static synthetic access$210(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    .prologue
    .line 15
    iget v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->page:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->page:I

    return v0
.end method


# virtual methods
.method public moreVideos(Lcom/samsung/milk/milkvideo/events/MoreFeedVideos;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/MoreFeedVideos;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->requestInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->noMoreVideos:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->requestInProgress:Z

    .line 42
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->category:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->page:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->page:I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;

    invoke-direct {v4, p0}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$2;-><init>(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getPagedVideoFeed(Ljava/lang/String;ILjava/lang/Boolean;Lretrofit/Callback;)V

    .line 57
    :cond_0
    return-void
.end method

.method public refreshVideos(Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->noMoreVideos:Z

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->page:I

    .line 29
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->category:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->category:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;->page:I

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->getForceRefresh()Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$1;

    invoke-direct {v4, p0}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository$1;-><init>(Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getPagedVideoFeed(Ljava/lang/String;ILjava/lang/Boolean;Lretrofit/Callback;)V

    .line 36
    return-void
.end method
