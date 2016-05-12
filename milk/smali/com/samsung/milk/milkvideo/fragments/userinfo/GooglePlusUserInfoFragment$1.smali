.class Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment$1;
.super Ljava/lang/Object;
.source "GooglePlusUserInfoFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;->createAccount()V
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
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 1
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;->createFailure()V

    .line 33
    return-void
.end method

.method public success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V
    .locals 3
    .param p1, "sessionResponse"    # Lcom/samsung/milk/milkvideo/api/SessionResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInToGooglePlus()V

    .line 25
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;->loginCoordinator:Lcom/samsung/milk/milkvideo/services/LoginCoordinator;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/SessionResponse;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->loginUser(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/models/Session;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;->createSuccess()V

    .line 28
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 21
    check-cast p1, Lcom/samsung/milk/milkvideo/api/SessionResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment$1;->success(Lcom/samsung/milk/milkvideo/api/SessionResponse;Lretrofit/client/Response;)V

    return-void
.end method
