.class Lcom/facebook/video/view/TextureViewImplementation$SurfaceListener;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewImplementation;

.field private final b:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$SurfaceListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/facebook/video/view/TextureViewImplementation$SurfaceListener;->b:Landroid/media/MediaPlayer;

    .line 242
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$SurfaceListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {v0, p1}, Lcom/facebook/video/view/TextureViewImplementation;->a(Landroid/graphics/SurfaceTexture;)V

    .line 248
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$SurfaceListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {v0}, Lcom/facebook/video/view/TextureViewImplementation;->c()V

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method
