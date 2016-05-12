.class public Lcom/samsung/milk/milkvideo/events/RepostVideosResponse;
.super Lcom/samsung/milk/milkvideo/events/VideosResponse;
.source "RepostVideosResponse.java"


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
    .line 9
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/events/VideosResponse;-><init>(Ljava/util/List;)V

    .line 10
    return-void
.end method
