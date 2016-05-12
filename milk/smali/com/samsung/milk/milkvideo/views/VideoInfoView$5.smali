.class Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;
.super Ljava/lang/Object;
.source "VideoInfoView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 174
    add-int/lit8 v1, v0, 0x1

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionDropDown:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->access$300(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 182
    :goto_1
    return-void

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionDropDown:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->access$300(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method
