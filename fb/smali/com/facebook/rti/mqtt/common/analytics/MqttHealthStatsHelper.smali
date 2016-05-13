.class public Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;
.super Ljava/lang/Object;
.source "st"


# instance fields
.field private final A:Ljava/util/concurrent/atomic/AtomicLong;

.field private final B:Ljava/util/concurrent/atomic/AtomicLong;

.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/telephony/TelephonyManager;

.field private final d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private final e:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field private final f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field private final i:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private final l:Ljava/util/concurrent/atomic/AtomicLong;

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private final n:Ljava/util/concurrent/atomic/AtomicLong;

.field private final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final v:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile w:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

.field private volatile x:Ljava/lang/String;

.field private volatile y:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

.field private final z:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/telephony/TelephonyManager;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/common/time/SystemClock;Lcom/facebook/rti/common/util/NonInjectProvider;)V
    .locals 2
    .param p8    # Lcom/facebook/rti/common/util/NonInjectProvider;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;",
            "Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;",
            "Lcom/facebook/rti/common/time/MonotonicClock;",
            "Lcom/facebook/rti/common/time/Clock;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->n:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->v:Ljava/util/concurrent/atomic/AtomicLong;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->z:Ljava/util/concurrent/atomic/AtomicLong;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->A:Ljava/util/concurrent/atomic/AtomicLong;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->B:Ljava/util/concurrent/atomic/AtomicLong;

    .line 170
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->c:Landroid/telephony/TelephonyManager;

    .line 173
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 174
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->e:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 175
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-direct {v0, p1, p6, p7}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/common/time/SystemClock;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->g:Ljava/lang/String;

    .line 179
    iput-object p6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->h:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 180
    iput-object p8, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->i:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 181
    return-void
.end method

.method private a(JJZ)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;
    .locals 19

    .prologue
    .line 224
    new-instance v3, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long v6, p1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long v10, p3, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->h:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v12, v4, v8

    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v14

    :goto_0
    if-eqz p5, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v15

    :goto_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v16

    :goto_2
    if-eqz p5, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v17

    :goto_3
    if-eqz p5, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v18

    :goto_4
    move-wide/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v18}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;-><init>(JJJJJIIIII)V

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v16

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    goto :goto_4
.end method

.method private static a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 468
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 469
    const/4 v0, 0x1

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    if-eqz v1, :cond_0

    .line 473
    const/4 v2, 0x0

    .line 477
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 480
    goto :goto_0

    .line 475
    :cond_0
    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1

    .line 481
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 406
    cmp-long v0, p1, v8

    if-gtz v0, :cond_1

    .line 421
    :cond_0
    return-void

    .line 410
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 412
    cmp-long v0, v2, v8

    if-nez v0, :cond_2

    move-wide v0, p1

    .line 417
    :goto_1
    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 415
    :cond_2
    long-to-double v0, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v4

    long-to-double v4, p1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-long v0, v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;
    .locals 1

    .prologue
    .line 366
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->WRITE_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    .line 377
    :goto_0
    return-object v0

    .line 368
    :cond_1
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_2

    .line 369
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->WRITE_EOF:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 370
    :cond_2
    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_3

    .line 371
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->WRITE_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 372
    :cond_3
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_4

    .line 373
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->WRITE_SSL:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 374
    :cond_4
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_5

    .line 375
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->WRITE_IO:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0

    .line 377
    :cond_5
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->WRITE_MISC:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    goto :goto_0
.end method

.method private h(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 215
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 216
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 217
    :goto_0
    return-wide v0

    .line 216
    :cond_0
    sub-long v0, p1, v2

    goto :goto_0
.end method

.method private i()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;
    .locals 8

    .prologue
    .line 238
    new-instance v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->A:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;-><init>(JJJ)V

    return-object v1
.end method

.method private j()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 245
    new-instance v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->w:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    if-nez v6, :cond_0

    move-object v6, v0

    :goto_0
    iget-object v7, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->x:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->y:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    if-nez v8, :cond_1

    move-object v8, v0

    :goto_1
    invoke-direct/range {v1 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;-><init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->w:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {v6}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->y:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;->name()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private k()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v6, 0x0

    .line 424
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a:Landroid/content/Context;

    const-string v2, "rti.mqtt.analytics"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 430
    iget v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->j:I

    if-nez v0, :cond_0

    .line 431
    const-string v0, "year_class"

    invoke-interface {v11, v0, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->j:I

    .line 434
    :cond_0
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a:Landroid/content/Context;

    const-string v2, "rti.mqtt.gk"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    sget-object v1, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a:Landroid/content/Context;

    const-string v3, "rti.mqtt.flags"

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 444
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v10

    .line 445
    invoke-static {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v12

    .line 446
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 448
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->i:Lcom/facebook/rti/common/util/NonInjectProvider;

    if-eqz v0, :cond_4

    .line 449
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->i:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fg"

    :goto_0
    move-object v7, v0

    .line 451
    :goto_1
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->g:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_2
    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->e:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-virtual {v8}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->a()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "1"

    :goto_3
    iget v9, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->j:I

    const-string v13, "is_employee"

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    move-object v11, v6

    invoke-direct/range {v0 .. v13}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 449
    :cond_1
    const-string v0, "bg"

    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v8, "0"

    goto :goto_3

    :cond_4
    move-object v7, v6

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 206
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->k()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->j()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->a()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    move-result-object v5

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;-><init>(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;)V

    return-object v0
.end method

.method public final a(J)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;
    .locals 9

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->h:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->h(J)J

    move-result-wide v4

    .line 185
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->k()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;

    move-result-object v7

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(JJZ)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->j()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->a()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    move-result-object v5

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;-><init>(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;)V

    return-object v0
.end method

.method public final a(JJ)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 196
    invoke-direct {p0, p3, p4}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->h(J)J

    move-result-wide v4

    .line 197
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->k()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;

    move-result-object v7

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(JJZ)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->i()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;

    move-result-object v4

    move-object v1, v7

    move-object v3, v8

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;-><init>(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;)V

    return-object v0
.end method

.method public final a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->w:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    .line 336
    return-void
.end method

.method public final a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->y:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;

    .line 344
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->e()V

    .line 345
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->x:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 319
    if-eqz p1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0
.end method

.method public final a(ZJJ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 259
    if-eqz p1, :cond_0

    cmp-long v0, p2, v6

    if-nez v0, :cond_0

    move-wide p2, p4

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 265
    cmp-long v0, v2, p2

    if-eqz v0, :cond_2

    .line 269
    cmp-long v0, p2, v6

    if-eqz v0, :cond_1

    cmp-long v0, p2, v2

    if-ltz v0, :cond_2

    .line 272
    :cond_1
    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :cond_2
    :goto_0
    return-void

    .line 281
    :cond_3
    cmp-long v0, p2, v6

    if-nez v0, :cond_4

    .line 283
    sub-long v0, p4, v2

    add-long/2addr v0, v6

    .line 288
    :goto_1
    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0

    .line 286
    :cond_4
    sub-long v0, p2, v2

    add-long/2addr v0, v6

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 308
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 256
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->a(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 312
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 298
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 316
    return-void
.end method

.method public final d(J)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 302
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 303
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->d()V

    .line 304
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 328
    return-void
.end method

.method public final e(J)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 383
    return-void
.end method

.method public final f()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->w:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    return-object v0
.end method

.method public final f(J)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->A:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 387
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->b()V

    .line 399
    return-void
.end method

.method public final g(J)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 391
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->f:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->c()V

    .line 403
    return-void
.end method
