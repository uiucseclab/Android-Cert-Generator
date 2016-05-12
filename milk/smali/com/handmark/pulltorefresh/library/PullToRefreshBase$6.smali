.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->hideViewTopLayout()V
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
    .line 1606
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.6;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 1610
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.6;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    # getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$400(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1611
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 1615
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.6;"
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 1619
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.6;"
    return-void
.end method
