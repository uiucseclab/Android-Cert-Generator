.class Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$10;
.super Ljava/lang/Object;
.source "VideoPlayerContainerFragment.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->showCloseVideoDialog()V
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
    .line 699
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCloseCancel()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->videoInfoView:Lcom/samsung/milk/milkvideo/views/VideoInfoView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$500(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->resumeVideo()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$400(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V

    .line 705
    :cond_0
    return-void
.end method
