.class public Lcom/samsung/milk/milkvideo/swipelistview/BaseSwipeListViewListener;
.super Ljava/lang/Object;
.source "BaseSwipeListViewListener.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeSwipeMode(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    const/4 v0, -0x1

    return v0
.end method

.method public onChoiceChanged(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 52
    return-void
.end method

.method public onChoiceEnded()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onChoiceStarted()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onClickBackView(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 39
    return-void
.end method

.method public onClickFrontView(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 30
    return-void
.end method

.method public onClosed(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "fromRight"    # Z

    .prologue
    .line 10
    return-void
.end method

.method public onDismiss([I)V
    .locals 0
    .param p1, "reverseSortedPositions"    # [I

    .prologue
    .line 43
    return-void
.end method

.method public onFirstListItem()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onLastListItem()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public onLongClickFrontView(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "x"    # F

    .prologue
    .line 18
    return-void
.end method

.method public onOpened(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "toRight"    # Z

    .prologue
    .line 6
    return-void
.end method

.method public onStartClose(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "right"    # Z

    .prologue
    .line 26
    return-void
.end method

.method public onStartOpen(IIZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "action"    # I
    .param p3, "right"    # Z

    .prologue
    .line 22
    return-void
.end method
