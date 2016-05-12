.class public Lcom/samsung/milk/milkvideo/events/VideoPlayerCloseEvent;
.super Ljava/lang/Object;
.source "VideoPlayerCloseEvent.java"


# instance fields
.field private video:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoPlayerCloseEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    .line 10
    return-void
.end method


# virtual methods
.method public getVideo()Lcom/samsung/milk/milkvideo/models/Video;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoPlayerCloseEvent;->video:Lcom/samsung/milk/milkvideo/models/Video;

    return-object v0
.end method
