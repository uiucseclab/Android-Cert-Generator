.class public Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;
.super Lcom/samsung/milk/milkvideo/validations/ValidationRule;
.source "EmailValidationRule.java"


# instance fields
.field private final nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/api/NachosRestService;)V
    .locals 0
    .param p1, "eventBus"    # Lcom/squareup/otto/Bus;
    .param p2, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/validations/ValidationRule;-><init>(Lcom/squareup/otto/Bus;)V

    .line 20
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 21
    return-void
.end method


# virtual methods
.method public validate(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
    .locals 3
    .param p1, "emailField"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "enteredText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const v1, 0x7f080064

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;->showErrorPane(I)V

    .line 29
    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    .line 46
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/ValidationUtils;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;->showErrorPane(I)V

    .line 32
    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {p1, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;-><init>(Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getEmailUnique(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method
