.class Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$2;
.super Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lretrofit/client/Response;)V
    .locals 3
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->startNextActivity()V

    .line 105
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 106
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, 0x10a0000

    const v2, 0x7f04000b

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 108
    :cond_0
    return-void
.end method
