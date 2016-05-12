.class Lcom/google/android/exoplayer/audio/AudioTrack$2;
.super Ljava/lang/Thread;
.source "nodex_not_enough_space_promote_sd_move_string"


# instance fields
.field final synthetic a:Landroid/media/AudioTrack;

.field final synthetic b:Lcom/google/android/exoplayer/audio/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$2;->b:Lcom/google/android/exoplayer/audio/AudioTrack;

    iput-object p2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$2;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$2;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 663
    return-void
.end method
