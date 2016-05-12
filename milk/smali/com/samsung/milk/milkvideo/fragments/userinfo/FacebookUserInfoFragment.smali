.class public Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;
.super Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;
.source "FacebookUserInfoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/NewAccountUserInfoFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected createAccount()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;-><init>()V

    .line 19
    .local v0, "request":Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 20
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->SOCIAL_NETWORK_TOKEN_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;->setFacebookShortLivedAccessToken(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->signInWithFacebook(Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;Lretrofit/Callback;)V

    .line 35
    return-void
.end method
