.class Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;
.super Ljava/lang/Thread;
.source "volume_increase"


# instance fields
.field private final a:Ljava/io/File;

.field private b:Lcom/facebook/analytics/appstatelogger/AppState;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/facebook/analytics/appstatelogger/AppState;Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->c:Z

    .line 259
    iput-boolean v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->d:Z

    .line 261
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->e:Ljava/lang/Object;

    .line 262
    iput-boolean v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->f:Z

    .line 264
    iput-object p2, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->a:Ljava/io/File;

    .line 265
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AppState;

    invoke-direct {v0, p1}, Lcom/facebook/analytics/appstatelogger/AppState;-><init>(Lcom/facebook/analytics/appstatelogger/AppState;)V

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->b:Lcom/facebook/analytics/appstatelogger/AppState;

    .line 266
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->f:Z

    .line 416
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 417
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 390
    monitor-enter p0

    .line 391
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->d:Z

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->c:Z

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 394
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-direct {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->b()V

    .line 397
    return-void

    .line 394
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/facebook/analytics/appstatelogger/AppState;Z)V
    .locals 1

    .prologue
    .line 400
    monitor-enter p0

    .line 401
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->c:Z

    .line 403
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AppState;

    invoke-direct {v0, p1}, Lcom/facebook/analytics/appstatelogger/AppState;-><init>(Lcom/facebook/analytics/appstatelogger/AppState;)V

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->b:Lcom/facebook/analytics/appstatelogger/AppState;

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 406
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    if-eqz p2, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->b()V

    .line 411
    :cond_0
    return-void

    .line 406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 273
    :try_start_0
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v2, "Attempting to open app state logging file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    sget-object v2, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v3, "Unable to create app state log directory: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    new-instance v2, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->a:Ljava/io/File;

    invoke-direct {v2, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 289
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->a(I)V

    .line 291
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v1, "Successfully opened app state logging file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 305
    :goto_1
    iget-object v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    :goto_2
    :try_start_3
    iget-boolean v4, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->f:Z

    .line 308
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->f:Z

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v6

    .line 311
    sub-long/2addr v6, v0

    .line 312
    const-wide/16 v8, 0x3e8

    sub-long v6, v8, v6

    .line 314
    if-nez v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    .line 316
    :try_start_4
    iget-object v4, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->e:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 317
    :catch_0
    move-exception v0

    .line 318
    :try_start_5
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v4, "Interrupted while sleeping"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 381
    :try_start_6
    invoke-virtual {v2}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v2, "Failed to close log file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 296
    :catch_2
    move-exception v0

    .line 297
    :goto_3
    :try_start_7
    sget-object v2, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v3, "Error opening app state logging file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 379
    if-eqz v1, :cond_1

    .line 381
    :try_start_8
    invoke-virtual {v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->b()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 382
    :catch_3
    move-exception v0

    .line 383
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v2, "Failed to close log file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 325
    :cond_3
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 328
    :try_start_a
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 329
    :goto_4
    :try_start_b
    iget-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->c:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v0, :cond_5

    .line 331
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4

    .line 332
    :catch_4
    move-exception v0

    .line 333
    :try_start_d
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for updated app state"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 381
    :try_start_e
    invoke-virtual {v2}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->b()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_0

    .line 382
    :catch_5
    move-exception v0

    .line 383
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v2, "Failed to close log file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 325
    :catchall_0
    move-exception v0

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 379
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v2, :cond_4

    .line 381
    :try_start_11
    invoke-virtual {v2}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->b()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 384
    :cond_4
    :goto_6
    throw v0

    .line 338
    :cond_5
    :try_start_12
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AppState;

    iget-object v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->b:Lcom/facebook/analytics/appstatelogger/AppState;

    invoke-direct {v0, v1}, Lcom/facebook/analytics/appstatelogger/AppState;-><init>(Lcom/facebook/analytics/appstatelogger/AppState;)V

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->c:Z

    .line 340
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 343
    const/4 v1, 0x2

    :try_start_13
    invoke-virtual {v2, v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->a(I)V

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    new-instance v3, Lcom/facebook/analytics/appstatelogger/AppStateLogger$BreakpadOutputStream;

    invoke-direct {v3}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$BreakpadOutputStream;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v2}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->a()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v3, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;

    invoke-direct {v3, v1}, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;-><init>(Ljava/util/ArrayList;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 351
    :try_start_14
    invoke-static {v3, v0}, Lcom/facebook/analytics/appstatelogger/AppStateSerializer;->a(Ljava/io/OutputStream;Lcom/facebook/analytics/appstatelogger/AppState;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 353
    :try_start_15
    invoke-virtual {v3}, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;->close()V

    .line 356
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->a(I)V

    .line 357
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v1, "Successfully dumped app state to log file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 362
    :goto_7
    :try_start_16
    iget-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->d:Z

    if-nez v0, :cond_6

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    move-result-wide v0

    goto/16 :goto_1

    .line 340
    :catchall_2
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 353
    :catchall_3
    move-exception v0

    :try_start_19
    invoke-virtual {v3}, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;->close()V

    throw v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 358
    :catch_6
    move-exception v0

    .line 359
    :try_start_1a
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v3, "Error dumping app state to log file"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 369
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->d:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v0, :cond_7

    .line 372
    const/4 v0, 0x4

    :try_start_1b
    invoke-virtual {v2, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->a(I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 381
    :cond_7
    :goto_8
    :try_start_1c
    invoke-virtual {v2}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->b()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_7

    goto/16 :goto_0

    .line 382
    :catch_7
    move-exception v0

    .line 383
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v2, "Failed to close log file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 373
    :catch_8
    move-exception v0

    .line 374
    :try_start_1d
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v3, "Error updating log file state when application crashed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_8

    .line 382
    :catch_9
    move-exception v1

    .line 383
    sget-object v2, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v3, "Failed to close log file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 379
    :catchall_4
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    .line 296
    :catch_a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3
.end method
