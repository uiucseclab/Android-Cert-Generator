.class public Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;
.super Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
.source "EditProfileFragment.java"


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected addTitleViewToLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0600ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030062

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 115
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "PASSWORD_PLACEHOLDER":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->submitButton:Landroid/widget/Button;

    const v2, 0x7f08006c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 32
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->submitButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public profileUpdated()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->profilePhotoUpdated:Z

    .line 119
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->usernameField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 120
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->emailField:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/models/User;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    .line 122
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/models/User;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    or-int/2addr v0, v2

    .line 123
    return v0

    :cond_0
    move v1, v3

    .line 119
    goto :goto_0

    :cond_1
    move v1, v3

    .line 120
    goto :goto_1

    :cond_2
    move v1, v3

    .line 121
    goto :goto_2

    :cond_3
    move v2, v3

    .line 122
    goto :goto_3
.end method
