.class public final Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;
.super Lcom/google/android/exoplayer/chunk/Format;
.source "pasp"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat$1;

    invoke-direct {v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat$1;-><init>()V

    sput-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/chunk/Format;)V
    .locals 11

    .prologue
    .line 63
    iget-object v1, p1, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/exoplayer/chunk/Format;->d:I

    iget v4, p1, Lcom/google/android/exoplayer/chunk/Format;->e:I

    iget v5, p1, Lcom/google/android/exoplayer/chunk/Format;->f:F

    iget v6, p1, Lcom/google/android/exoplayer/chunk/Format;->g:I

    iget v7, p1, Lcom/google/android/exoplayer/chunk/Format;->h:I

    iget v8, p1, Lcom/google/android/exoplayer/chunk/Format;->c:I

    iget-object v9, p1, Lcom/google/android/exoplayer/chunk/Format;->j:Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/exoplayer/chunk/Format;->i:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 35
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 102
    if-ne p0, p1, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    check-cast p1, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    .line 109
    iget-object v0, p1, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 88
    iget v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method
