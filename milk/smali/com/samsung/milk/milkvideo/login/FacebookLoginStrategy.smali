.class public Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;
.super Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;
.source "FacebookLoginStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$FacebookStatusCallback;
    }
.end annotation


# instance fields
.field private volatile currentlyLoggingIn:Z

.field private facebookInternalLoginButton:Lcom/facebook/widget/LoginButton;

.field private facebookLoginButton:Landroid/view/View;

.field private facebookLoginHelper:Lcom/facebook/UiLifecycleHelper;

.field protected facebookSessionCallback:Lcom/facebook/Session$StatusCallback;

.field private facebookSessionManager:Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

.field private final messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V
    .locals 2
    .param p1, "facebookSessionManager"    # Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;
    .param p2, "messageNotifier"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;-><init>()V

    .line 36
    new-instance v0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$FacebookStatusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$FacebookStatusCallback;-><init>(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookSessionCallback:Lcom/facebook/Session$StatusCallback;

    .line 39
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookSessionManager:Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

    .line 40
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)Lcom/facebook/widget/LoginButton;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookInternalLoginButton:Lcom/facebook/widget/LoginButton;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;
    .param p1, "x1"    # Lcom/facebook/widget/LoginButton;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookInternalLoginButton:Lcom/facebook/widget/LoginButton;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->currentlyLoggingIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->resetFacebookLogin()V

    return-void
.end method

.method private resetFacebookLogin()V
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookSessionManager:Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;->getActiveSession()Lcom/samsung/milk/milkvideo/login/FacebookSession;

    move-result-object v0

    .line 166
    .local v0, "session":Lcom/samsung/milk/milkvideo/login/FacebookSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/login/FacebookSession;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/login/FacebookSession;->closeAndClearTokenInformation()V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method protected attemptFacebookLogin(Ljava/lang/String;)V
    .locals 3
    .param p1, "facebookShortLivedAccessToken"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->currentlyLoggingIn:Z

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->currentlyLoggingIn:Z

    .line 128
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 130
    new-instance v0, Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;-><init>()V

    .line 131
    .local v0, "request":Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;
    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;->setFacebookShortLivedAccessToken(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 134
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    .line 135
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;-><init>(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->signInWithFacebook(Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;Lretrofit/Callback;)V

    .line 162
    .end local v0    # "request":Lcom/samsung/milk/milkvideo/api/FacebookAuthenticationRequest;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 76
    const v1, 0xface

    if-ne p1, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookSessionManager:Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;->getActiveSession()Lcom/samsung/milk/milkvideo/login/FacebookSession;

    move-result-object v0

    .line 78
    .local v0, "activeSession":Lcom/samsung/milk/milkvideo/login/FacebookSession;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/milk/milkvideo/login/FacebookSession;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    .end local v0    # "activeSession":Lcom/samsung/milk/milkvideo/login/FacebookSession;
    :cond_1
    return-void
.end method

.method public onCreate(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;)V
    .locals 3
    .param p1, "serviceProvider"    # Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->onCreate(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;)V

    .line 47
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    invoke-interface {p1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookSessionCallback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v0, v1, v2}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginHelper:Lcom/facebook/UiLifecycleHelper;

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 107
    return-void
.end method

.method protected onFacebookSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToFacebook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->attemptFacebookLogin(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookSessionManager:Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;->getActiveSession()Lcom/samsung/milk/milkvideo/login/FacebookSession;

    move-result-object v0

    .line 88
    .local v0, "facebookSession":Lcom/samsung/milk/milkvideo/login/FacebookSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/login/FacebookSession;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/login/FacebookSession;->getDelegate()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/login/FacebookSession;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->onFacebookSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 92
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->resetFacebookLogin()V

    .line 102
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookSessionManager:Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;->getActiveSession()Lcom/samsung/milk/milkvideo/login/FacebookSession;

    move-result-object v0

    .line 53
    .local v0, "session":Lcom/samsung/milk/milkvideo/login/FacebookSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/login/FacebookSession;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/login/FacebookSession;->closeAndClearTokenInformation()V

    .line 57
    :cond_0
    const v1, 0x7f060089

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginButton:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginButton:Landroid/view/View;

    new-instance v2, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;-><init>(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_1
    return-void
.end method

.method public performIndirectFacebookLoginButtonClick()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookLoginButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 117
    return-void
.end method
