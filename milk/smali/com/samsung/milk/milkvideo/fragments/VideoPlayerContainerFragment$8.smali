.class Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$8;
.super Ljava/lang/Object;
.source "VideoPlayerContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->onVideoTransitionEvent(Lcom/samsung/milk/milkvideo/events/VideoTransitionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

.field final synthetic val$video:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$8;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$8;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$8;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$8;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 501
    return-void
.end method
