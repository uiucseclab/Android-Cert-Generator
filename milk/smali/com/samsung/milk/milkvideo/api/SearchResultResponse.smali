.class public Lcom/samsung/milk/milkvideo/api/SearchResultResponse;
.super Ljava/lang/Object;
.source "SearchResultResponse.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/List;
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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->users:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->videos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->users:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->users:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getVideos()Ljava/util/List;
    .locals 2
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
    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->videos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->videos:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->hasUsers()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->hasVideos()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUsers()Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideos()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/User;>;"
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->users:Ljava/util/List;

    .line 21
    return-void
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
    .line 28
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SearchResultResponse;->videos:Ljava/util/List;

    .line 29
    return-void
.end method
