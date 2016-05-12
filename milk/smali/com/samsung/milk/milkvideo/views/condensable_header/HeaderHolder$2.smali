.class Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$2;
.super Lcom/samsung/milk/milkvideo/utils/BaseAnimatorListener;
.source "HeaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->createHeaderShowAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

.field final synthetic val$header:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$2;->this$0:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$2;->val$header:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/BaseAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder$2;->val$header:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void
.end method
