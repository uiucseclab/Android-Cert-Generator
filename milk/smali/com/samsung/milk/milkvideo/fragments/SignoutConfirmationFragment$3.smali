.class Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$3;
.super Lretrofit/ResponseCallback;
.source "SignoutConfirmationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->signout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    invoke-direct {p0}, Lretrofit/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 0
    .param p1, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 61
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 1
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->signout()V

    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendLogoutEvent()V

    .line 58
    return-void
.end method
