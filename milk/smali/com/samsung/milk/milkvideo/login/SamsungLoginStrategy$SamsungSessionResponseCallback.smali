.class Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;
.super Ljava/lang/Object;
.source "SamsungLoginStrategy.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungSessionResponseCallback"
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
.field private final accessToken:Ljava/lang/String;

.field private final apiServiceUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "apiServiceUrl"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->accessToken:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->apiServiceUrl:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 7
    .param p1, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "showRetryToast":Z
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I

    move-result v3

    const/16 v4, 0x1006

    if-ne v3, v4, :cond_0

    .line 119
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v3}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/models/Session;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->buildRefreshAccessTokenIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    :goto_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;

    invoke-direct {v4, v1}, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 133
    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I

    move-result v3

    const/16 v4, 0x1a6

    if-ne v3, v4, :cond_1

    .line 123
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    .line 124
    .local v0, "body":Lcom/samsung/milk/milkvideo/api/SessionResponse;
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v2

    .line 125
    .local v2, "user":Lcom/samsung/milk/milkvideo/models/User;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v3}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->access$000(Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v4}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->hideNotification(Landroid/app/Activity;)V

    .line 126
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->accessToken:Ljava/lang/String;

    const-string v5, "samsung"

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->apiServiceUrl:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->requestMoreDataFromUser(Lcom/samsung/milk/milkvideo/models/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v0    # "body":Lcom/samsung/milk/milkvideo/api/SessionResponse;
    .end local v2    # "user":Lcom/samsung/milk/milkvideo/models/User;
    :cond_1
    const/4 v1, 0x1

    .line 129
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->resetSamsungLogin()V

    .line 130
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v3}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->access$000(Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    goto :goto_0
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V
    .locals 4
    .param p1, "sessionResponse"    # Lcom/samsung/milk/milkvideo/api/SessionResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->access$000(Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    .line 110
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->loginUser(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/models/Session;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInToSamsungAccount()V

    .line 112
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v2

    const-string v3, "samsung"

    invoke-direct {v1, v2, v3}, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Session;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 98
    check-cast p1, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$SamsungSessionResponseCallback;->success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V

    return-void
.end method
