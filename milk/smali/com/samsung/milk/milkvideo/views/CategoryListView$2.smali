.class Lcom/samsung/milk/milkvideo/views/CategoryListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CategoryListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/CategoryListView;->animateAlpha(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/CategoryListView;

.field final synthetic val$alpha:F


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/CategoryListView;F)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;->this$0:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    iput p2, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;->val$alpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 242
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;->val$alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;->this$0:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setVisibility(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 235
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;->val$alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;->this$0:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setVisibility(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 228
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;->val$alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$2;->this$0:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->setVisibility(I)V

    .line 231
    :cond_0
    return-void
.end method
