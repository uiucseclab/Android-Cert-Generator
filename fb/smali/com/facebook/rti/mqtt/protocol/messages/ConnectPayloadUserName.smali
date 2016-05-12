.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
.super Ljava/lang/Object;
.source "rti.mqtt.snapshot"


# static fields
.field private static final x:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Long;

.field d:Ljava/lang/Long;

.field e:Ljava/lang/Integer;

.field f:Ljava/lang/Integer;

.field g:Ljava/lang/Boolean;

.field h:Ljava/lang/Boolean;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/Boolean;

.field l:Ljava/lang/Long;

.field m:I

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field q:Ljava/lang/Boolean;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/Long;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 160
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->USER_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->AGENT:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CAPABILITIES:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->c:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CLIENT_MQTT_SESSION_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->d:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->NETWORK_TYPE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->NETWORK_SUBTYPE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->MAKE_USER_AVAILABLE_IN_FOREGROUND:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->g:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->NO_AUTOMATIC_FOREGROUND:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->DEVICE_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->DEVICE_SECRET:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->INITIAL_FOREGROUND_STATE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->k:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->ENDPOINT_CAPABILITIES:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->l:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->PUBLISH_FORMAT:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->m:I

    .line 198
    const/4 v4, 0x1

    if-ne v4, v2, :cond_2

    .line 199
    const-string v4, "jz"

    .line 204
    :goto_0
    move-object v2, v4

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CLIENT_TYPE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->APP_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 181
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 182
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 185
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->SUBSCRIBE_TOPICS:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_1
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->OVERRIDE_NECTAR_LOGGING:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->q:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->CONNECT_HASH:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->DATACENTER_PREFERENCE:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->FBNS_CONNECTION_KEY:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->t:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->FBNS_CONNECTION_SECRET:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->u:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->FBNS_DEVICE_ID:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->v:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->FBNS_DEVICE_SECRET:Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ClientInfoField;->getJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->w:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v2, :cond_3

    .line 201
    const-string v4, "jzo"

    goto/16 :goto_0

    .line 204
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->m:I

    .line 106
    return-object p0
.end method

.method public final a(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->g:Ljava/lang/Boolean;

    .line 76
    return-object p0
.end method

.method public final a(Ljava/lang/Integer;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->e:Ljava/lang/Integer;

    .line 66
    return-object p0
.end method

.method public final a(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->c:Ljava/lang/Long;

    .line 56
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->p:Ljava/util/List;

    .line 121
    return-object p0
.end method

.method public final b(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->h:Ljava/lang/Boolean;

    .line 81
    return-object p0
.end method

.method public final b(Ljava/lang/Integer;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->f:Ljava/lang/Integer;

    .line 71
    return-object p0
.end method

.method public final b(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->d:Ljava/lang/Long;

    .line 61
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->b:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public final c(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->k:Ljava/lang/Boolean;

    .line 96
    return-object p0
.end method

.method public final c(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->l:Ljava/lang/Long;

    .line 101
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->i:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public final d(Ljava/lang/Boolean;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->q:Ljava/lang/Boolean;

    .line 126
    return-object p0
.end method

.method public final d(Ljava/lang/Long;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->t:Ljava/lang/Long;

    .line 141
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->j:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->n:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->o:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->r:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->s:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->u:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->v:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->w:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->a()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->x:Ljava/lang/String;

    const-string v2, "Failed to serialize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const-string v0, ""

    goto :goto_0
.end method
