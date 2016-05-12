.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$2;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$2;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->reset()V

    .line 192
    return-void
.end method
