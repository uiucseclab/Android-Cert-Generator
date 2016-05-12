.class Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;
.super Ljava/lang/Object;
.source "LargeHeaderHolder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderTextSizeListener"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;Landroid/widget/TextView;)V
    .locals 0
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;->textView:Landroid/widget/TextView;

    .line 53
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder$HeaderTextSizeListener;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    :cond_0
    return-void
.end method
