.class Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$1;
.super Ljava/lang/Object;
.source "YouTubeWebPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$1;->this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$1;->this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoReady:Z

    .line 290
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$1;->this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->notifyVideoReadyToPlay()V

    .line 291
    return-void
.end method
