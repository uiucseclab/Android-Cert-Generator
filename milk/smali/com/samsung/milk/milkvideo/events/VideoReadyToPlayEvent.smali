.class public Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;
.super Ljava/lang/Object;
.source "VideoReadyToPlayEvent.java"


# instance fields
.field private videoLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "videoLength"    # I

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;->videoLength:I

    .line 8
    return-void
.end method


# virtual methods
.method public getVideoLength()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/VideoReadyToPlayEvent;->videoLength:I

    return v0
.end method
