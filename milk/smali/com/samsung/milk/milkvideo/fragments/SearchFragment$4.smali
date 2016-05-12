.class Lcom/samsung/milk/milkvideo/fragments/SearchFragment$4;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->touchingXButton(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p2}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$500(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->searchField:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$600(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
