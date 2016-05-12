.class Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$1;
.super Ljava/lang/Object;
.source "VideoPlayerControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setUpListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->infoButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->infoButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
