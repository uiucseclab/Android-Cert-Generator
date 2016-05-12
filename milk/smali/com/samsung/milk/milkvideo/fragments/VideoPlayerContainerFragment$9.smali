.class Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$9;
.super Ljava/lang/Object;
.source "VideoPlayerContainerFragment.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseListener;


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
    .line 694
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$9;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoClose()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$9;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->closeVideoPlayer(Z)V
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;Z)V

    .line 698
    return-void
.end method
