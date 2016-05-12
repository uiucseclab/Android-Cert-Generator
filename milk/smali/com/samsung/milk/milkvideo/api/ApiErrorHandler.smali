.class public Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;
.super Ljava/lang/Object;
.source "ApiErrorHandler.java"

# interfaces
.implements Lretrofit/ErrorHandler;


# instance fields
.field private final eventBus:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "eventBus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->eventBus:Lcom/squareup/otto/Bus;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->eventBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;Lretrofit/client/Response;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;
    .param p1, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;->isError(Lretrofit/client/Response;)Z

    move-result v0

    return v0
.end method

.method private isError(Lretrofit/client/Response;)Z
    .locals 3
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v1, 0x1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    .line 49
    .local v0, "status":I
    const/16 v2, 0x190

    if-lt v0, v2, :cond_1

    const/16 v2, 0x258

    if-ge v0, v2, :cond_1

    .line 51
    .end local v0    # "status":I
    :cond_0
    :goto_0
    return v1

    .line 49
    .restart local v0    # "status":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "cause"    # Lretrofit/RetrofitError;

    .prologue
    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler$1;-><init>(Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-object p1
.end method
