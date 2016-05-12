.class Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$3;
.super Ljava/lang/Object;
.source "YouTubeWebPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

.field final synthetic val$state:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$3;->this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$3;->val$state:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$3;->this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/PlayerStateChangeEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$3;->val$state:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/PlayerStateChangeEvent;-><init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 332
    return-void
.end method
