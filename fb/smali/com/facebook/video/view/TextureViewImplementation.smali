.class public Lcom/facebook/video/view/TextureViewImplementation;
.super Ljava/lang/Object;
.source "onPageFinished %s"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/video/api/VideoCore$Implementation",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

.field private final e:Lcom/facebook/video/view/TextureViewHolder;

.field public final f:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

.field public final g:Lcom/facebook/common/eventbus/TypedEventBus;

.field private final h:Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;

.field public final i:Z

.field private final j:Z

.field public k:Landroid/net/Uri;

.field public l:I

.field public m:Landroid/media/MediaPlayer;

.field private n:Landroid/view/Surface;

.field private o:Z

.field public p:I

.field private q:Z

.field public r:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

.field private s:Z

.field public t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

.field private u:Z

.field public v:I

.field public w:Lcom/facebook/video/api/playersession/VideoPlayerSessionManager;

.field public final x:Landroid/media/MediaPlayer$OnInfoListener;

.field public final y:Landroid/media/MediaPlayer$OnCompletionListener;

.field public final z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/facebook/video/view/TextureViewImplementation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/view/TextureViewImplementation;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/video/view/TextureViewHolder;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Lcom/facebook/common/eventbus/TypedEventBus;ZZLcom/facebook/video/api/playersession/VideoPlayerSessionManager;Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Lcom/facebook/video/view/TextureViewImplementation$2;

    invoke-direct {v0, p0}, Lcom/facebook/video/view/TextureViewImplementation$2;-><init>(Lcom/facebook/video/view/TextureViewImplementation;)V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->x:Landroid/media/MediaPlayer$OnInfoListener;

    .line 354
    new-instance v0, Lcom/facebook/video/view/TextureViewImplementation$3;

    invoke-direct {v0, p0}, Lcom/facebook/video/view/TextureViewImplementation$3;-><init>(Lcom/facebook/video/view/TextureViewImplementation;)V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->y:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 367
    new-instance v0, Lcom/facebook/video/view/TextureViewImplementation$4;

    invoke-direct {v0, p0}, Lcom/facebook/video/view/TextureViewImplementation$4;-><init>(Lcom/facebook/video/view/TextureViewImplementation;)V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 117
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->b:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/facebook/video/view/TextureViewImplementation;->e:Lcom/facebook/video/view/TextureViewHolder;

    .line 119
    iput-object p3, p0, Lcom/facebook/video/view/TextureViewImplementation;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 120
    iput-object p4, p0, Lcom/facebook/video/view/TextureViewImplementation;->f:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    .line 121
    iput-object p5, p0, Lcom/facebook/video/view/TextureViewImplementation;->g:Lcom/facebook/common/eventbus/TypedEventBus;

    .line 122
    iput-boolean p6, p0, Lcom/facebook/video/view/TextureViewImplementation;->i:Z

    .line 123
    iput-boolean p7, p0, Lcom/facebook/video/view/TextureViewImplementation;->j:Z

    .line 124
    iput-object p8, p0, Lcom/facebook/video/view/TextureViewImplementation;->w:Lcom/facebook/video/api/playersession/VideoPlayerSessionManager;

    .line 125
    iput-object p9, p0, Lcom/facebook/video/view/TextureViewImplementation;->h:Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;

    .line 126
    iput v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    .line 127
    iput-boolean v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->o:Z

    .line 128
    iput-boolean v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->u:Z

    .line 129
    new-instance v0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

    invoke-direct {v0, p0}, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;-><init>(Lcom/facebook/video/view/TextureViewImplementation;)V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->d:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/facebook/video/view/TextureViewImplementation;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    return p1
.end method

.method static synthetic b(Lcom/facebook/video/view/TextureViewImplementation;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->l:I

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->g:Lcom/facebook/common/eventbus/TypedEventBus;

    sget-object v1, Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent;->a:Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/common/eventbus/TypedEventBus;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 207
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    .line 208
    invoke-direct {p0}, Lcom/facebook/video/view/TextureViewImplementation;->f()V

    .line 212
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->e:Lcom/facebook/video/view/TextureViewHolder;

    invoke-virtual {v0}, Lcom/facebook/video/view/TextureViewHolder;->a()Landroid/view/TextureView;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->a(Landroid/graphics/SurfaceTexture;)V

    .line 221
    :cond_0
    new-instance v1, Lcom/facebook/video/view/TextureViewImplementation$SurfaceListener;

    iget-object v2, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/video/view/TextureViewImplementation$SurfaceListener;-><init>(Lcom/facebook/video/view/TextureViewImplementation;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->g:Lcom/facebook/common/eventbus/TypedEventBus;

    sget-object v1, Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent;->a:Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/common/eventbus/TypedEventBus;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 224
    :cond_1
    return-void
.end method

.method private b(Landroid/net/Uri;Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 290
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->k:Landroid/net/Uri;

    .line 291
    iput-boolean v2, p0, Lcom/facebook/video/view/TextureViewImplementation;->s:Z

    .line 292
    invoke-direct {p0}, Lcom/facebook/video/view/TextureViewImplementation;->b()V

    .line 293
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->g:Lcom/facebook/common/eventbus/TypedEventBus;

    sget-object v1, Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent;->a:Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/common/eventbus/TypedEventBus;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 294
    new-instance v1, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;

    invoke-direct {v1, p0, p2}, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;-><init>(Lcom/facebook/video/view/TextureViewImplementation;Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;)V

    .line 295
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/facebook/video/view/TextureViewImplementation;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 299
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 300
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->w:Lcom/facebook/video/api/playersession/VideoPlayerSessionManager;

    invoke-static {p1}, Lcom/facebook/video/server/VideoServer;->a(Landroid/net/Uri;)I

    move-result v2

    new-instance v3, Lcom/facebook/video/api/playersession/MediaPlayerSession;

    iget-object v4, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/facebook/video/view/TextureViewImplementation;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/common/callercontext/CallerContext;->a(Landroid/content/Context;)Lcom/facebook/common/callercontext/CallerContext;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/facebook/video/api/playersession/MediaPlayerSession;-><init>(Landroid/media/MediaPlayer;Lcom/facebook/common/callercontext/CallerContext;)V

    invoke-virtual {v0, v2, v3}, Lcom/facebook/video/api/playersession/VideoPlayerSessionManager;->a(ILcom/facebook/video/api/playersession/VideoPlayerSessionBase;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v1}, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a()V

    .line 306
    invoke-interface {p2, v0}, Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 307
    :catch_1
    move-exception v0

    .line 309
    invoke-virtual {v1}, Lcom/facebook/video/view/TextureViewImplementation$OnPrepareAndErrorListener;->a()V

    .line 310
    invoke-interface {p2, v0}, Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/video/view/TextureViewImplementation;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->q:Z

    return p1
.end method

.method private c(Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 150
    invoke-interface {p1}, Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;->bK_()V

    .line 164
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/video/view/TextureViewImplementation;->c()V

    .line 157
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->e:Lcom/facebook/video/view/TextureViewHolder;

    invoke-virtual {v0}, Lcom/facebook/video/view/TextureViewHolder;->b()V

    .line 159
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    .line 178
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/facebook/video/view/TextureViewImplementation$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/video/view/TextureViewImplementation$1;-><init>(Lcom/facebook/video/view/TextureViewImplementation;Landroid/media/MediaPlayer;Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V

    const v3, -0x668198f9

    invoke-static {v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 198
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 661
    iget-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->u:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 662
    :goto_0
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 664
    :cond_0
    return-void

    .line 661
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .prologue
    .line 578
    iget v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 582
    :goto_0
    if-gez v0, :cond_0

    .line 587
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->h:Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;

    sget-object v2, Lcom/facebook/video/view/TextureViewImplementation;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning a negative position pos: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", fixed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x0

    .line 592
    :cond_0
    return v0

    .line 578
    :cond_1
    iget v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 407
    iput p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->v:I

    .line 408
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->g:Lcom/facebook/common/eventbus/TypedEventBus;

    new-instance v1, Lcom/facebook/video/api/VideoEvents$BufferingUpdatedEvent;

    invoke-direct {v1, p1}, Lcom/facebook/video/api/VideoEvents$BufferingUpdatedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/common/eventbus/TypedEventBus;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 409
    return-void
.end method

.method public final a(ILcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->s:Z

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->k:Landroid/net/Uri;

    new-instance v1, Lcom/facebook/video/view/TextureViewImplementation$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/video/view/TextureViewImplementation$6;-><init>(Lcom/facebook/video/view/TextureViewImplementation;Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;I)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->b(Landroid/net/Uri;Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;)V

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_1
    iput p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    .line 485
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 486
    invoke-interface {p2}, Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;->bK_()V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->n:Landroid/view/Surface;

    .line 270
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->n:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 271
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 272
    return-void
.end method

.method public final a(Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->k:Landroid/net/Uri;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    .line 144
    invoke-direct {p0, p1}, Lcom/facebook/video/view/TextureViewImplementation;->c(Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V

    .line 145
    return-void
.end method

.method public final a(Lcom/facebook/video/api/VideoCore$PlayingCallback;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 493
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->s:Z

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->q:Z

    .line 496
    iget v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    .line 497
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->k:Landroid/net/Uri;

    new-instance v2, Lcom/facebook/video/view/TextureViewImplementation$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/video/view/TextureViewImplementation$7;-><init>(Lcom/facebook/video/view/TextureViewImplementation;Lcom/facebook/video/api/VideoCore$PlayingCallback;I)V

    invoke-direct {p0, v1, v2}, Lcom/facebook/video/view/TextureViewImplementation;->b(Landroid/net/Uri;Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;)V

    .line 531
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->e:Lcom/facebook/video/view/TextureViewHolder;

    invoke-virtual {v0}, Lcom/facebook/video/view/TextureViewHolder;->d()V

    .line 526
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    .line 527
    iput-boolean v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->o:Z

    .line 528
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 529
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->d:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

    invoke-virtual {v0}, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->b()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;)V
    .locals 1

    .prologue
    .line 38
    check-cast p1, Landroid/net/Uri;

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/facebook/video/view/TextureViewImplementation;->b(Landroid/net/Uri;Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;)V

    .line 287
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->o:Z

    if-ne v0, p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iput-boolean p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->o:Z

    .line 319
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    if-eqz v0, :cond_0

    .line 320
    iget-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->o:Z

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    invoke-virtual {v0}, Lcom/facebook/video/api/VideoCore$PlayingCallback;->bL_()V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    invoke-virtual {v0}, Lcom/facebook/video/api/VideoCore$PlayingCallback;->bM_()V

    goto :goto_0
.end method

.method public final b(Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V
    .locals 6

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->q:Z

    if-eqz v0, :cond_0

    .line 537
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation;->r:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    .line 566
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->d:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

    invoke-virtual {v0}, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a()V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    .line 544
    iget v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    .line 547
    iget v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    if-gez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->h:Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;

    sget-object v1, Lcom/facebook/video/view/TextureViewImplementation;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fxning a negative position on pause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 559
    .line 573
    iget-boolean v4, p0, Lcom/facebook/video/view/TextureViewImplementation;->i:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/facebook/video/view/TextureViewImplementation;->v:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    if-eqz v0, :cond_2

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->s:Z

    .line 561
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 562
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->w:Lcom/facebook/video/api/playersession/VideoPlayerSessionManager;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->k:Landroid/net/Uri;

    invoke-static {v1}, Lcom/facebook/video/server/VideoServer;->a(Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/video/api/playersession/VideoPlayerSessionManager;->a(I)V

    .line 565
    :cond_2
    invoke-interface {p1}, Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;->bK_()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->n:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->n:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 278
    iput-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->n:Landroid/view/Surface;

    .line 279
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 281
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    if-eqz v0, :cond_0

    .line 378
    iget v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->l:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    .line 379
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    iget v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->p:I

    invoke-virtual {v0, v1}, Lcom/facebook/video/api/VideoCore$PlayingCallback;->a(I)V

    .line 382
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    .line 383
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->d:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

    invoke-virtual {v1}, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a()V

    .line 384
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->t:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    .line 385
    iget-boolean v1, p0, Lcom/facebook/video/view/TextureViewImplementation;->j:Z

    if-eqz v1, :cond_1

    .line 387
    new-instance v1, Lcom/facebook/video/view/TextureViewImplementation$5;

    invoke-direct {v1, p0, v0}, Lcom/facebook/video/view/TextureViewImplementation$5;-><init>(Lcom/facebook/video/view/TextureViewImplementation;Lcom/facebook/video/api/VideoCore$PlayingCallback;)V

    invoke-direct {p0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->c(Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/video/api/VideoCore$PlayingCallback;->c()V

    goto :goto_0
.end method
