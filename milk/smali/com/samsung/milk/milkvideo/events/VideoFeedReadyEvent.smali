.class public Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;
.super Ljava/lang/Object;
.source "VideoFeedReadyEvent.java"


# instance fields
.field private final category:Ljava/lang/String;

.field private final loadSuccessful:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "successful"    # Z
    .param p2, "cat"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;->loadSuccessful:Z

    .line 9
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;->category:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;->loadSuccessful:Z

    return v0
.end method
