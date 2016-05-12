.class public Lcom/samsung/milk/milkvideo/api/PlayEvent;
.super Ljava/lang/Object;
.source "PlayEvent.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private brandUUID:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "brand"
    .end annotation
.end field

.field private context:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "context"
    .end annotation
.end field

.field private mediaHost:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mediahost"
    .end annotation
.end field

.field private mediaId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mediaid"
    .end annotation
.end field

.field private startposition:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "startposition"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userid"
    .end annotation
.end field

.field private videolength:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "videolength"
    .end annotation
.end field

.field private watchlength:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "watchlength"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromVideoStatusEvent(Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/milk/milkvideo/api/PlayEvent;
    .locals 3
    .param p0, "event"    # Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoContext"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/api/PlayEvent;-><init>()V

    .line 88
    .local v0, "playEvent":Lcom/samsung/milk/milkvideo/api/PlayEvent;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->mediaHost:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->mediaId:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->type:Ljava/lang/String;

    .line 91
    iput-object p1, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->userId:Ljava/lang/String;

    .line 92
    iput-object p2, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->context:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->title:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "played"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playcompleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->videolength:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getWatchLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->watchlength:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->getStartTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->startposition:Ljava/lang/String;

    .line 101
    :cond_1
    return-object v0
.end method


# virtual methods
.method public forMixpanel(JLjava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "eventTime"    # J
    .param p3, "brandName"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v3, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string v3, "EventTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v3, "VideoId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->mediaHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v3, "PostingBrand"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-object v1

    .line 115
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getBrandUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->brandUUID:Ljava/lang/String;

    return-object v0
.end method

.method public setBrandUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "brandUUID"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->brandUUID:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->context:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setMediaHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaHost"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->mediaHost:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->mediaId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setStartposition(Ljava/lang/String;)V
    .locals 0
    .param p1, "startposition"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->startposition:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->title:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->type:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->userId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setVideolength(Ljava/lang/String;)V
    .locals 0
    .param p1, "videolength"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->videolength:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setWatchlength(Ljava/lang/String;)V
    .locals 0
    .param p1, "watchlength"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/PlayEvent;->watchlength:Ljava/lang/String;

    .line 71
    return-void
.end method
