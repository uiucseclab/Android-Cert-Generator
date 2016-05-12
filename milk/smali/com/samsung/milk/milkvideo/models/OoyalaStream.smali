.class public Lcom/samsung/milk/milkvideo/models/OoyalaStream;
.super Ljava/lang/Object;
.source "OoyalaStream.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private averageVideoBitrate:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "average_video_bitrate"
    .end annotation
.end field

.field private muxingFormat:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "muxing_format"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAverageVideoBitrate()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/OoyalaStream;->averageVideoBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMuxingFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/OoyalaStream;->muxingFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/OoyalaStream;->url:Ljava/lang/String;

    return-object v0
.end method
