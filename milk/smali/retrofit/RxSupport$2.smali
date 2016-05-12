.class Lretrofit/RxSupport$2;
.super Ljava/lang/Object;
.source "RxSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RxSupport;->getRunnable(Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RxSupport;

.field final synthetic val$interceptorTape:Lretrofit/RequestInterceptorTape;

.field final synthetic val$invoker:Lretrofit/RxSupport$Invoker;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lretrofit/RxSupport;Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit/RxSupport;

    .prologue
    .line 49
    iput-object p1, p0, Lretrofit/RxSupport$2;->this$0:Lretrofit/RxSupport;

    iput-object p2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    iput-object p3, p0, Lretrofit/RxSupport$2;->val$invoker:Lretrofit/RxSupport$Invoker;

    iput-object p4, p0, Lretrofit/RxSupport$2;->val$interceptorTape:Lretrofit/RequestInterceptorTape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$invoker:Lretrofit/RxSupport$Invoker;

    iget-object v3, p0, Lretrofit/RxSupport$2;->val$interceptorTape:Lretrofit/RequestInterceptorTape;

    invoke-interface {v2, v3}, Lretrofit/RxSupport$Invoker;->invoke(Lretrofit/RequestInterceptor;)Lretrofit/ResponseWrapper;

    move-result-object v1

    .line 56
    .local v1, "wrapper":Lretrofit/ResponseWrapper;
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    iget-object v3, v1, Lretrofit/ResponseWrapper;->responseBody:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v1    # "wrapper":Lretrofit/ResponseWrapper;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lretrofit/RetrofitError;
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    iget-object v3, p0, Lretrofit/RxSupport$2;->this$0:Lretrofit/RxSupport;

    # getter for: Lretrofit/RxSupport;->errorHandler:Lretrofit/ErrorHandler;
    invoke-static {v3}, Lretrofit/RxSupport;->access$300(Lretrofit/RxSupport;)Lretrofit/ErrorHandler;

    move-result-object v3

    invoke-interface {v3, v0}, Lretrofit/ErrorHandler;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
