.class public Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;
.super Ljava/lang/Object;
.source "running"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory$1;->a:[I

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :pswitch_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;

    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;)V

    .line 72
    :goto_0
    return-object v0

    .line 40
    :pswitch_1
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;

    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;)V

    goto :goto_0

    .line 44
    :pswitch_2
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;

    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;)V

    goto :goto_0

    .line 48
    :pswitch_3
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;

    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;)V

    goto :goto_0

    .line 52
    :pswitch_4
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;

    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;)V

    goto :goto_0

    .line 56
    :pswitch_5
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;[B)V

    goto :goto_0

    .line 60
    :pswitch_6
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-direct {v0, p0, v2, v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :pswitch_7
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-direct {v0, p0, v2, v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :pswitch_8
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    invoke-direct {v0, p0, v2, v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :pswitch_9
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;)V

    goto :goto_0

    .line 72
    :pswitch_a
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;

    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
