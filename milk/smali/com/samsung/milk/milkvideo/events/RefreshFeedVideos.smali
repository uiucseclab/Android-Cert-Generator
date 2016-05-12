.class public Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;
.super Ljava/lang/Object;
.source "RefreshFeedVideos.java"


# instance fields
.field private final category:Ljava/lang/String;

.field private final forceRefresh:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "forceRefresh"    # Ljava/lang/Boolean;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->category:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->forceRefresh:Ljava/lang/Boolean;

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

    .line 22
    if-ne p0, p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    .line 23
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

    .line 25
    check-cast v0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;

    .line 27
    .local v0, "that":Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->category:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->category:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->category:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 28
    :cond_6
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->forceRefresh:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->forceRefresh:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->forceRefresh:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->forceRefresh:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getForceRefresh()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->forceRefresh:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->category:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->category:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 36
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->forceRefresh:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/events/RefreshFeedVideos;->forceRefresh:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 37
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 35
    goto :goto_0
.end method
