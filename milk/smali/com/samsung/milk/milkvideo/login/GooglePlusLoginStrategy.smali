.class public Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
.super Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;
.source "GooglePlusLoginStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;,
        Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;,
        Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;
    }
.end annotation


# static fields
.field private static final DIALOG_PLAY_SERVICES_ERROR:I = 0x0

.field private static final GOOGLE_LOGIN_PROGRESS_KEY:Ljava/lang/String; = "google_login_progress"

.field private static final GOOGLE_STATE_DEFAULT:I = 0x0

.field private static final GOOGLE_STATE_IN_PROGRESS:I = 0x2

.field private static final GOOGLE_STATE_SIGN_IN:I = 0x1


# instance fields
.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private googleLoginButton:Landroid/view/View;

.field private googleLoginError:I

.field private googleLoginIntent:Landroid/app/PendingIntent;

.field private googleLoginState:I

.field private messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V
    .locals 0
    .param p1, "messageNotifier"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resolveGoogleSignInError()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resetGoogleLogin()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginError:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginError:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private buildGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;

    invoke-direct {v1, p0, v2}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleConnectionCallbacks;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleOnConnectionFailedListener;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-static {}, Lcom/google/android/gms/plus/Plus$PlusOptions;->builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->build()Lcom/google/android/gms/plus/Plus$PlusOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method private resetGoogleLogin()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I

    .line 147
    return-void
.end method

.method private resolveGoogleSignInError()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 163
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 179
    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I

    .line 180
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v7

    .line 183
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sign in intent could not be sent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/IntentSender$SendIntentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I

    .line 188
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 196
    .end local v7    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    invoke-virtual {v0, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private restoreGoogleLoginProgress(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    const-string v0, "google_login_progress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public getGoogleErrorDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginError:I

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginError:I

    const/16 v1, 0x3e7

    new-instance v2, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$2;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$2;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Problem with Google Plus"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    new-instance v2, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$3;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$3;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    .line 123
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 139
    :cond_0
    return-void

    .line 130
    :cond_1
    iput v2, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const-string v0, "google_login_progress"

    iget v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 78
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resetGoogleLogin()V

    .line 88
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v0, 0x7f06008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginButton:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->buildGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 58
    invoke-direct {p0, p2}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->restoreGoogleLoginProgress(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleLoginButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    return-void
.end method
