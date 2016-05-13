.class final enum Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;
.super Ljava/lang/Enum;
.source "target_index"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

.field public static final enum PENDING_SUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

.field public static final enum PENDING_UNSUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

.field public static final enum SUBSCRIBED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1404
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    const-string v1, "SUBSCRIBED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->SUBSCRIBED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    const-string v1, "PENDING_SUBSCRIBE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_SUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    const-string v1, "PENDING_UNSUBSCRIBE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_UNSUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    .line 1403
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->SUBSCRIBED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_SUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_UNSUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->$VALUES:[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

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
    .line 1403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;
    .locals 1

    .prologue
    .line 1403
    const-class v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;
    .locals 1

    .prologue
    .line 1403
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->$VALUES:[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    return-object v0
.end method
