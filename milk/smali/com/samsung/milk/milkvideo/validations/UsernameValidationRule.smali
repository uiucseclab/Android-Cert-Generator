.class public Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule;
.super Lcom/samsung/milk/milkvideo/validations/ValidationRule;
.source "UsernameValidationRule.java"


# instance fields
.field private final nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/api/NachosRestService;)V
    .locals 0
    .param p1, "eventBus"    # Lcom/squareup/otto/Bus;
    .param p2, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/validations/ValidationRule;-><init>(Lcom/squareup/otto/Bus;)V

    .line 18
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 19
    return-void
.end method


# virtual methods
.method public validate(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
    .locals 4
    .param p1, "usernameField"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "username":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "defaultUsername":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const v2, 0x7f080064

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule;->showErrorPane(I)V

    .line 27
    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    .line 43
    :goto_0
    return-void

    .line 28
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v3, Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule$1;-><init>(Lcom/samsung/milk/milkvideo/validations/UsernameValidationRule;Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V

    invoke-interface {v2, v1, v3}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getValidUsername(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method
