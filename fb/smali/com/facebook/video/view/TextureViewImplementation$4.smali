.class Lcom/facebook/video/view/TextureViewImplementation$4;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewImplementation;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$4;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$4;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {v0, p2}, Lcom/facebook/video/view/TextureViewImplementation;->a(I)V

    .line 372
    return-void
.end method
