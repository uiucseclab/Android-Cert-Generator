.class public Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.super Lretrofit/ResponseCallback;
.source "BaseResponseCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lretrofit/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 14
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 0
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 10
    return-void
.end method
