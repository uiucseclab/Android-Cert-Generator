.class Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;
.super Ljava/lang/Object;
.source "ApiErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

.field final synthetic val$cause:Lretrofit/RetrofitError;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;Lretrofit/RetrofitError;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->this$0:Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign_in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->this$0:Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

    # getter for: Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->access$000(Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;)Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->UNAUTHORIZED:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-direct {v2, v3}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->this$0:Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-virtual {v2}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v2

    # invokes: Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->isError(Lretrofit/client/Response;)Z
    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->access$100(Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;Lretrofit/client/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "error":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_6

    const-string v1, "SocketTimeoutException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ConnectException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 36
    :cond_4
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->this$0:Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

    # getter for: Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->access$000(Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;)Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->TIMEOUT_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-direct {v2, v3}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 34
    .end local v0    # "error":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 38
    .restart local v0    # "error":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;->this$0:Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

    # getter for: Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->access$000(Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;)Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;

    sget-object v3, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-direct {v2, v3}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
