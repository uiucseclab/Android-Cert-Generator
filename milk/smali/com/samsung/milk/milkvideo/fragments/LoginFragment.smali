.class public abstract Lcom/samsung/milk/milkvideo/fragments/LoginFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/LoginFragment$1;,
        Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginServiceProvider;,
        Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;,
        Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    }
.end annotation


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field facebookLoginStrategy:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "facebook"
    .end annotation
.end field

.field public featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field googleLoginStrategy:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "google"
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private loginStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;",
            ">;"
        }
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field samsungLoginStrategy:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "samsung"
    .end annotation
.end field

.field private serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginServiceProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginServiceProvider;-><init>(Lcom/samsung/milk/milkvideo/fragments/LoginFragment;Lcom/samsung/milk/milkvideo/fragments/LoginFragment$1;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    .line 45
    return-void
.end method

.method private setSpinnerVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "loadingSpinner":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public addLoginStrategy(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getGoogleErrorDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 142
    .local v2, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v2, p1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->getGoogleErrorDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 147
    .end local v2    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_1
    return-object v0
.end method

.method public getServiceProvider()Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 100
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 102
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->facebookLoginStrategy:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->addLoginStrategy(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;)V

    .line 59
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->samsungLoginStrategy:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->addLoginStrategy(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;)V

    .line 60
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->googleLoginStrategy:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->addLoginStrategy(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;)V

    .line 61
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 62
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->getServiceProvider()Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onCreate(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;)V

    goto :goto_0

    .line 64
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 114
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 115
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onDestroy()V

    goto :goto_0

    .line 118
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onDestroy()V

    .line 119
    return-void
.end method

.method protected onLoginFailure(Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;

    .prologue
    .line 159
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->setSpinnerVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 161
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;->shouldToast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    const v2, 0x7f0800a0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/milk/milkvideo/widgets/NachosToast;->show(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onLoginRequested(Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/LoginRequestedEvent;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->setSpinnerVisibility(I)V

    .line 152
    return-void
.end method

.method protected onLoginSuccess(Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;

    .prologue
    .line 155
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->setSpinnerVisibility(I)V

    .line 156
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onPause()V

    .line 107
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 108
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onPause()V

    goto :goto_0

    .line 110
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onResume()V

    .line 133
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 134
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onResume()V

    goto :goto_0

    .line 136
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 126
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1, p1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 128
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onStart()V

    .line 69
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 70
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onStart()V

    goto :goto_0

    .line 72
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onStop()V

    .line 77
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 78
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onStop()V

    goto :goto_0

    .line 80
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 86
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 88
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method

.method protected performIndirectFacebookLoginButtonClick()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->loginStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;

    .line 93
    .local v1, "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;->performIndirectFacebookLoginButtonClick()V

    goto :goto_0

    .line 95
    .end local v1    # "loginStrategy":Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    :cond_0
    return-void
.end method
