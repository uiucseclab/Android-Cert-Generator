.class Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;
.super Ljava/lang/Object;
.source "SamsungAccountUserInfoFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->createAccount()V
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
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 1
    .param p1, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->createFailure()V

    .line 35
    return-void
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V
    .locals 3
    .param p1, "sessionResponse"    # Lcom/samsung/milk/milkvideo/api/SessionResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInToSamsungAccount()V

    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->loginUser(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/models/Session;)V

    .line 29
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->createSuccess()V

    .line 30
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 23
    check-cast p1, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment$1;->success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V

    return-void
.end method
