.class Lcom/google/android/exoplayer/ExoPlayerImpl$1;
.super Landroid/os/Handler;
.source "nodex_upgrading_message_string"


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/ExoPlayerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/ExoPlayerImpl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl$1;->a:Lcom/google/android/exoplayer/ExoPlayerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl$1;->a:Lcom/google/android/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/ExoPlayerImpl;->a(Landroid/os/Message;)V

    .line 70
    return-void
.end method
