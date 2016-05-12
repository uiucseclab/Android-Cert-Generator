.class final Lcom/facebook/common/dextricks/DexOptimization$Client$ClientHandler;
.super Landroid/os/Handler;
.source "turbo-compiler"


# instance fields
.field final synthetic this$0:Lcom/facebook/common/dextricks/DexOptimization$Client;


# direct methods
.method public constructor <init>(Lcom/facebook/common/dextricks/DexOptimization$Client;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexOptimization$Client$ClientHandler;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Client;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0x12c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 419
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 367
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 378
    const-string v0, "unknown"

    .line 380
    :goto_1
    const-string v1, "[c] received optimization-done message (result: %s)"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Client$ClientHandler;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Client;

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexOptimization$Client;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexOptimization$Client$ClientHandler;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Client;

    const v2, -0x4328ea6

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a(Landroid/content/Context;Landroid/content/ServiceConnection;I)V

    .line 383
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 389
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexOptimization$Client$ClientHandler;->this$0:Lcom/facebook/common/dextricks/DexOptimization$Client;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexOptimization$Client;->getMyImportance()I

    move-result v0

    .line 391
    const-string v1, "[c] current importance: %s threshold: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    if-lt v0, v6, :cond_1

    .line 398
    const-string v1, "[c] low importance: %s: restarting ourselves"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 402
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "somehow survived SIGKILL"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 369
    :pswitch_2
    const-string v0, "success"

    goto :goto_1

    .line 372
    :pswitch_3
    const-string v0, "failed"

    goto :goto_1

    .line 375
    :pswitch_4
    const-string v0, "interrupted due to service shutdown"

    goto :goto_1

    .line 405
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 406
    const-string v0, "[c] importance unknown: not scheduling further checks"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_2
    const-string v0, "[c] scheduling another importance check in %sms"

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/common/dextricks/DexOptimization$Client$ClientHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 414
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/common/dextricks/DexOptimization$Client$ClientHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
