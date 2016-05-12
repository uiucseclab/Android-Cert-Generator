.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;
.super Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
.source "rotationX"


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    return-object v0
.end method

.method public final b()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returnCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v1

    iget-byte v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
