.class public Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;
.super Ljava/lang/Object;
.source "s_net_ms"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Boolean;

.field b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    const-string v1, "foreground"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "keepalive_timeout"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->a:Ljava/lang/Boolean;

    .line 21
    return-object p0
.end method

.method public final a(Ljava/lang/Integer;)Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->b:Ljava/lang/Integer;

    .line 26
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->a()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttForegroundStatePayload;->c:Ljava/lang/String;

    const-string v2, "Failed to serialize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string v0, ""

    goto :goto_0
.end method
