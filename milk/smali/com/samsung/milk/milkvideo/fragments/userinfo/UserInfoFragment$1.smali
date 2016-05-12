.class Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$1;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 127
    return-void
.end method
