.class public Lcom/facebook/video/view/TextureViewImplementation$1;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer;

.field final synthetic b:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

.field final synthetic c:Lcom/facebook/video/view/TextureViewImplementation;


# direct methods
.method public constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;Landroid/media/MediaPlayer;Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$1;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iput-object p2, p0, Lcom/facebook/video/view/TextureViewImplementation$1;->a:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/facebook/video/view/TextureViewImplementation$1;->b:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$1;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$1;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$1;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 187
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$1;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 189
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$1;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->f:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    new-instance v1, Lcom/facebook/video/view/TextureViewImplementation$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/video/view/TextureViewImplementation$1$1;-><init>(Lcom/facebook/video/view/TextureViewImplementation$1;)V

    invoke-virtual {v0, v1}, Lcom/facebook/common/executors/DefaultAndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method
