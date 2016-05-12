.class Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;
.super Ljava/lang/Object;
.source "remove app %s"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

.field final synthetic b:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;->b:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;->a:Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;->b:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->c:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;->a:Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;->a(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 351
    return-void
.end method
