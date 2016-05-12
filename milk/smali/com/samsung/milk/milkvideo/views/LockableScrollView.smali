.class public Lcom/samsung/milk/milkvideo/views/LockableScrollView;
.super Landroid/widget/ScrollView;
.source "LockableScrollView.java"


# instance fields
.field private expanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->expanded:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->expanded:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->expanded:Z

    .line 21
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->expanded:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->expanded:Z

    .line 34
    return-void
.end method
