.class Lcom/samsung/milk/milkvideo/views/SideBarView$1;
.super Ljava/lang/Object;
.source "SideBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/SideBarView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/SideBarView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/SideBarView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/SideBarView$1;->this$0:Lcom/samsung/milk/milkvideo/views/SideBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 56
    .local v0, "clonedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/SideBarView$1;->this$0:Lcom/samsung/milk/milkvideo/views/SideBarView;

    # getter for: Lcom/samsung/milk/milkvideo/views/SideBarView;->seekBar:Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/SideBarView;->access$000(Lcom/samsung/milk/milkvideo/views/SideBarView;)Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 58
    const/4 v1, 0x1

    return v1
.end method
