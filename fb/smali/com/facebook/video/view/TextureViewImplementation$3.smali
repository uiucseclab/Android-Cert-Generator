.class Lcom/facebook/video/view/TextureViewImplementation$3;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewImplementation;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$3;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$3;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->l:I

    if-gtz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$3;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->b(Lcom/facebook/video/view/TextureViewImplementation;I)I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$3;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {v0}, Lcom/facebook/video/view/TextureViewImplementation;->d()V

    .line 364
    return-void
.end method
