.class public Lcom/facebook/rti/mqtt/protocol/AddressResolver;
.super Ljava/lang/Object;
.source "served"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/facebook/rti/mqtt/protocol/DNSResolver;

.field private final c:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

.field private final d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/protocol/DNSResolver;Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;)V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a:Ljava/util/concurrent/ExecutorService;

    .line 54
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->b:Lcom/facebook/rti/mqtt/protocol/DNSResolver;

    .line 55
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->c:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    .line 56
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v3, "rti.mqtt.addresses"

    invoke-virtual {v2, p1, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "/settings/mqtt/address"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;-><init>(ILandroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    .line 62
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->b(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 70
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a()Ljava/util/TreeSet;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 83
    :goto_0
    monitor-exit p0

    return-object v0

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 75
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->c()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    move-object v0, v1

    .line 79
    goto :goto_0

    .line 83
    :cond_2
    new-instance v1, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    const-string v0, "AddressResolver"

    const-string v1, "resolveAsync scheduled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;-><init>(Lcom/facebook/rti/mqtt/protocol/AddressResolver;Ljava/lang/String;)V

    const v2, 0x17586c3c

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 7

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a()Ljava/util/TreeSet;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v1, p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    move-result-object v1

    .line 158
    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->e()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_1
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    new-instance v3, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->e()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->c()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-virtual {v2, v1, v3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    .locals 2
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->ExecutionException:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    throw v0

    .line 97
    :cond_0
    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->ExecutionException:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0

    .line 99
    :catch_2
    move-exception v0

    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->TimedOut:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0
.end method

.method public final declared-synchronized a()Ljava/lang/String;
    .locals 3
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const-string v0, "Cache{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 141
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :cond_0
    :try_start_1
    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 7
    .param p1    # Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->c()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-virtual {v1, v0, v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 7
    .param p1    # Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->b()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-virtual {v1, v0, v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->c:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->c(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 198
    invoke-static {p1}, Lcom/facebook/rti/mqtt/protocol/DNSResolver;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->c:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    .line 207
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->UnknownHost:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->c:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;->MQTT_CLIENT_CONNECT:Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;

    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockManager;->a(Lcom/facebook/rti/mqtt/common/hardware/MqttWakeLockType;)V

    throw v0

    .line 202
    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->SecurityException:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method final declared-synchronized c(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 1
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->d:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
