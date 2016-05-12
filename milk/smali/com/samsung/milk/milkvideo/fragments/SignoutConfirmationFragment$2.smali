.class Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$2;
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
    .line 44
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->signout()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;)V

    .line 48
    return-void
.end method
