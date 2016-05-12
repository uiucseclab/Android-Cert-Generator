.class Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginServiceProvider;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/fragments/LoginFragment$ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginServiceProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/LoginFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/fragments/LoginFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginServiceProvider;->this$0:Lcom/samsung/milk/milkvideo/fragments/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/fragments/LoginFragment;Lcom/samsung/milk/milkvideo/fragments/LoginFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/fragments/LoginFragment;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/fragments/LoginFragment$1;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginServiceProvider;-><init>(Lcom/samsung/milk/milkvideo/fragments/LoginFragment;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginServiceProvider;->this$0:Lcom/samsung/milk/milkvideo/fragments/LoginFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginServiceProvider;->this$0:Lcom/samsung/milk/milkvideo/fragments/LoginFragment;

    return-object v0
.end method
