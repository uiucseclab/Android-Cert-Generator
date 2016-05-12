.class public Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;
.super Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;
.source "SamsungAccountUserInfoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected createAccount()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->SOCIAL_NETWORK_TOKEN_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "api_server_url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .local v0, "request":Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 23
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->signInWithSamsungAccount(Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;Lretrofit/Callback;)V

    .line 37
    return-void
.end method
