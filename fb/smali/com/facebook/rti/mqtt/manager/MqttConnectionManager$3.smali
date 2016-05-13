.class synthetic Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;
.super Ljava/lang/Object;
.source "target_index"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1338
    invoke-static {}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->values()[Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->c:[I

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->c:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->c:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->SUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->c:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->UNSUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->c:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1080
    :goto_3
    invoke-static {}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->values()[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->b:[I

    :try_start_4
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->b:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->SUBSCRIBED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->b:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->PENDING_SUBSCRIBE:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$SubscriptionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    .line 243
    :goto_5
    invoke-static {}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->values()[Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->a:[I

    :try_start_6
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->a:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECT_FAILED:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->a:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$3;->a:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->BY_REQUEST:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
