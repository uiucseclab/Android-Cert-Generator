.class public Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;
.super Ljava/lang/Object;
.source "VideoStatusEvent.java"


# instance fields
.field private duration:I

.field private embedCode:Ljava/lang/String;

.field private endTime:I

.field private eventType:Ljava/lang/String;

.field private playerType:Ljava/lang/String;

.field private posterUUID:Ljava/lang/String;

.field private startTime:I

.field private title:Ljava/lang/String;

.field private watchLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 0
    .param p1, "playerType"    # Ljava/lang/String;
    .param p2, "embedCode"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "eventType"    # Ljava/lang/String;
    .param p5, "duration"    # I
    .param p6, "startTime"    # I
    .param p7, "endTime"    # I
    .param p8, "watchLength"    # I
    .param p9, "posterUUID"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->playerType:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->embedCode:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->title:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->eventType:Ljava/lang/String;

    .line 19
    iput p5, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->duration:I

    .line 20
    iput p6, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->startTime:I

    .line 21
    iput p7, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->endTime:I

    .line 22
    iput p8, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->watchLength:I

    .line 23
    iput-object p9, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->posterUUID:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->duration:I

    return v0
.end method

.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->embedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->endTime:I

    return v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->playerType:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->posterUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->startTime:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchLength()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/VideoStatusEvent;->watchLength:I

    return v0
.end method
