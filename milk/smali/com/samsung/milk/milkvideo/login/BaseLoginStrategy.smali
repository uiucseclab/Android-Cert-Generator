.class public Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;
.super Ljava/lang/Object;
.source "BaseLoginStrategy.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoogleErrorDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 42
    return-void
.end method

.method public onCreate(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;)V
    .locals 1
    .param p1, "serviceProvider"    # Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    .prologue
    .line 32
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 33
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    return-void
.end method

.method public performIndirectFacebookLoginButtonClick()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected requestMoreDataFromUser(Lcom/samsung/milk/milkvideo/models/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "loginMethod"    # Ljava/lang/String;
    .param p4, "apiUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    .line 54
    .local v0, "currentUser":Lcom/samsung/milk/milkvideo/models/User;
    if-nez v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/services/LoginState;->setCurrentUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2, p3, p4}, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "currentUser":Lcom/samsung/milk/milkvideo/models/User;
    :cond_0
    return-void

    .line 57
    .restart local v0    # "currentUser":Lcom/samsung/milk/milkvideo/models/User;
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setEmail(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setFirstName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->setLastName(Ljava/lang/String;)V

    goto :goto_0
.end method
