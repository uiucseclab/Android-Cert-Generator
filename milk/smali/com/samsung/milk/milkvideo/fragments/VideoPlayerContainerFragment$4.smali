.class Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;
.super Lcom/samsung/milk/milkvideo/utils/BaseAnimationListener;
.source "VideoPlayerContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->setUpAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->reset()V

    .line 218
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->ooyalaVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->ooyalaVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->youTubeVideoPlayerFragment:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 225
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->fragmentRoot:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void
.end method
