.class public Lcom/samsung/milk/milkvideo/support/BaseCallback;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/samsung/milk/milkvideo/support/BaseCallback;, "Lcom/samsung/milk/milkvideo/support/BaseCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 14
    .local p0, "this":Lcom/samsung/milk/milkvideo/support/BaseCallback;, "Lcom/samsung/milk/milkvideo/support/BaseCallback<TT;>;"
    return-void
.end method

.method public success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p2, "response"    # Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Lcom/samsung/milk/milkvideo/support/BaseCallback;, "Lcom/samsung/milk/milkvideo/support/BaseCallback<TT;>;"
    .local p1, "aVoid":Ljava/lang/Object;, "TT;"
    return-void
.end method
