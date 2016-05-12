.class public final Lcom/facebook/exoplayer/ipc/VideoPlayRequest;
.super Ljava/lang/Object;
.source "percent_buffered"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/String;


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/net/Uri;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->g:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest$1;

    invoke-direct {v0}, Lcom/facebook/exoplayer/ipc/VideoPlayRequest$1;-><init>()V

    sput-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->a:Landroid/net/Uri;

    .line 50
    iput-object p2, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->b:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->c:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->d:Landroid/net/Uri;

    .line 54
    iput-object p5, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->e:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-class v0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->a:Landroid/net/Uri;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->d:Landroid/net/Uri;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->e:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    .line 67
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->g:Ljava/lang/String;

    const-string v2, "Failed to close manifestFd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->f:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
