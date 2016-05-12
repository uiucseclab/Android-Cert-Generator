.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener$1;
.super Ljava/lang/Object;
.source "ActionContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 343
    return-void
.end method
