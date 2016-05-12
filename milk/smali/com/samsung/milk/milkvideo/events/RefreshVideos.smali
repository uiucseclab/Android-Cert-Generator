.class public Lcom/samsung/milk/milkvideo/events/RefreshVideos;
.super Ljava/lang/Object;
.source "RefreshVideos.java"


# instance fields
.field protected final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;->uuid:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    if-ne p0, p1, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v1

    .line 17
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

    .line 19
    check-cast v0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;

    .line 21
    .local v0, "that":Lcom/samsung/milk/milkvideo/events/RefreshVideos;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;->uuid:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;->uuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;->uuid:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/RefreshVideos;->uuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
