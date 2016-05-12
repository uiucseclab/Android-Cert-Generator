.class Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getUser(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->needsRetry:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$302(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;Z)Z

    .line 232
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->hideSpinner()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    .line 233
    return-void
.end method

.method public success(Lcom/samsung/milk/milkvideo/models/User;Lretrofit/client/Response;)V
    .locals 2
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iput-object p1, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    .line 218
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/User;->getProfileImageChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "use locally stored image instead"

    invoke-virtual {p1, v0}, Lcom/samsung/milk/milkvideo/models/User;->setIconUri(Ljava/lang/String;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->initMyProfile()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->hideSpinner()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->initUserProfile()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    goto :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 210
    check-cast p1, Lcom/samsung/milk/milkvideo/models/User;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;->success(Lcom/samsung/milk/milkvideo/models/User;Lretrofit/client/Response;)V

    return-void
.end method
