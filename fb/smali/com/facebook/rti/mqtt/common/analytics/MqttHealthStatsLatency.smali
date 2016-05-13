.class public Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;
.super Ljava/lang/Object;
.source "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;->a:J

    .line 30
    iput-wide p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;->b:J

    .line 31
    iput-wide p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;->c:J

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    const-string v1, "pub"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v1, "s"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v1, "r"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsLatency;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    return-object v0
.end method
