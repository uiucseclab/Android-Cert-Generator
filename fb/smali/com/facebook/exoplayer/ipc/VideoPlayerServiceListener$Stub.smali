.class public abstract Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;
.super Landroid/os/Binder;
.source "peer="

# interfaces
.implements Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p0, p0, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 51
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->a(ZII)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 49
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    move-object v1, v0

    .line 69
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/MediaRenderer;

    .line 76
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->a(Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    move-object v1, v5

    .line 66
    goto :goto_2

    :cond_2
    move-object v0, v5

    .line 73
    goto :goto_3

    .line 83
    :sswitch_3
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 90
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->a(IIF)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    :sswitch_4
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    sget-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    move-object v3, v0

    .line 107
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v1, p0

    .line 112
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->a(ILcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;IIJ)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_3
    move-object v3, v5

    .line 104
    goto :goto_4

    .line 118
    :sswitch_5
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    :sswitch_6
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->a()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    :sswitch_7
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->b()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 143
    :sswitch_8
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 149
    sget-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    sget-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;

    move-object v5, v0

    :cond_4
    move-object v0, p0

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub;->a(Ljava/util/List;J[Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v5, :cond_5

    .line 160
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v5, p3, v8}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 164
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
