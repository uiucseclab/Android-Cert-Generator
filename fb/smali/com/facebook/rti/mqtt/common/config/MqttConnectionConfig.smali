.class public Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;
.super Ljava/lang/Object;
.source "sr"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final A:I

.field public final B:Landroid/content/Context;

.field public final a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:J

.field public final w:J

.field public final x:I

.field public final y:Z

.field public final z:Z


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v6, 0x384

    const/16 v5, 0x1bb

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/16 v2, 0x3c

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string v0, "host_name"

    const-string v1, "edge-mqtt.facebook.com"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->a:Ljava/lang/String;

    .line 174
    const-string v0, "host_name_v6"

    const-string v1, "edge-mqtt.facebook.com"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->b:Ljava/lang/String;

    .line 175
    const-string v0, "analytics_endpoint"

    const-string v1, "https://b-api.facebook.com/method/logging.clientevent"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->c:Ljava/lang/String;

    .line 177
    const-string v0, "wifi_port"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->d:I

    .line 178
    const-string v0, "default_port"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->e:I

    .line 180
    const-string v0, "dns_timeout_sec"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->f:I

    .line 181
    const-string v0, "socket_timeout_sec"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->g:I

    .line 183
    const-string v0, "mqtt_connect_timeout_sec"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->h:I

    .line 185
    const-string v0, "response_timeout_sec"

    const/16 v1, 0x3b

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->i:I

    .line 188
    const-string v0, "back_to_back_retry_attempts"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->j:I

    .line 190
    const-string v0, "background_back_to_back_retry_attempts"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->k:I

    .line 193
    const-string v0, "back_to_back_retry_interval_sec"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->l:I

    .line 196
    const-string v0, "back_off_initial_retry_interval_sec"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->m:I

    .line 198
    const-string v0, "background_back_off_initial_retry_interval_sec"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->n:I

    .line 201
    const-string v0, "back_off_max_retry_interval_sec"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->o:I

    .line 204
    const-string v0, "foreground_keepalive_interval_sec"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->p:I

    .line 206
    const-string v0, "background_keepalive_interval_persistent_sec"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->q:I

    .line 209
    const-string v0, "background_keepalive_interval_transient_sec"

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->r:I

    .line 213
    const-string v0, "happy_eyeballs_delay_ms"

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->s:I

    .line 216
    const-string v0, "mqtt_client_thread_priority_ui"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->t:I

    .line 218
    const-string v0, "mqtt_client_thread_priority_worker"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->u:I

    .line 221
    const-string v0, "analytics_log_min_interval_for_sent_ms"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->v:J

    .line 225
    const-string v0, "analytics_log_min_interval_for_received_ms"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->w:J

    .line 230
    const-string v0, "gcm_ping_mqtt_delay_sec"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->x:I

    .line 233
    const-string v0, "use_ssl"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->y:Z

    .line 234
    const-string v0, "use_compression"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->z:Z

    .line 235
    const-string v0, "ct"

    const v1, 0xea60

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->A:I

    .line 237
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->B:Landroid/content/Context;

    .line 238
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, p0}, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;-><init>(Lorg/json/JSONObject;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 7

    .prologue
    .line 241
    .line 247
    sget-object v3, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->B:Landroid/content/Context;

    const-string v5, "rti.mqtt.mqtt_config"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v0, v3

    const-string v1, "device_on_keepalive_override"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->A:I

    return v0
.end method
