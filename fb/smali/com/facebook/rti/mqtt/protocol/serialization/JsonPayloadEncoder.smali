.class public Lcom/facebook/rti/mqtt/protocol/serialization/JsonPayloadEncoder;
.super Ljava/lang/Object;
.source "started syncer thread"

# interfaces
.implements Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;)I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 29
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v5

    .line 30
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v6

    .line 31
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    move-result-object v4

    .line 34
    iget-object v0, v4, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->a:Ljava/lang/String;

    .line 35
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 36
    array-length v0, v7

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x0

    .line 40
    iget-object v0, v4, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->b:Ljava/lang/String;

    .line 41
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    :goto_0
    iget-object v1, v4, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->c:Ljava/lang/String;

    .line 45
    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 48
    :goto_1
    iget-boolean v3, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->d:Z

    if-eqz v3, :cond_0

    .line 49
    array-length v3, v0

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 50
    array-length v3, v1

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 53
    :cond_0
    iget-object v3, v4, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->d:Ljava/lang/String;

    .line 54
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 57
    :goto_2
    iget-boolean v8, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->b:Z

    if-eqz v8, :cond_1

    .line 58
    array-length v8, v3

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    .line 61
    :cond_1
    iget-object v4, v4, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->e:Ljava/lang/String;

    .line 62
    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 65
    :goto_3
    iget-boolean v8, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->c:Z

    if-eqz v8, :cond_2

    .line 66
    array-length v8, v4

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    .line 70
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 71
    invoke-static {v5}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 72
    invoke-static {p1, v2}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/io/DataOutputStream;I)V

    .line 75
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 76
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 77
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 78
    const/16 v5, 0x51

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 79
    const/16 v5, 0x49

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 80
    const/16 v5, 0x73

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 81
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 82
    const/16 v5, 0x70

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    iget v5, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->a:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 84
    invoke-static {v6}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 85
    iget v5, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->h:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 88
    array-length v5, v7

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 89
    array-length v5, v7

    invoke-virtual {p1, v7, v9, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 90
    iget-boolean v5, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->d:Z

    if-eqz v5, :cond_3

    .line 91
    array-length v5, v0

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 92
    array-length v5, v0

    invoke-virtual {p1, v0, v9, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 93
    array-length v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 94
    array-length v0, v1

    invoke-virtual {p1, v1, v9, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 96
    :cond_3
    iget-boolean v0, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->b:Z

    if-eqz v0, :cond_4

    .line 97
    array-length v0, v3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    array-length v0, v3

    invoke-virtual {p1, v3, v9, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 100
    :cond_4
    iget-boolean v0, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->c:Z

    if-eqz v0, :cond_5

    .line 101
    array-length v0, v4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 102
    array-length v0, v4

    invoke-virtual {p1, v4, v9, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 104
    :cond_5
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 106
    return v2

    .line 41
    :cond_6
    new-array v0, v9, [B

    goto/16 :goto_0

    .line 45
    :cond_7
    new-array v1, v9, [B

    goto/16 :goto_1

    .line 54
    :cond_8
    new-array v3, v9, [B

    goto/16 :goto_2

    .line 62
    :cond_9
    new-array v4, v9, [B

    goto/16 :goto_3
.end method

.method public final a(Lcom/facebook/mqttlite/SyncQueueTrackerImpl;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final a(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    .prologue
    .line 116
    return-object p1
.end method
