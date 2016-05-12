.class Lcom/samsung/milk/milkvideo/views/CategoryListView$3;
.super Ljava/lang/Object;
.source "CategoryListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/CategoryListView;->smoothScrollTo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/CategoryListView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/CategoryListView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$3;->this$0:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryListView$3;->this$0:Lcom/samsung/milk/milkvideo/views/CategoryListView;

    # getter for: Lcom/samsung/milk/milkvideo/views/CategoryListView;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/CategoryListView;->access$000(Lcom/samsung/milk/milkvideo/views/CategoryListView;)Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 270
    return-void
.end method
