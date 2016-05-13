.class public interface abstract Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;
.super Ljava/lang/Object;
.source "started"


# virtual methods
.method public abstract a(Ljava/io/DataOutputStream;Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;)I
.end method

.method public abstract a(Lcom/facebook/mqttlite/SyncQueueTrackerImpl;)V
.end method

.method public abstract a(Ljava/util/List;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)[B"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation
.end method
