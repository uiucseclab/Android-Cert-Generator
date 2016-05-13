.class public Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;
.super Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
.source "rti.mqtt.fbns_state"


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;[B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
