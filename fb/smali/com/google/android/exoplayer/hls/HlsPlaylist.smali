.class public abstract Lcom/google/android/exoplayer/hls/HlsPlaylist;
.super Ljava/lang/Object;
.source "mqtt/connect_state"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->g:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->h:I

    .line 32
    return-void
.end method
