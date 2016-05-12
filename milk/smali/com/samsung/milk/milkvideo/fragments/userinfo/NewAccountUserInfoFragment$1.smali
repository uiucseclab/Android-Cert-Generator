.class Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;
.super Ljava/lang/Object;
.source "NewAccountUserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validate()V

    .line 31
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validate()V

    .line 32
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getValidationState()Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getValidationState()Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-ne v0, v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->setSpinnerVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    new-instance v1, Lcom/samsung/milk/milkvideo/models/User;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/models/User;-><init>()V

    iput-object v1, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setUsername(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setEmail(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/models/User;->setBrand(Z)V

    .line 46
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getGoogleAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setSoftLoginId(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setFirstName(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setLastName(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->profileImageData:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->profileImageData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setProfileImageData(Ljava/lang/String;)V

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;->createAccount()V

    goto/16 :goto_0
.end method
