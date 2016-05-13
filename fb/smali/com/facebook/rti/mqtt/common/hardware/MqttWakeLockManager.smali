.class public Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;
.super Ljava/lang/Object;
.source "snapshot_connection_state"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->values()[Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 28
    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 31
    invoke-virtual {v5, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 32
    iget-object v6, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 39
    const-string v0, "MqttWakeLockManager"

    const-string v1, "acquire %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method public final b(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "MqttWakeLockManager"

    const-string v1, "release %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 48
    :cond_0
    return-void
.end method

.method public final c(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "MqttWakeLockManager"

    const-string v1, "acquireWithShortTimeout %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 55
    :cond_0
    return-void
.end method
