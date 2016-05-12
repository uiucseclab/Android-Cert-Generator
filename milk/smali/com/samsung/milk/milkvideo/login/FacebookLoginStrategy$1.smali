.class Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;
.super Ljava/lang/Object;
.source "FacebookLoginStrategy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookInternalLoginButton:Lcom/facebook/widget/LoginButton;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$100(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)Lcom/facebook/widget/LoginButton;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    new-instance v1, Lcom/facebook/widget/LoginButton;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v2}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/widget/LoginButton;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookInternalLoginButton:Lcom/facebook/widget/LoginButton;
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$102(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton;

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookInternalLoginButton:Lcom/facebook/widget/LoginButton;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$100(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)Lcom/facebook/widget/LoginButton;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->serviceProvider:Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;

    invoke-interface {v1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookInternalLoginButton:Lcom/facebook/widget/LoginButton;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$100(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)Lcom/facebook/widget/LoginButton;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "user_friends"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "email"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->facebookInternalLoginButton:Lcom/facebook/widget/LoginButton;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->access$100(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)Lcom/facebook/widget/LoginButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton;->performClick()Z

    .line 69
    return-void
.end method
