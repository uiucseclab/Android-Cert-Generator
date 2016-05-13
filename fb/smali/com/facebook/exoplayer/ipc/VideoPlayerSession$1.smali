.class final Lcom/facebook/exoplayer/ipc/VideoPlayerSession$1;
.super Ljava/lang/Object;
.source "paused"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/exoplayer/ipc/VideoPlayerSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    .line 26
    new-instance v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-direct {v0, p1}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    .line 30
    new-array v0, p1, [Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    return-object v0
.end method
