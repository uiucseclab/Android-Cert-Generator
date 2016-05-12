.class Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$2;
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


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$2;->this$1:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->onComplete()V

    .line 323
    return-void
.end method
