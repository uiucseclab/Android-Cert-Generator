.class public Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;
.super Lcom/samsung/milk/milkvideo/fragments/LoginFragment;
.source "SignupUserFragment.java"


# instance fields
.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private isFromActionContainer:Z

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/FeatureFlags;->showSamsungLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const v0, 0x7f03003c

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03003d

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onLoginFailure(Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->onLoginFailure(Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;)V

    .line 76
    return-void
.end method

.method public onLoginRequested(Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->onLoginRequested(Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;)V

    .line 70
    return-void
.end method

.method public onLoginSuccess(Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->onLoginSuccess(Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;->getAccountType()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->isFromActionContainer:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendLoginEvent(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Session;->isFirstTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;->start(Landroid/content/Context;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FromActionContainer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FromActionContainer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;->isFromActionContainer:Z

    .line 52
    :cond_0
    return-void
.end method
