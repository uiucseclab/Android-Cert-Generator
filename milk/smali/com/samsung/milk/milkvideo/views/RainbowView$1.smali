.class Lcom/samsung/milk/milkvideo/views/RainbowView$1;
.super Ljava/lang/Object;
.source "RainbowView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/RainbowView;->setupLayoutPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/RainbowView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateBarLocation(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 88
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->screenHeight:I
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$500(Lcom/samsung/milk/milkvideo/views/RainbowView;)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x64

    .line 89
    .local v1, "thumbCurrentPosition":I
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->brightener:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$400(Lcom/samsung/milk/milkvideo/views/RainbowView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    add-int/lit16 v2, v1, -0xf0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 91
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->brightener:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$400(Lcom/samsung/milk/milkvideo/views/RainbowView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->trackingTouch:Z
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$000(Lcom/samsung/milk/milkvideo/views/RainbowView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$200(Lcom/samsung/milk/milkvideo/views/RainbowView;)Lcom/samsung/milk/milkvideo/views/SideBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/SideBarView;->updateThumbPosition()V

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->updateBarLocation(Landroid/widget/SeekBar;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/RainbowView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->trackingTouch:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$002(Lcom/samsung/milk/milkvideo/views/RainbowView;Z)Z

    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->isDisplayedOnEdge:Z
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$100(Lcom/samsung/milk/milkvideo/views/RainbowView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$200(Lcom/samsung/milk/milkvideo/views/RainbowView;)Lcom/samsung/milk/milkvideo/views/SideBarView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/views/SideBarView;->expand(Z)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/RainbowView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/SeekBarStartTrackingEvent;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/milk/milkvideo/events/SeekBarStartTrackingEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 85
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$200(Lcom/samsung/milk/milkvideo/views/RainbowView;)Lcom/samsung/milk/milkvideo/views/SideBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/SideBarView;->getSeekBar()Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->dropShadow:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$300(Lcom/samsung/milk/milkvideo/views/RainbowView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->brightener:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$400(Lcom/samsung/milk/milkvideo/views/RainbowView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->updateBarLocation(Landroid/widget/SeekBar;)V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # setter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->trackingTouch:Z
    invoke-static {v0, v2}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$002(Lcom/samsung/milk/milkvideo/views/RainbowView;Z)Z

    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->isDisplayedOnEdge:Z
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$100(Lcom/samsung/milk/milkvideo/views/RainbowView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$200(Lcom/samsung/milk/milkvideo/views/RainbowView;)Lcom/samsung/milk/milkvideo/views/SideBarView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/views/SideBarView;->retract(ZZ)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/RainbowView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/SeekBarStopTrackingEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/SeekBarStopTrackingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 115
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$200(Lcom/samsung/milk/milkvideo/views/RainbowView;)Lcom/samsung/milk/milkvideo/views/SideBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/SideBarView;->getSeekBar()Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    move-result-object v0

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setBackgroundResource(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->dropShadow:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$300(Lcom/samsung/milk/milkvideo/views/RainbowView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView$1;->this$0:Lcom/samsung/milk/milkvideo/views/RainbowView;

    # getter for: Lcom/samsung/milk/milkvideo/views/RainbowView;->brightener:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->access$400(Lcom/samsung/milk/milkvideo/views/RainbowView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
