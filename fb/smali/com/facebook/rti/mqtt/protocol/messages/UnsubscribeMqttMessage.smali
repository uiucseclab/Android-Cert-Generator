.class public Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;
.super Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
.source "reportfile.prealloc"


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    return-object v0
.end method

.method public final b()Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
