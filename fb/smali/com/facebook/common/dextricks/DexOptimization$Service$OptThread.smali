.class final Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;
.super Ljava/lang/Thread;
.source "turbo-compiler"


# instance fields
.field private final mOw:Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

.field final synthetic this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/DexOptimization$Service;Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;)V
    .locals 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DexOpt:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 191
    iput-object p2, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->mOw:Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    .line 192
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 199
    const/4 v0, 0x0

    .line 200
    const/4 v1, 0x0

    .line 202
    const/4 v2, 0x0

    .line 203
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/tmp/com.facebook.dexopt.notification"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 204
    const/4 v2, 0x1

    move v4, v2

    .line 212
    :goto_0
    :try_start_0
    new-instance v2, Lcom/facebook/common/dextricks/SocketLock;

    const-string v5, "com.facebook.dexopt.lock"

    invoke-direct {v2, v5}, Lcom/facebook/common/dextricks/SocketLock;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/SocketLock;->tryAcquire()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    const-string v1, "another application is optimizing; waiting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 262
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_2
    move-object v3, v2

    move-object v2, v1

    .line 263
    :goto_3
    :try_start_2
    const-string v1, "optimization canceled for dex store %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->mOw:Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    iget-object v7, v7, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->dexStoreRoot:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v1, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    const/4 v0, 0x2

    .line 270
    :goto_4
    if-eqz v4, :cond_0

    .line 271
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 273
    :cond_0
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 276
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->mOw:Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    iget-object v2, v2, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/common/dextricks/DexOptimization$Service;->sendOptReply(Landroid/os/Messenger;I)V

    .line 277
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->mOw:Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void

    .line 218
    :cond_1
    :try_start_3
    const-string v1, "acquired xappLock"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    if-eqz v4, :cond_5

    .line 222
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexOptimization$Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    invoke-virtual {v1}, Lcom/facebook/common/dextricks/DexOptimization$Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Optimizing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Calibrating dexing frobs"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    invoke-virtual {v1}, Lcom/facebook/common/dextricks/DexOptimization$Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 230
    const v0, 0x108001d

    const-string v1, "Not Now"

    iget-object v6, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    const/4 v7, 0x1

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.facebook.dexopt-cancel"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    const-class v12, Lcom/facebook/common/dextricks/DexOptimization$Service;

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v5, v0, v1, v6}, Lcom/facebook/common/dextricks/DexOptimization$KitKatUtil;->addNotificatonAction(Landroid/app/Notification$Builder;ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Service;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/DexOptimization$Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 246
    new-instance v1, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread$1;

    invoke-direct {v1, p0, v5, v0}, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread$1;-><init>(Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;Landroid/app/Notification$Builder;Landroid/app/NotificationManager;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 255
    :goto_5
    :try_start_5
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->mOw:Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    iget-object v5, v5, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->dexStoreRoot:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/facebook/common/dextricks/DexStore;->findOpened(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore;

    move-result-object v3

    .line 256
    if-nez v3, :cond_3

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "no such opened dex store: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->mOw:Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    iget-object v5, v5, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->dexStoreRoot:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :catch_1
    move-exception v0

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_2

    .line 260
    :cond_3
    invoke-static {}, Lcom/facebook/common/dextricks/Prio;->lowest()Lcom/facebook/common/dextricks/Prio;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/facebook/common/dextricks/DexStore;->optimize(Lcom/facebook/common/dextricks/Prio;Lcom/facebook/common/dextricks/DexStore$ProgressListener;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 261
    const/4 v0, 0x0

    move-object v3, v1

    .line 268
    goto/16 :goto_4

    .line 265
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 266
    :goto_6
    :try_start_6
    const-string v1, "optimization failed for dex store %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;->mOw:Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    iget-object v7, v7, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->dexStoreRoot:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v1, v5}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 267
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 270
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_7
    if-eqz v4, :cond_4

    .line 271
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 273
    :cond_4
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 270
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_7

    .line 265
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v3, v1

    goto :goto_6

    .line 262
    :catch_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_3

    :catch_9
    move-exception v0

    move-object v3, v1

    goto/16 :goto_3

    :catch_a
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2

    :catch_b
    move-exception v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_5
    move-object v1, v3

    goto/16 :goto_5

    :cond_6
    move v4, v2

    goto/16 :goto_0
.end method
