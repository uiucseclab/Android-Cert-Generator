.class Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$2;
.super Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.source "WelcomeFollowFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->val$doneButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 3
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->val$doneButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 72
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
