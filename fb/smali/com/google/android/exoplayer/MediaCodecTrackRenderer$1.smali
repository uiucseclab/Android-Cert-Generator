.class public Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;
.super Ljava/lang/Object;
.source "remote-uri"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

.field final synthetic b:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->b:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->a:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->b:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;->a:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;->a(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 902
    return-void
.end method
