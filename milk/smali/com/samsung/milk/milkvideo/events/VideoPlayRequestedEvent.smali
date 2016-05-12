.class public Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;
.super Ljava/lang/Object;
.source "VideoPlayRequestedEvent.java"


# instance fields
.field private requestedVideo:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 0
    .param p1, "requestedVideo"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->requestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    .line 10
    return-void
.end method


# virtual methods
.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->requestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedVideo()Lcom/samsung/milk/milkvideo/models/Video;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->requestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    return-object v0
.end method
