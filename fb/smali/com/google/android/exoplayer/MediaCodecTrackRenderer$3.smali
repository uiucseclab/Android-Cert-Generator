.class Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;
.super Ljava/lang/Object;
.source "remote-uri"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 921
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;->d:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;->b:J

    iput-wide p5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;->d:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->j:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;->b:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;->c:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;->a(Ljava/lang/String;JJ)V

    .line 926
    return-void
.end method
