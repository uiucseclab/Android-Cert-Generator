.class public final enum Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;
.super Ljava/lang/Enum;
.source "stop"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

.field public static final enum NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

.field public static final enum REF_CODE_EXPIRED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    .line 13
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    const-string v1, "REF_CODE_EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->REF_CODE_EXPIRED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->NOT_CONNECTED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->REF_CODE_EXPIRED:Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->$VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->$VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;

    return-object v0
.end method
