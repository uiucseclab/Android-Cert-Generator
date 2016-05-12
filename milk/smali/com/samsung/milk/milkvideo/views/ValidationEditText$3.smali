.class Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;
.super Ljava/lang/Object;
.source "ValidationEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 98
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    # getter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validationRule:Lcom/samsung/milk/milkvideo/validations/ValidationRule;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$200(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Lcom/samsung/milk/milkvideo/validations/ValidationRule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    # getter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$300(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-eq v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    # getter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$500(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    # getter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$400(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    # getter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$500(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    # getter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$400(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Ljava/lang/Runnable;

    move-result-object v1

    sget v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->TEXT_CHANGE_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
