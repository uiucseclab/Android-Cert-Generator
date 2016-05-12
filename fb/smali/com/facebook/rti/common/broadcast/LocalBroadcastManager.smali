.class public Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "snapshot_reported"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->b:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->c:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->a:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$1;-><init>(Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->e:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;
    .locals 3

    .prologue
    .line 100
    sget-object v1, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    sget-object v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->g:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->g:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    .line 104
    :cond_0
    sget-object v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->g:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    if-gtz v0, :cond_1

    .line 296
    monitor-exit v1

    return-void

    .line 298
    :cond_1
    new-array v4, v0, [Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;

    .line 299
    iget-object v0, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 302
    :goto_0
    array-length v0, v4

    if-ge v3, v0, :cond_0

    .line 303
    aget-object v5, v4, v3

    move v1, v2

    .line 304
    :goto_1
    iget-object v0, v5, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 305
    iget-object v0, v5, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;

    iget-object v0, v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;->b:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->a:Landroid/content/Context;

    iget-object v7, v5, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;->a:Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 304
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 301
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 302
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 16

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v13

    .line 202
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v12, v1

    .line 211
    :goto_0
    if-eqz v12, :cond_0

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Resolving type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 217
    if-eqz v8, :cond_b

    .line 218
    if-eqz v12, :cond_1

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Action list: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    const/4 v10, 0x0

    .line 221
    const/4 v1, 0x0

    move v11, v1

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_8

    .line 222
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;

    move-object v9, v0

    .line 223
    if-eqz v12, :cond_2

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "Matching against filter "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v9, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;->a:Landroid/content/IntentFilter;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2
    iget-boolean v1, v9, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;->c:Z

    if-eqz v1, :cond_4

    .line 226
    if-eqz v12, :cond_7

    .line 227
    const-string v1, "LocalBroadcastManager"

    const-string v7, "  Filter\'s target already added"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    .line 221
    :goto_2
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move-object v10, v1

    goto :goto_1

    .line 209
    :cond_3
    const/4 v1, 0x0

    move v12, v1

    goto/16 :goto_0

    .line 232
    :cond_4
    iget-object v1, v9, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;->a:Landroid/content/IntentFilter;

    const-string v7, "LocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 239
    if-ltz v1, :cond_6

    .line 240
    if-eqz v12, :cond_5

    const-string v7, "LocalBroadcastManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "  Filter matched!  match=0x"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_5
    if-nez v10, :cond_c

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    :goto_3
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const/4 v7, 0x1

    iput-boolean v7, v9, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;->c:Z

    goto :goto_2

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 250
    :cond_6
    if-eqz v12, :cond_7

    .line 252
    packed-switch v1, :pswitch_data_0

    .line 257
    :try_start_1
    const-string v1, "unknown reason"

    .line 259
    :goto_4
    const-string v7, "LocalBroadcastManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "  Filter did not match: "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v1, v10

    goto :goto_2

    .line 253
    :pswitch_0
    const-string v1, "action"

    goto :goto_4

    .line 254
    :pswitch_1
    const-string v1, "category"

    goto :goto_4

    .line 255
    :pswitch_2
    const-string v1, "data"

    goto :goto_4

    .line 256
    :pswitch_3
    const-string v1, "type"

    goto :goto_4

    .line 264
    :cond_8
    if-eqz v10, :cond_b

    .line 265
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 266
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;->c:Z

    .line 265
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 268
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->d:Ljava/util/ArrayList;

    new-instance v2, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v10}, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    :cond_a
    const/4 v1, 0x1

    monitor-exit v13

    .line 276
    :goto_6
    return v1

    .line 275
    :cond_b
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    move-object v1, v10

    goto :goto_3

    .line 252
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
