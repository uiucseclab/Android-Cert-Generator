.class public Lcom/samsung/milk/milkvideo/models/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# instance fields
.field private videos:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed"
    .end annotation

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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/Feed;->videos:Ljava/util/List;

    return-void
.end method


# virtual methods
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
    .line 17
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Feed;->videos:Ljava/util/List;

    return-object v0
.end method

.method public setVideos(Ljava/util/List;)V
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
    .line 21
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Feed;->videos:Ljava/util/List;

    .line 22
    return-void
.end method
