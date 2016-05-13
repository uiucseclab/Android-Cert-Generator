.class public Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;
.super Ljava/lang/Object;
.source "running deoptimized code"


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;

.field private final b:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field private final c:I

.field private final d:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

.field private e:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;ILcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->a:Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;

    .line 52
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->b:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 53
    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->c:I

    .line 54
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->d:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    .line 55
    return-void
.end method

.method private b()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 93
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->e:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 95
    shr-int/lit8 v1, v4, 0x4

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->fromInt(I)Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v1

    .line 96
    and-int/lit8 v2, v4, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    move v2, v0

    .line 97
    :goto_0
    and-int/lit8 v3, v4, 0x6

    shr-int/lit8 v3, v3, 0x1

    .line 98
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    move v4, v0

    .line 104
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->e:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 105
    and-int/lit8 v7, v6, 0x7f

    mul-int/2addr v7, v0

    add-int/2addr v5, v7

    .line 106
    mul-int/lit16 v0, v0, 0x80

    .line 107
    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    .line 109
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;ZIZI)V

    return-object v0

    :cond_1
    move v2, v5

    .line 96
    goto :goto_0

    :cond_2
    move v4, v5

    .line 98
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    .locals 6

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->e:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 65
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->b()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v1

    .line 66
    iget v0, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->d:I

    .line 68
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;

    invoke-direct {v3, v1, v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;I)V

    .line 70
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->e:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    iget v3, v3, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 73
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;

    iget v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->c:I

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->d:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;IILcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;)V

    .line 79
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0, v3}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v3

    .line 80
    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 82
    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->b:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v2, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->d:I

    invoke-virtual {v0, v2, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;I)V

    .line 87
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected bytes remaining in payload"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :cond_1
    :try_start_1
    invoke-static {v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final a(Ljava/io/DataInputStream;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->e:Ljava/io/DataInputStream;

    .line 59
    return-void
.end method
