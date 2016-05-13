.class Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;
.super Ljava/lang/Object;
.source "target_index"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

.field final synthetic b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;Lcom/facebook/rti/mqtt/protocol/ConnectResult;)V
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1174
    const-string v0, "MqttConnectionManager"

    const-string v1, "connectionEstablished runnable"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->i()V

    .line 1176
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    if-ne v0, v1, :cond_5

    .line 1178
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->e:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1179
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->c:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->e:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    invoke-interface {v1, v0}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->a(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;)Z

    move-result v0

    .line 1180
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->e:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    if-eqz v1, :cond_8

    .line 1181
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->e:Lcom/facebook/rti/mqtt/credentials/MqttCredentials;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->e:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    invoke-interface {v1, v0}, Lcom/facebook/rti/mqtt/credentials/MqttCredentials;->a(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;)Z

    move-result v0

    move v1, v0

    .line 1184
    :goto_0
    const-string v0, "com.facebook.services"

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v4, v4, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v4, v4, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->f:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->d:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->f:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-interface {v4, v0}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->a(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_6

    :cond_0
    move v1, v3

    .line 1188
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->f:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    if-eqz v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v4, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->f:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->a:Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->f:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-interface {v4, v0}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->a(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_7

    :cond_1
    :goto_2
    move v1, v3

    .line 1193
    :cond_2
    if-eqz v1, :cond_3

    .line 1194
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->o()V

    .line 1196
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->t()V

    .line 1197
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->u()V

    .line 1200
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->e()V

    .line 1203
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->D:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->d(J)V

    .line 1205
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1206
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;)V

    .line 1209
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->i:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->a(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->n()V

    .line 1212
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->g()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 1213
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v3, v3, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->h:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v4, v4, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v4, v4, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->f()I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(IJ)V

    .line 1218
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->b:Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/retry/ConnectionRetryManager;->d()V

    .line 1219
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->v()V

    .line 1223
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->k:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v4

    .line 74
    iput-wide v4, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->z:J

    .line 1225
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler$1;->b:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    .line 74
    iput-boolean v2, v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->E:Z

    .line 1227
    :cond_5
    return-void

    :cond_6
    move v1, v2

    .line 1186
    goto/16 :goto_1

    :cond_7
    move v3, v2

    .line 1189
    goto/16 :goto_2

    :cond_8
    move v1, v0

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_0
.end method
