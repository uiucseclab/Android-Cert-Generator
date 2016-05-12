.class public Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseNachosActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field accountManager:Landroid/accounts/AccountManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private events:Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field packageInfoUtil:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private isFacebookMobileLogin()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->packageInfoUtil:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;->isAppInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;

    invoke-direct {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 67
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    const/4 v5, 0x1

    .line 69
    .local v5, "shouldSignOutFromMilkVideo":Z
    const-string v4, ""

    .line 71
    .local v4, "loginSvcType":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToFacebook()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    const-string v4, "facebook"

    .line 73
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->isFacebookMobileLogin()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    .end local v4    # "loginSvcType":Ljava/lang/String;
    .end local v5    # "shouldSignOutFromMilkVideo":Z
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v4    # "loginSvcType":Ljava/lang/String;
    .restart local v5    # "shouldSignOutFromMilkVideo":Z
    :cond_1
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToGooglePlus()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 77
    const-string v4, "google"

    .line 82
    :cond_2
    :goto_1
    move-object v1, p1

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 83
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 84
    const/4 v5, 0x0

    .line 89
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_3
    if-eqz v5, :cond_0

    .line 90
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/services/LoginState;->signout()V

    .line 91
    sget-object v6, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v1    # "arr$":[Landroid/accounts/Account;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToSamsungAccount()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    const-string v4, "osp"

    goto :goto_1

    .line 82
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "arr$":[Landroid/accounts/Account;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->accountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 35
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->events:Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 41
    new-instance v0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;-><init>(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->events:Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;

    .line 42
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->events:Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 45
    invoke-static {p0}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    const v1, 0x7f0800b8

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNotification(Landroid/app/Activity;IZLcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->hideNotification(Landroid/app/Activity;)V

    goto :goto_0
.end method
