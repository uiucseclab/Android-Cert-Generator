.class Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$ScrollingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CondensableHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollingGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$ScrollingGestureListener;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$ScrollingGestureListener;-><init>(Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$ScrollingGestureListener;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0, p4}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->onFlingY(F)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 170
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$ScrollingGestureListener;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0, p4}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->onScrollY(F)Z

    move-result v0

    goto :goto_0
.end method
