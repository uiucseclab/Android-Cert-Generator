.class Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1$1;
.super Ljava/lang/Object;
.source "BaseNachosFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->fullscreenDecorView(Landroid/support/v4/app/FragmentActivity;)V

    .line 45
    return-void
.end method
