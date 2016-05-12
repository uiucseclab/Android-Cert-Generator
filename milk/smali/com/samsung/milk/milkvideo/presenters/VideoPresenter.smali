.class public Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;
.super Ljava/lang/Object;
.source "VideoPresenter.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/utils/TimeService;)V
    .locals 0
    .param p1, "timeService"    # Lcom/samsung/milk/milkvideo/utils/TimeService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    .line 17
    return-void
.end method


# virtual methods
.method public getDuration(Lcom/samsung/milk/milkvideo/models/Video;)Ljava/lang/String;
    .locals 2
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getDuration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->millisToHourMinSec(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolution(Lcom/samsung/milk/milkvideo/models/Video;)Ljava/lang/String;
    .locals 1
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getResolution()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HD"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeSinceCreation(Lcom/samsung/milk/milkvideo/models/Video;)Ljava/lang/String;
    .locals 7
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getProviderCreatedAt()Ljava/lang/Long;

    move-result-object v0

    .line 25
    .local v0, "createdAt":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 26
    .local v1, "timeSinceCreated":J
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->secToTimeAgo(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ago"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 25
    .end local v1    # "timeSinceCreated":J
    :cond_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    goto :goto_0
.end method
