.class public Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;
.super Ljava/lang/Object;
.source "PullToRefreshEvent.java"


# instance fields
.field showHeader:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "showHeader"    # Z

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;->showHeader:Z

    .line 8
    return-void
.end method


# virtual methods
.method public shouldShowHeader()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/PullToRefreshEvent;->showHeader:Z

    return v0
.end method
