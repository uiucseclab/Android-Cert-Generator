.class public Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;
.super Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
.source "reuse_player_"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
