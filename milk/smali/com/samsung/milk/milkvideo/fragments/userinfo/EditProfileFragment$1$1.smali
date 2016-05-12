.class Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "EditProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;->this$1:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 81
    const-string v1, "Couldn\'t save profile"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 84
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method public success(Lcom/samsung/milk/milkvideo/models/User;Lretrofit/client/Response;)V
    .locals 4
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;->this$1:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/services/LoginState;->setCurrentUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 71
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 66
    check-cast p1, Lcom/samsung/milk/milkvideo/models/User;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$1$1;->success(Lcom/samsung/milk/milkvideo/models/User;Lretrofit/client/Response;)V

    return-void
.end method
