.class Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;
.super Ljava/lang/Object;
.source "remote-uri"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/media/MediaCodec$CryptoException;

.field final synthetic b:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;->b:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;->a:Landroid/media/MediaCodec$CryptoException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;->b:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;->a:Landroid/media/MediaCodec$CryptoException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;->a(Landroid/media/MediaCodec$CryptoException;)V

    .line 913
    return-void
.end method
