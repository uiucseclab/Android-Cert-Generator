.class Lcom/samsung/milk/milkvideo/views/VideoListItemView$2;
.super Ljava/lang/Object;
.source "VideoListItemView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->actionContainerView:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetReplayButton()V

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->actionContainerView:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->show(Z)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->performHapticFeedback(I)Z

    .line 81
    return v2
.end method
