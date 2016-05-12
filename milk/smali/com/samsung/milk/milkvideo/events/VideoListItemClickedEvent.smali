.class public Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;
.super Ljava/lang/Object;
.source "VideoListItemClickedEvent.java"


# instance fields
.field private video:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    if-ne p0, p1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v1

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 21
    check-cast v0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;

    .line 23
    .local v0, "that":Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/models/Video;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getVideo()Lcom/samsung/milk/milkvideo/models/Video;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
