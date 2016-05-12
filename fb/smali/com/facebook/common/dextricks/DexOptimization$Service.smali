.class public final Lcom/facebook/common/dextricks/DexOptimization$Service;
.super Landroid/app/Service;
.source "turbo-compiler"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field private mOptThread:Ljava/lang/Thread;

.field private final mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mQueue:Ljava/util/ArrayList;

    .line 283
    return-void
.end method

.method private pumpQueue()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mOptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 103
    new-instance v1, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;

    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    invoke-direct {v1, p0, v0}, Lcom/facebook/common/dextricks/DexOptimization$Service$OptThread;-><init>(Lcom/facebook/common/dextricks/DexOptimization$Service;Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 105
    iput-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mOptThread:Ljava/lang/Thread;

    .line 107
    :cond_0
    return-void
.end method

.method private stopAllWork()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mOptThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mOptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mOptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mOptThread:Ljava/lang/Thread;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->replyTo:Landroid/os/Messenger;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/facebook/common/dextricks/DexOptimization$Service;->sendOptReply(Landroid/os/Messenger;I)V

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x38e3010b

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 72
    const-string v1, "optsvc created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/facebook/common/dextricks/DexOptimization$Service$ServiceHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0}, Lcom/facebook/common/dextricks/DexOptimization$Service$ServiceHandler;-><init>(Lcom/facebook/common/dextricks/DexOptimization$Service;)V

    iput-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mMessenger:Landroid/os/Messenger;

    .line 75
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x5b2870c9

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x45e51e50

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 150
    const-string v1, "optsvc being shut down"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexOptimization$Service;->stopAllWork()V

    .line 152
    iput-object v4, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object v4, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mMessenger:Landroid/os/Messenger;

    .line 154
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 155
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x6ca9131c

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public final onOptThreadDone(Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;)V
    .locals 2

    .prologue
    .line 137
    const-string v0, "optsvc opt thread finished"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mOptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mOptThread:Ljava/lang/Thread;

    .line 144
    iget v0, p1, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;->startId:I

    invoke-virtual {p0, v0}, Lcom/facebook/common/dextricks/DexOptimization$Service;->stopSelf(I)V

    .line 145
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexOptimization$Service;->pumpQueue()V

    .line 146
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x3c975f21

    invoke-static {v5, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 79
    if-nez p1, :cond_0

    .line 80
    const-string v1, "optsvc received null intent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x6870058c

    invoke-static {v5, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 98
    :goto_0
    return v5

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "com.facebook.dexopt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string v1, "optsvc received opt intent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Service;->mQueue:Ljava/util/ArrayList;

    new-instance v2, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;

    const-string v3, "optdata"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/facebook/common/dextricks/DexOptimization$Service$OptWork;-><init>(Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexOptimization$Service;->pumpQueue()V

    .line 98
    :goto_1
    const v1, -0x6c5b00b2

    invoke-static {v1, v0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->d(II)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v2, "com.facebook.dexopt-cancel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    const-string v1, "optsvc received optimization-cancel intent: shutting down"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexOptimization$Service;->stopAllWork()V

    .line 93
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexOptimization$Service;->stopSelf()V

    goto :goto_1

    .line 95
    :cond_2
    const-string v2, "optsvc received intent with unknown action %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final sendOptReply(Landroid/os/Messenger;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "cannot send MSG_OPT_DONE to client"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
