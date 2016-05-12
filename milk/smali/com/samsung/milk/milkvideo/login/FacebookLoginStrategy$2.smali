.class Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "FacebookLoginStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->attemptFacebookLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/api/SessionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

.field final synthetic val$facebookShortLivedAccessToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->val$facebookShortLivedAccessToken:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->currentlyLoggingIn:Z
    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$302(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Z)Z

    .line 151
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    const/16 v2, 0x1a6

    if-ne v1, v2, :cond_0

    .line 152
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    .line 153
    .local v0, "user":Lcom/samsung/milk/milkvideo/models/User;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->val$facebookShortLivedAccessToken:Ljava/lang/String;

    const-string v3, "facebook"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->requestMoreDataFromUser(Lcom/samsung/milk/milkvideo/models/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "user":Lcom/samsung/milk/milkvideo/models/User;
    :goto_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 159
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    # invokes: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->resetFacebookLogin()V
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$400(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)V

    .line 156
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$200(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    goto :goto_0
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V
    .locals 4
    .param p1, "sessionResponse"    # Lcom/samsung/milk/milkvideo/api/SessionResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$200(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    .line 139
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->loginUser(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/models/Session;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInToFacebook()V

    .line 141
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->currentlyLoggingIn:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$302(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Z)Z

    .line 142
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v2

    const-string v3, "facebook"

    invoke-direct {v1, v2, v3}, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Session;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 135
    check-cast p1, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$2;->success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V

    return-void
.end method
