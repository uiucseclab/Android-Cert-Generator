.class Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$1;
.super Ljava/lang/Object;
.source "HeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->hideOnInitialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$1;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
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
    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$1;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$1;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$1;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->header:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 62
    return-void
.end method
