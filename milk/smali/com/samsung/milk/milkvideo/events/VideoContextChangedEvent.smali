.class public Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;
.super Ljava/lang/Object;
.source "VideoContextChangedEvent.java"


# instance fields
.field private videoContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoContext"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;->videoContext:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getVideoContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;->videoContext:Ljava/lang/String;

    return-object v0
.end method
