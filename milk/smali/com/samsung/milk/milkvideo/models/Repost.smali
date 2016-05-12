.class public Lcom/samsung/milk/milkvideo/models/Repost;
.super Ljava/lang/Object;
.source "Repost.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# instance fields
.field private custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation
.end field

.field private embedCode:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "embed_code"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private originalPosterId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "original_poster_id"
    .end annotation
.end field

.field private originalPosterImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "original_poster_image_url"
    .end annotation
.end field

.field private playCount:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "play_count"
    .end annotation
.end field

.field private previewImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "preview_image_url"
    .end annotation
.end field

.field private provider:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "provider"
    .end annotation
.end field

.field private providerCreatedAt:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "provider_created_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromVideo(Lcom/samsung/milk/milkvideo/models/Video;)Lcom/samsung/milk/milkvideo/models/Repost;
    .locals 3
    .param p0, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 33
    new-instance v0, Lcom/samsung/milk/milkvideo/models/Repost;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/models/Repost;-><init>()V

    .line 35
    .local v0, "r":Lcom/samsung/milk/milkvideo/models/Repost;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->embedCode:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getProviderCreatedAt()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->providerCreatedAt:J

    .line 37
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->description:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getDuration()I

    move-result v1

    iput v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->duration:I

    .line 40
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getPlayCount()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->playCount:J

    .line 41
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->previewImageUrl:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getCustom()Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->provider:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->originalPosterId:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/models/Repost;->originalPosterImageUrl:Ljava/lang/String;

    .line 47
    return-object v0
.end method


# virtual methods
.method public getCustom()Lcom/samsung/milk/milkvideo/models/CustomVideoData;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->duration:I

    return v0
.end method

.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->embedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->playCount:J

    return-wide v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->previewImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCreatedAt()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/samsung/milk/milkvideo/models/Repost;->providerCreatedAt:J

    return-wide v0
.end method

.method public setCustom(Lcom/samsung/milk/milkvideo/models/CustomVideoData;)V
    .locals 0
    .param p1, "custom"    # Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    .line 120
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->description:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->duration:I

    .line 80
    return-void
.end method

.method public setEmbedCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "embedCode"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->embedCode:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPlayCount(J)V
    .locals 0
    .param p1, "playCount"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->playCount:J

    .line 88
    return-void
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewImageUrl"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->previewImageUrl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->provider:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setProviderCreatedAt(J)V
    .locals 0
    .param p1, "providerCreatedAt"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/samsung/milk/milkvideo/models/Repost;->providerCreatedAt:J

    .line 104
    return-void
.end method
