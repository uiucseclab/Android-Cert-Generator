.class public abstract Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;
.super Ljava/lang/Object;
.source "removeListener"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field protected final c:Landroid/net/Uri;

.field public d:Landroid/content/Context;

.field protected final e:Landroid/os/Handler;

.field protected final f:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;

.field public final g:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;->c:Landroid/net/Uri;

    .line 41
    iput-object p2, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;->d:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;->e:Landroid/os/Handler;

    .line 43
    iput-object p4, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;->f:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecVideoTrackRenderer$EventListener;

    .line 44
    iput-object p5, p0, Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder;->g:Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$FBMediaCodecAudioTrackRenderer$EventListener;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;
.end method

.method public abstract a(Lcom/facebook/video/view/exo/ExoPlayerStreamRendererBuilder$BuilderCallback;)V
.end method
