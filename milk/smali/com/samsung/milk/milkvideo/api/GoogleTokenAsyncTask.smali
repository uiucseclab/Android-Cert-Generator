.class public Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;
.super Landroid/os/AsyncTask;
.source "GoogleTokenAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/gms/common/api/GoogleApiClient;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final googleLoginCallback:Lcom/samsung/milk/milkvideo/runnables/GoogleLoginResultCallback;

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;Lcom/samsung/milk/milkvideo/runnables/GoogleLoginResultCallback;)V
    .locals 1
    .param p1, "serviceProvider"    # Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;
    .param p2, "googleLoginCallback"    # Lcom/samsung/milk/milkvideo/runnables/GoogleLoginResultCallback;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->googleLoginCallback:Lcom/samsung/milk/milkvideo/runnables/GoogleLoginResultCallback;

    .line 30
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, [Lcom/google/android/gms/common/api/GoogleApiClient;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->doInBackground([Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    const/4 v2, 0x0

    .line 37
    :try_start_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v3}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 50
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 41
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 42
    sget-object v3, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v3, v4}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oauth2:https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.me"

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 45
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, "e":Lcom/google/android/gms/auth/GoogleAuthException;
    invoke-virtual {v1}, Lcom/google/android/gms/auth/GoogleAuthException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;->googleLoginCallback:Lcom/samsung/milk/milkvideo/runnables/GoogleLoginResultCallback;

    invoke-interface {v0, p1}, Lcom/samsung/milk/milkvideo/runnables/GoogleLoginResultCallback;->runOnUiThread(Ljava/lang/String;)V

    .line 56
    return-void
.end method
