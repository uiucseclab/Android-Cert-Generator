.class public Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;
.super Ljava/lang/Object;
.source "os.arch"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;

.field private final b:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;

.field private final c:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;

.field private final d:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;

.field private final e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->a:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;

    .line 42
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->b:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;

    .line 43
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->c:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;

    .line 44
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;

    .line 45
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    .line 46
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->a:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "i"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->a:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->b:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "lc"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->b:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLifecycle;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->c:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;

    if-eqz v1, :cond_2

    .line 61
    const-string v1, "c"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->c:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;

    if-eqz v1, :cond_3

    .line 64
    const-string v1, "lt"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->d:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    if-eqz v1, :cond_4

    .line 67
    const-string v1, "ss"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->e:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_4
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;->a()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
