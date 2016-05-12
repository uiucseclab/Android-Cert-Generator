.class Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;
.super Ljava/lang/Object;
.source "tk"

# interfaces
.implements Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    .line 406
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)I
    .locals 5

    .prologue
    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 549
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    if-eqz p1, :cond_0

    .line 551
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 558
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 559
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 562
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 565
    return v0

    .line 555
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayRequest;)Lcom/facebook/exoplayer/ipc/VideoPlayerSession;
    .locals 5

    .prologue
    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 421
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 430
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 431
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    sget-object v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    return-object v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 492
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    if-eqz p1, :cond_0

    .line 494
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 501
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    return-void

    .line 498
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;J)V
    .locals 6

    .prologue
    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 618
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    if-eqz p1, :cond_0

    .line 620
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 626
    :goto_0
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 627
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 628
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 631
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 464
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    if-eqz p1, :cond_0

    .line 466
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 472
    :goto_0
    if-eqz p2, :cond_1

    .line 473
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 479
    :goto_1
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 480
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 485
    return-void

    .line 470
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 477
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;F)V
    .locals 5

    .prologue
    .line 709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 712
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 713
    if-eqz p1, :cond_0

    .line 714
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 720
    :goto_0
    if-eqz p2, :cond_1

    .line 721
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 727
    :goto_1
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 728
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 729
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 734
    return-void

    .line 718
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 725
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;Landroid/view/Surface;)V
    .locals 5

    .prologue
    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 741
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    if-eqz p1, :cond_0

    .line 743
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 749
    :goto_0
    if-eqz p2, :cond_1

    .line 750
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 756
    :goto_1
    if-eqz p3, :cond_2

    .line 757
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 763
    :goto_2
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 764
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 769
    return-void

    .line 747
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 754
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 761
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;Lcom/facebook/exoplayer/ipc/MediaRenderer;)V
    .locals 5

    .prologue
    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 513
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 514
    if-eqz p1, :cond_0

    .line 515
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 521
    :goto_0
    if-eqz p2, :cond_1

    .line 522
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 528
    :goto_1
    if-eqz p3, :cond_2

    .line 529
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 535
    :goto_2
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 536
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 541
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 526
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 533
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/MediaRenderer;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 683
    :try_start_0
    const-string v4, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    if-eqz p1, :cond_0

    .line 685
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 691
    :goto_0
    if-eqz p2, :cond_1

    .line 692
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lcom/facebook/exoplayer/ipc/MediaRenderer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 698
    :goto_1
    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 700
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 704
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 705
    return-void

    .line 689
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 704
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 696
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 698
    goto :goto_2
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;)V
    .locals 5

    .prologue
    .line 869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 872
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 873
    if-eqz p1, :cond_0

    .line 874
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 880
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 881
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 882
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 885
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 880
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 596
    :try_start_0
    const-string v4, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    if-eqz p1, :cond_0

    .line 598
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 604
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 606
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 610
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 611
    return-void

    .line 602
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 610
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 604
    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 449
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 451
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 452
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    return-void

    .line 455
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;)V
    .locals 5

    .prologue
    .line 891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 894
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 895
    if-eqz p1, :cond_0

    .line 896
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 902
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 903
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 904
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 909
    return-void

    .line 900
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 902
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 661
    :try_start_0
    const-string v4, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    if-eqz p1, :cond_0

    .line 663
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 669
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 671
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 676
    return-void

    .line 667
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 674
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 669
    goto :goto_1
.end method

.method public final b(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 573
    :try_start_0
    const-string v4, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 574
    if-eqz p1, :cond_0

    .line 575
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 581
    :goto_0
    iget-object v4, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 582
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 583
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 589
    return v0

    .line 579
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 587
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 583
    goto :goto_1
.end method

.method public final c(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 5

    .prologue
    .line 637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 640
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    if-eqz p1, :cond_0

    .line 642
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 648
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 649
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 654
    return-void

    .line 646
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final d(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 6

    .prologue
    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 777
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 778
    if-eqz p1, :cond_0

    .line 779
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 785
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 786
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 787
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 790
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 793
    return-wide v4

    .line 783
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final e(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 6

    .prologue
    .line 797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 801
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 802
    if-eqz p1, :cond_0

    .line 803
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 809
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 810
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 811
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 814
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    return-wide v4

    .line 807
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 814
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final f(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)J
    .locals 6

    .prologue
    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 825
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 826
    if-eqz p1, :cond_0

    .line 827
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 833
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 834
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 835
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 838
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    return-wide v4

    .line 831
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final g(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)I
    .locals 5

    .prologue
    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 849
    :try_start_0
    const-string v0, "com.facebook.exoplayer.ipc.VideoPlayerServiceApi"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    if-eqz p1, :cond_0

    .line 851
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerSession;->writeToParcel(Landroid/os/Parcel;I)V

    .line 857
    :goto_0
    iget-object v0, p0, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceApi$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 858
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 859
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 862
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 865
    return v0

    .line 855
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 862
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
