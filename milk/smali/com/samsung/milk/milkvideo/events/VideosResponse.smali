.class public Lcom/samsung/milk/milkvideo/events/VideosResponse;
.super Ljava/lang/Object;
.source "VideosResponse.java"


# instance fields
.field protected final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideosResponse;->videos:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    if-ne p0, p1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v1

    .line 21
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

    .line 23
    check-cast v0, Lcom/samsung/milk/milkvideo/events/VideosResponse;

    .line 25
    .local v0, "that":Lcom/samsung/milk/milkvideo/events/VideosResponse;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideosResponse;->videos:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideosResponse;->videos:Ljava/util/List;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/events/VideosResponse;->videos:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/events/VideosResponse;->videos:Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideosResponse;->videos:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideosResponse;->videos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideosResponse;->videos:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
