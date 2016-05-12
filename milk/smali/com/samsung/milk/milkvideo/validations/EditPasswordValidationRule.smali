.class public Lcom/samsung/milk/milkvideo/validations/EditPasswordValidationRule;
.super Lcom/samsung/milk/milkvideo/validations/ValidationRule;
.source "EditPasswordValidationRule.java"


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "eventBus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/validations/ValidationRule;-><init>(Lcom/squareup/otto/Bus;)V

    .line 12
    return-void
.end method


# virtual methods
.method public validate(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
    .locals 3
    .param p1, "passwordField"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "password":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :cond_0
    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    .line 26
    :goto_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 21
    const v1, 0x7f080065

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/validations/EditPasswordValidationRule;->showErrorPane(I)V

    .line 22
    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    goto :goto_0

    .line 24
    :cond_2
    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->SUCCESS:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    goto :goto_0
.end method
