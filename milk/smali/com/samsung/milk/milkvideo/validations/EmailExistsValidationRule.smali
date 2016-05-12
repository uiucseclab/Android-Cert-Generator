.class public Lcom/samsung/milk/milkvideo/validations/EmailExistsValidationRule;
.super Lcom/samsung/milk/milkvideo/validations/ValidationRule;
.source "EmailExistsValidationRule.java"


# instance fields
.field private final nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/api/NachosRestService;)V
    .locals 0
    .param p1, "eventBus"    # Lcom/squareup/otto/Bus;
    .param p2, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/validations/ValidationRule;-><init>(Lcom/squareup/otto/Bus;)V

    .line 21
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/validations/EmailExistsValidationRule;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 22
    return-void
.end method


# virtual methods
.method public validate(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
    .locals 4
    .param p1, "emailField"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "defaultEmail":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "enteredText":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    .line 50
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    const v2, 0x7f080064

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/validations/EmailExistsValidationRule;->showErrorPane(I)V

    .line 33
    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/utils/ValidationUtils;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 35
    const v2, 0x7f08006e

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/validations/EmailExistsValidationRule;->showErrorPane(I)V

    .line 36
    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v2}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    goto :goto_0

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/validations/EmailExistsValidationRule;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v3, Lcom/samsung/milk/milkvideo/validations/EmailExistsValidationRule$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/milk/milkvideo/validations/EmailExistsValidationRule$1;-><init>(Lcom/samsung/milk/milkvideo/validations/EmailExistsValidationRule;Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V

    invoke-interface {v2, v1, v3}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getEmailUnique(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method
