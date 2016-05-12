.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 996
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.2;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 999
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.2;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    # getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$100(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1000
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1005
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.2;"
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1010
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.2;"
    return-void
.end method
