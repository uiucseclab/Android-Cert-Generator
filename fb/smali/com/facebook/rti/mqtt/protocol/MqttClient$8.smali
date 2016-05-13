.class synthetic Lcom/facebook/rti/mqtt/protocol/MqttClient$8;
.super Ljava/lang/Object;
.source "s_svc_ms"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1202
    invoke-static {}, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->values()[Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->b:[I

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->b:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->DISCONNECT:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->b:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->TIMEOUT:Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClient$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 597
    :goto_1
    invoke-static {}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->values()[Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->a:[I

    :try_start_2
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->a:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$8;->a:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
