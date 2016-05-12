.class public Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;
.super Ljava/lang/Object;
.source "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImplWrapper"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->a:I

    .line 42
    iput p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->b:I

    .line 43
    iput-wide p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->c:J

    .line 44
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->d:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->e:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->f:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    const-string v1, "sc"

    iget v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "ca"

    iget v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "ce"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "tr"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "fr"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "dr"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsConnectivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    return-object v0
.end method
