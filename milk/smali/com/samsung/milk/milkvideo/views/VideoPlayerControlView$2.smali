.class Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$2;
.super Ljava/lang/Object;
.source "VideoPlayerControlView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 60
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, p2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->setTimeRemaining(J)V

    .line 64
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 69
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/SeekBarTouchedEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/SeekBarTouchedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 74
    return-void
.end method
