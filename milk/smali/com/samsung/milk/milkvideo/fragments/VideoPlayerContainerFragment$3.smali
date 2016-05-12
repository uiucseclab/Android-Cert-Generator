.class Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$3;
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
    .line 201
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoActionContainer:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->reset()V

    .line 205
    return-void
.end method
