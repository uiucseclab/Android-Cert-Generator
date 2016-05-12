.class Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewImplementation;

.field private final b:Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->b:Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;

    .line 434
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 463
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 464
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a()V

    .line 439
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->d:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

    invoke-virtual {v0}, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a()V

    .line 440
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    .line 441
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->b:Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;

    new-instance v1, Lcom/facebook/video/view/TextureViewImplementation$MediaPlayerException;

    invoke-direct {v1, p2, p3}, Lcom/facebook/video/view/TextureViewImplementation$MediaPlayerException;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;->a(Ljava/lang/Throwable;)V

    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-virtual {p0}, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a()V

    .line 448
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->b(Lcom/facebook/video/view/TextureViewImplementation;I)I

    .line 449
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->x:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 450
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->y:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 451
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 452
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->g:Lcom/facebook/common/eventbus/TypedEventBus;

    sget-object v1, Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent;->a:Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/common/eventbus/TypedEventBus;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 454
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->k:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/video/server/VideoServer;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 455
    invoke-static {v0}, Lcom/facebook/video/server/VideoMimes;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 456
    new-instance v0, Lcom/facebook/video/api/VideoMetadata;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget v1, v1, Lcom/facebook/video/view/TextureViewImplementation;->l:I

    const-string v5, ""

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/video/api/VideoMetadata;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->b:Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;

    invoke-interface {v1, v0}, Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;->a(Lcom/facebook/video/api/VideoMetadata;)V

    .line 458
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation;->w:Lcom/facebook/video/api/playersession/VideoPlayerSessionManager;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget-object v1, v1, Lcom/facebook/video/view/TextureViewImplementation;->k:Landroid/net/Uri;

    invoke-static {v1}, Lcom/facebook/video/server/VideoServer;->a(Landroid/net/Uri;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a:Lcom/facebook/video/view/TextureViewImplementation;

    iget v2, v2, Lcom/facebook/video/view/TextureViewImplementation;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/video/api/playersession/VideoPlayerSessionManager;->a(II)V

    .line 459
    return-void
.end method
