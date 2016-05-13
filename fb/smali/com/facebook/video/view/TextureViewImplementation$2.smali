.class Lcom/facebook/video/view/TextureViewImplementation$2;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewImplementation;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$2;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$2;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return v2

    .line 340
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$2;->a:Lcom/facebook/video/view/TextureViewImplementation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->a(Z)V

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$2;->a:Lcom/facebook/video/view/TextureViewImplementation;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->a(Lcom/facebook/video/view/TextureViewImplementation;I)I

    .line 347
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$2;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {v0, v2}, Lcom/facebook/video/view/TextureViewImplementation;->a(Z)V

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
