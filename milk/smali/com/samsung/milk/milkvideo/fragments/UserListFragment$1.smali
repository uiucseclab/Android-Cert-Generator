.class Lcom/samsung/milk/milkvideo/fragments/UserListFragment$1;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 54
    return-void
.end method
