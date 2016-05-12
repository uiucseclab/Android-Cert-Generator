.class final enum Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;
.super Ljava/lang/Enum;
.source "target_index"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

.field public static final enum BY_REQUEST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

.field public static final enum CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

.field public static final enum CONNECT_FAILED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

.field public static final enum DISCONNECTED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

.field public static final enum STALED_CONNECTION:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    const-string v1, "CONNECT_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECT_FAILED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    .line 125
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    const-string v1, "CONNECTION_LOST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    .line 127
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    const-string v1, "BY_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->BY_REQUEST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    .line 129
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->DISCONNECTED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    .line 131
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    const-string v1, "STALED_CONNECTION"

    invoke-direct {v0, v1, v6}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->STALED_CONNECTION:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECT_FAILED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->BY_REQUEST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->DISCONNECTED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->STALED_CONNECTION:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->$VALUES:[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->$VALUES:[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    return-object v0
.end method
