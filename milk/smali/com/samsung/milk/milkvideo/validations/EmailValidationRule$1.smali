.class Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "EmailValidationRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;->validate(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;

.field final synthetic val$emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;->this$0:Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;->val$emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;Lretrofit/client/Response;)V
    .locals 2
    .param p1, "responseBody"    # Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;->val$emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->SUCCESS:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;->val$emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;->this$0:Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule;->showErrorPane(I)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 34
    check-cast p1, Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/validations/EmailValidationRule$1;->success(Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;Lretrofit/client/Response;)V

    return-void
.end method
