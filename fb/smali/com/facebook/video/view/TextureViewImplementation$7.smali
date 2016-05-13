.class Lcom/facebook/video/view/TextureViewImplementation$7;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;


# instance fields
.field final synthetic a:Lcom/facebook/video/api/VideoCore$PlayingCallback;

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/video/view/TextureViewImplementation;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;Lcom/facebook/video/api/VideoCore$PlayingCallback;I)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iput-object p2, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->a:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    iput p3, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/video/api/VideoMetadata;)V
    .locals 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->b(Lcom/facebook/video/view/TextureViewImplementation;Z)Z

    .line 511
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iget v1, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->b:I

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->a(Lcom/facebook/video/view/TextureViewImplementation;I)I

    .line 512
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iget v1, v1, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 515
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->r:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->r:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    .line 517
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    const/4 v2, 0x0

    .line 39
    iput-object v2, v1, Lcom/facebook/video/view/TextureViewImplementation;->r:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    .line 518
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {v1, v0}, Lcom/facebook/video/view/TextureViewImplementation;->b(Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->a:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->a(Lcom/facebook/video/api/VideoCore$PlayingCallback;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->c:Lcom/facebook/video/view/TextureViewImplementation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->b(Lcom/facebook/video/view/TextureViewImplementation;Z)Z

    .line 502
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$7;->a:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    invoke-virtual {v0, p1}, Lcom/facebook/video/api/VideoCore$PlayingCallback;->a(Ljava/lang/Throwable;)V

    .line 503
    return-void
.end method
