.class Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;
.super Ljava/lang/Object;
.source "ValidationEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 79
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 82
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    # getter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->previousText:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$000(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validate()V

    .line 85
    :cond_0
    if-eqz p2, :cond_2

    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->previousText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$002(Lcom/samsung/milk/milkvideo/views/ValidationEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    # getter for: Lcom/samsung/milk/milkvideo/views/ValidationEditText;->hint:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->access$100(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
