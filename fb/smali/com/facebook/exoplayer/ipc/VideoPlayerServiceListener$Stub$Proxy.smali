.class Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "peer="

# interfaces
.implements Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    .line 177
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 295
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 297
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(IIF)V
    .locals 5

    .prologue
    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 237
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 241
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 242
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(ILcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;IIJ)V
    .locals 5

    .prologue
    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 254
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    if-eqz p2, :cond_0

    .line 257
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    :goto_0
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 267
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 208
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    if-eqz p1, :cond_0

    .line 210
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 216
    :goto_0
    if-eqz p2, :cond_1

    .line 217
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 223
    :goto_1
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 225
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 221
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 279
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 283
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    return-void

    .line 286
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Ljava/util/List;J[Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;",
            ">;J[",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;",
            "Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 323
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 325
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 326
    const/4 v0, 0x0

    invoke-virtual {v1, p4, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 327
    if-eqz p5, :cond_1

    .line 328
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p5, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 335
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 336
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p5, v2}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->a(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(ZII)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 191
    :try_start_0
    const-string v4, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 196
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 201
    return-void

    :cond_0
    move v0, v1

    .line 192
    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 309
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 311
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    return-void

    .line 314
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
