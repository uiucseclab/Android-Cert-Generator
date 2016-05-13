.class public Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
.super Ljava/lang/Exception;
.source "nodex_uninstall_string"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 48
    const-string v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method
