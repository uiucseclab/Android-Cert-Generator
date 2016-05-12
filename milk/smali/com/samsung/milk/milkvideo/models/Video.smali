.class public Lcom/samsung/milk/milkvideo/models/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# static fields
.field private static final DISPLAY_PROVIDER_YOUTUBE:Ljava/lang/String; = "YouTube"

.field public static final PROVIDER_OOYALA:Ljava/lang/String; = "ooyala"

.field public static final PROVIDER_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final PROVIDER_YOUTUBE_DEGRADED:Ljava/lang/String; = "youtube-degraded"


# instance fields
.field private custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

.field private description:Ljava/lang/String;

.field private duration:I

.field private embedCode:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "embed_code"
    .end annotation
.end field

.field private followedReposters:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reposter_objects"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FacepileReposter;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private originalPosterImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "original_poster_image_url"
    .end annotation
.end field

.field private originalPosterUUID:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "original_poster_id"
    .end annotation
.end field

.field private playCount:Ljava/lang/Long;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "play_count"
    .end annotation
.end field

.field private positionInList:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private previewImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "preview_image_url"
    .end annotation
.end field

.field private provider:Ljava/lang/String;

.field private providerCreatedAt:Ljava/lang/Long;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "provider_created_at"
    .end annotation
.end field

.field private repostCount:Ljava/lang/Long;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "repost_count"
    .end annotation
.end field

.field private repostedByMe:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reposted_by_me"
    .end annotation
.end field

.field private reposterCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reposter_count"
    .end annotation
.end field

.field private resolution:Ljava/lang/String;

.field private starredByMe:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "starred_by_me"
    .end annotation
.end field

.field private streamUrlHigh:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stream_url_high"
    .end annotation
.end field

.field private streamUrlLow:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stream_url_low"
    .end annotation
.end field

.field private streamUrlMedium:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stream_url_medium"
    .end annotation
.end field

.field private videoPlaying:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    .line 28
    new-instance v0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/models/CustomVideoData;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    if-ne p0, p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 207
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

    .line 209
    check-cast v0, Lcom/samsung/milk/milkvideo/models/Video;

    .line 211
    .local v0, "video":Lcom/samsung/milk/milkvideo/models/Video;
    iget v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->duration:I

    iget v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->duration:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 212
    :cond_4
    iget v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->positionInList:I

    iget v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->positionInList:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 213
    :cond_5
    iget-boolean v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostedByMe:Z

    iget-boolean v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->repostedByMe:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 214
    :cond_6
    iget-boolean v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->starredByMe:Z

    iget-boolean v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->starredByMe:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 215
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->videoPlaying:Z

    iget-boolean v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->videoPlaying:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 216
    :cond_8
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    if-nez v3, :cond_9

    .line 217
    :cond_b
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->description:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    goto :goto_0

    :cond_d
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->description:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 218
    :cond_e
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->embedCode:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->embedCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->embedCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    goto :goto_0

    :cond_10
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->embedCode:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 219
    :cond_11
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v1, v2

    .line 220
    goto/16 :goto_0

    .line 219
    :cond_13
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    if-nez v3, :cond_12

    .line 221
    :cond_14
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->name:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    move v1, v2

    goto/16 :goto_0

    :cond_16
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->name:Ljava/lang/String;

    if-nez v3, :cond_15

    .line 222
    :cond_17
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterUUID:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterUUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterUUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_18
    move v1, v2

    .line 223
    goto/16 :goto_0

    .line 222
    :cond_19
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterUUID:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 224
    :cond_1a
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterImageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1b
    move v1, v2

    .line 225
    goto/16 :goto_0

    .line 224
    :cond_1c
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterImageUrl:Ljava/lang/String;

    if-nez v3, :cond_1b

    .line 226
    :cond_1d
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1e
    move v1, v2

    goto/16 :goto_0

    :cond_1f
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    if-nez v3, :cond_1e

    .line 227
    :cond_20
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->previewImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->previewImageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->previewImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_21
    move v1, v2

    .line 228
    goto/16 :goto_0

    .line 227
    :cond_22
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->previewImageUrl:Ljava/lang/String;

    if-nez v3, :cond_21

    .line 229
    :cond_23
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->provider:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_24
    move v1, v2

    goto/16 :goto_0

    :cond_25
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->provider:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 230
    :cond_26
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_27
    move v1, v2

    .line 231
    goto/16 :goto_0

    .line 230
    :cond_28
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    if-nez v3, :cond_27

    .line 232
    :cond_29
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2a
    move v1, v2

    goto/16 :goto_0

    :cond_2b
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    if-nez v3, :cond_2a

    .line 233
    :cond_2c
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->resolution:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/Video;->resolution:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/Video;->resolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_2d
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/Video;->resolution:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getCustom()Lcom/samsung/milk/milkvideo/models/CustomVideoData;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplaySourceProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->isYoutube()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "YouTube"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->duration:I

    return v0
.end method

.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->embedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowedReposters()Ljava/util/ArrayList;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reposter_objects"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FacepileReposter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPosterImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPosterUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getPositionInList()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->positionInList:I

    return v0
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->previewImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCreatedAt()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public getRepostCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getReposterCount()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->reposterCount:I

    return v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getShareableUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    const-string v1, "com.samsung.milk.milkvideo.service.endpoint"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "endpoint":Ljava/lang/String;
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStreamUrlHigh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->streamUrlHigh:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamUrlLow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->streamUrlLow:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamUrlMedium()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->streamUrlMedium:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->embedCode:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->embedCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 241
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/samsung/milk/milkvideo/models/Video;->duration:I

    add-int v0, v2, v4

    .line 242
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v4, v2

    .line 243
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 244
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v4, v2

    .line 245
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v4, v2

    .line 246
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v4, v2

    .line 247
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->previewImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->previewImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v4, v2

    .line 248
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->resolution:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->resolution:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v4, v2

    .line 249
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->provider:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v4, v2

    .line 250
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostedByMe:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 251
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v4, v2

    .line 252
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->starredByMe:Z

    if-eqz v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 253
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v4, v2

    .line 254
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int v0, v4, v2

    .line 255
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterUUID:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterUUID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int v0, v4, v2

    .line 256
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lcom/samsung/milk/milkvideo/models/Video;->positionInList:I

    add-int v0, v2, v4

    .line 257
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lcom/samsung/milk/milkvideo/models/Video;->videoPlaying:Z

    if-eqz v4, :cond_f

    :goto_f
    add-int v0, v2, v3

    .line 258
    return v0

    .end local v0    # "result":I
    :cond_0
    move v0, v1

    .line 240
    goto/16 :goto_0

    .restart local v0    # "result":I
    :cond_1
    move v2, v1

    .line 242
    goto/16 :goto_1

    :cond_2
    move v2, v1

    .line 243
    goto/16 :goto_2

    :cond_3
    move v2, v1

    .line 244
    goto/16 :goto_3

    :cond_4
    move v2, v1

    .line 245
    goto/16 :goto_4

    :cond_5
    move v2, v1

    .line 246
    goto/16 :goto_5

    :cond_6
    move v2, v1

    .line 247
    goto/16 :goto_6

    :cond_7
    move v2, v1

    .line 248
    goto :goto_7

    :cond_8
    move v2, v1

    .line 249
    goto :goto_8

    :cond_9
    move v2, v1

    .line 250
    goto :goto_9

    :cond_a
    move v2, v1

    .line 251
    goto :goto_a

    :cond_b
    move v2, v1

    .line 252
    goto :goto_b

    :cond_c
    move v2, v1

    .line 253
    goto :goto_c

    :cond_d
    move v2, v1

    .line 254
    goto :goto_d

    :cond_e
    move v2, v1

    .line 255
    goto :goto_e

    :cond_f
    move v3, v1

    .line 257
    goto :goto_f
.end method

.method public isDegradedYouTube()Z
    .locals 2

    .prologue
    .line 288
    const-string v0, "youtube-degraded"

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOoyala()Z
    .locals 2

    .prologue
    .line 180
    const-string v0, "ooyala"

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRepostedByMe()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostedByMe:Z

    return v0
.end method

.method public isStarredByMe()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->starredByMe:Z

    return v0
.end method

.method public isVideoPlaying()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/Video;->videoPlaying:Z

    return v0
.end method

.method public isYoutube()Z
    .locals 2

    .prologue
    .line 184
    const-string v0, "youtube"

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "youtube-degraded"

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isYoutubeDegraded()Z
    .locals 2

    .prologue
    .line 187
    const-string v0, "youtube-degraded"

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCustom(Lcom/samsung/milk/milkvideo/models/CustomVideoData;)V
    .locals 0
    .param p1, "custom"    # Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->custom:Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    .line 114
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->description:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->duration:I

    .line 74
    return-void
.end method

.method public setEmbedCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "embedCode"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->embedCode:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setFollowedReposters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reposter_objects"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FacepileReposter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "followedReposters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/milk/milkvideo/models/FacepileReposter;>;"
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->followedReposters:Ljava/util/ArrayList;

    .line 285
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->name:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setOriginalPosterImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterImageUrl:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setOriginalPosterUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->originalPosterUUID:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setPlayCount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "playCount"    # Ljava/lang/Long;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->playCount:Ljava/lang/Long;

    .line 106
    return-void
.end method

.method public setPositionInList(I)V
    .locals 0
    .param p1, "positionInList"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->positionInList:I

    .line 267
    return-void
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewImageUrl"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->previewImageUrl:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->provider:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setProviderCreatedAt(Ljava/lang/Long;)V
    .locals 0
    .param p1, "providerCreatedAt"    # Ljava/lang/Long;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->providerCreatedAt:Ljava/lang/Long;

    .line 82
    return-void
.end method

.method public setRepostCount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "repostCount"    # Ljava/lang/Long;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostCount:Ljava/lang/Long;

    return-void
.end method

.method public setRepostedByMe(Z)V
    .locals 0
    .param p1, "repostedByMe"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->repostedByMe:Z

    .line 157
    return-void
.end method

.method public setReposterCount(I)V
    .locals 0
    .param p1, "reposterCount"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->reposterCount:I

    .line 177
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->resolution:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setStarredByMe(Z)V
    .locals 0
    .param p1, "starredByMe"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->starredByMe:Z

    .line 165
    return-void
.end method

.method public setStreamUrlHigh(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamUrlHigh"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->streamUrlHigh:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setStreamUrlLow(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamUrlLow"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->streamUrlLow:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setStreamUrlMedium(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamUrlMedium"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->streamUrlMedium:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setVideoPlaying(Z)V
    .locals 0
    .param p1, "videoPlaying"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/models/Video;->videoPlaying:Z

    .line 275
    return-void
.end method
