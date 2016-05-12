.class Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->profileUpdated()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validate()V

    .line 37
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validate()V

    .line 38
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getValidationState()Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    move-result-object v1

    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getValidationState()Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    move-result-object v1

    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-ne v1, v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    new-instance v0, Lcom/samsung/milk/milkvideo/models/User;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/models/User;-><init>()V

    .line 45
    .local v0, "user":Lcom/samsung/milk/milkvideo/models/User;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setUsername(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setEmail(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setFirstName(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setLastName(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-boolean v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->profilePhotoUpdated:Z

    if-eqz v1, :cond_5

    .line 52
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->profilePhotoUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setIconUri(Ljava/lang/String;)V

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->profileImageData:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->profileImageData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setProfileImageData(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/models/User;->setProfileImageChanged(Z)V

    .line 66
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->updateUser(Ljava/lang/String;Lcom/samsung/milk/milkvideo/models/User;Lretrofit/Callback;)V

    .line 93
    .end local v0    # "user":Lcom/samsung/milk/milkvideo/models/User;
    :cond_4
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 94
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    const v3, 0x7f04000b

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 63
    .restart local v0    # "user":Lcom/samsung/milk/milkvideo/models/User;
    :cond_5
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setIconUri(Ljava/lang/String;)V

    goto :goto_1
.end method
