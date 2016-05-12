.class Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$2;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->addTitleViewToLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 112
    return-void
.end method
