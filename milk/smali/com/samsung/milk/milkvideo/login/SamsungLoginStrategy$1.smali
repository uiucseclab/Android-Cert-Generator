.class Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$1;
.super Ljava/lang/Object;
.source "SamsungLoginStrategy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-static {}, Lcom/samsung/milk/milkvideo/utils/SamsungAccount;->buildAddAccountIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "addAccountIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 45
    return-void
.end method
