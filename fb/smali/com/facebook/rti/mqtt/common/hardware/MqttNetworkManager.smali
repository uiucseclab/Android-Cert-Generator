.class public Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;
.super Ljava/lang/Object;
.source "snapshot_network_type"


# instance fields
.field private final a:Landroid/net/ConnectivityManager;

.field private final b:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:J

.field private volatile f:J

.field private volatile g:J


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Landroid/content/Context;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->d:Ljava/util/Set;

    .line 44
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->f:J

    .line 45
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g:J

    .line 51
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a:Landroid/net/ConnectivityManager;

    .line 52
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->b:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 54
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->j()V

    .line 55
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a(Landroid/net/NetworkInfo;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c:Landroid/content/Context;

    new-instance v1, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;-><init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 200
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->b:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->e:J

    .line 205
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 206
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->e:J

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g:J

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->b:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->f:J

    .line 212
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g:J

    .line 213
    iput-wide v4, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->e:J

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;)V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;)V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/net/NetworkInfo;
    .locals 2
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 148
    :cond_1
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    const-string v0, "none"

    .line 156
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    const-string v0, "none"

    .line 168
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_0
    return-object v0
.end method

.method public final f()J
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 180
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 182
    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 184
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 185
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 186
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    .line 188
    const-string v7, "MqttNetworkManager"

    const-string v8, "typeName=%s, subtypeName=%s, networkInfo State=%s."

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v2

    aput-object v6, v9, v10

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    aput-object v4, v9, v11

    invoke-static {v7, v8, v9}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :goto_0
    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v10

    aput-object v0, v4, v11

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    move v1, v2

    move v3, v2

    goto :goto_0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->e:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g:J

    return-wide v0
.end method

.method public final i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 235
    if-ne v2, v0, :cond_0

    .line 237
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 235
    goto :goto_0

    :cond_1
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public final declared-synchronized k()V
    .locals 8

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->a()I

    move-result v0

    .line 98
    const-string v1, "MqttNetworkManager"

    const-string v2, "Connectivity changed: networkType=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v2, "com.facebook.mqtt.EXTRA_NETWORK_TYPE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

    .line 102
    const-string v3, "MqttNetworkManager"

    const-string v4, "notify %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_0
    monitor-exit p0

    return-void
.end method
