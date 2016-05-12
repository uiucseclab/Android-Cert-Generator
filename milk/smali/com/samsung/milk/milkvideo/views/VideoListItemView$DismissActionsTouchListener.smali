.class Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;
.super Ljava/lang/Object;
.source "VideoListItemView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/VideoListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissActionsTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;-><init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 227
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
