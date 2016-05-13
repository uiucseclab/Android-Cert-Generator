.class public Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;
.super Ljava/lang/Object;
.source "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->c:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->d:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->e:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->f:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->g:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->h:Ljava/lang/String;

    .line 65
    iput p9, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->i:I

    .line 66
    iput-object p10, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->j:Ljava/lang/String;

    .line 67
    iput-object p11, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->k:Ljava/lang/String;

    .line 68
    iput-object p12, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->l:Ljava/lang/String;

    .line 69
    iput-boolean p13, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->m:Z

    .line 70
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    const-string v1, "sn"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "aid"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "ct"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "nt"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "ns"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "cq"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "as"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "ss"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "yc"

    iget v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "gk"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "qe"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "f"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "e"

    iget-boolean v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsBasicInfo;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    return-object v0
.end method
