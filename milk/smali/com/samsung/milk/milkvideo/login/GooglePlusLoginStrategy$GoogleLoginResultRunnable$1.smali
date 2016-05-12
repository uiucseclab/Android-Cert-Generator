.class Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;
.super Ljava/lang/Object;
.source "GooglePlusLoginStrategy.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->runOnUiThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/samsung/milk/milkvideo/api/SessionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 7
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 230
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v3}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I

    move-result v3

    const/16 v4, 0x1a6

    if-ne v3, v4, :cond_2

    .line 236
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v2

    .line 237
    .local v2, "user":Lcom/samsung/milk/milkvideo/models/User;
    sget-object v3, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$000(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/models/User;->setEmail(Ljava/lang/String;)V

    .line 238
    sget-object v3, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$000(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/plus/People;->getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v1

    .line 239
    .local v1, "currentPerson":Lcom/google/android/gms/plus/model/people/Person;
    if-eqz v1, :cond_1

    .line 240
    invoke-interface {v1}, Lcom/google/android/gms/plus/model/people/Person;->getName()Lcom/google/android/gms/plus/model/people/Person$Name;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person$Name;->getGivenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/models/User;->setFirstName(Ljava/lang/String;)V

    .line 241
    invoke-interface {v1}, Lcom/google/android/gms/plus/model/people/Person;->getName()Lcom/google/android/gms/plus/model/people/Person$Name;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/models/User;->setLastName(Ljava/lang/String;)V

    .line 243
    :cond_1
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->val$token:Ljava/lang/String;

    const-string v5, "google"

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->requestMoreDataFromUser(Lcom/samsung/milk/milkvideo/models/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v1    # "currentPerson":Lcom/google/android/gms/plus/model/people/Person;
    .end local v2    # "user":Lcom/samsung/milk/milkvideo/models/User;
    :goto_1
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;

    invoke-direct {v4}, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # invokes: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resetGoogleLogin()V
    invoke-static {v3}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$200(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    .line 246
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v3}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$600(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    goto :goto_1
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V
    .locals 4
    .param p1, "sessionResponse"    # Lcom/samsung/milk/milkvideo/api/SessionResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$600(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    .line 223
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInToGooglePlus()V

    .line 224
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->loginUser(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/models/Session;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->this$1:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v2

    const-string v3, "google"

    invoke-direct {v1, v2, v3}, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Session;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 219
    check-cast p1, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;->success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V

    return-void
.end method
