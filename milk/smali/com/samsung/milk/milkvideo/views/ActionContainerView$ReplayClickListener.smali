.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$ReplayClickListener;
.super Ljava/lang/Object;
.source "ActionContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplayClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ReplayClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ReplayClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ReplayClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->reset()V

    .line 464
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ReplayClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoReplayRequestedEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/VideoReplayRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 465
    return-void
.end method
