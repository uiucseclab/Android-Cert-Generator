.class Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 90
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 112
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->showCancelButton()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$400(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->handlerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$400(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->handlerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v1

    sget v2, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->SEARCH_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->hideCancelButton()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    goto :goto_0
.end method
