.class public Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;
.super Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;
.source "SamsungLoginStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;
    }
.end annotation


# instance fields
.field public featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

.field private final messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/FeatureFlags;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V
    .locals 0
    .param p1, "featureFlags"    # Lcom/samsung/milk/milkvideo/FeatureFlags;
    .param p2, "messageNotifier"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    .line 30
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    return-object v0
.end method

.method private handleAddSamsungAccountResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v1, "adding SA account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 69
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA signup successful  result data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->buildGetAccessTokenIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x118

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    if-eqz p2, :cond_1

    .line 73
    const-string v1, "error_message"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA signup failure  result data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleGetSamsungAccessToken(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 80
    const-string v3, "getting SA access token"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SA handleGetSamsungAccessToken  result data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const-string v3, "access_token"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "accessToken":Ljava/lang/String;
    const-string v3, "api_server_url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "apiServerUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    invoke-virtual {v3, v5}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    .line 87
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v4, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;

    invoke-direct {v4, v0, v1}, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;

    invoke-direct {v5, p0, v0, v1}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;-><init>(Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->signInWithSamsungAccount(Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;Lretrofit/Callback;)V

    .line 96
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "apiServerUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    if-eqz p2, :cond_0

    .line 92
    const-string v3, "error_message"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SA signup failure  result data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 55
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->handleAddSamsungAccountResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 58
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->handleGetSamsungAccessToken(ILandroid/content/Intent;)V

    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x118 -> :sswitch_1
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->showSamsungLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const v1, 0x7f0600b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "samsungLoginButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    new-instance v1, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$1;-><init>(Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .end local v0    # "samsungLoginButton":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected resetSamsungLogin()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
