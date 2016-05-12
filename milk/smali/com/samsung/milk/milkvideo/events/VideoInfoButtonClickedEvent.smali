.class public Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;
.super Ljava/lang/Object;
.source "VideoInfoButtonClickedEvent.java"


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;->isOpen:Z

    .line 7
    return-void
.end method


# virtual methods
.method public isOpen()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;->isOpen:Z

    return v0
.end method
