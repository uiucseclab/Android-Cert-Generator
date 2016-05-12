.class Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$1;
.super Ljava/lang/Object;
.source "SignoutConfirmationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 35
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 39
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 40
    return-void
.end method
