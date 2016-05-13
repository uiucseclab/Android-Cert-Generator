.class final enum Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
.super Ljava/lang/Enum;
.source "s_svc_ms"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/MqttClient$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

.field public static final enum CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

.field public static final enum CONNECTING:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

.field public static final enum DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

.field public static final enum INIT:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->INIT:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    .line 107
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTING:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    .line 108
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    .line 109
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->INIT:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTING:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->$VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/protocol/MqttClient$State;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->$VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/protocol/MqttClient$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/protocol/MqttClient$State;

    return-object v0
.end method
