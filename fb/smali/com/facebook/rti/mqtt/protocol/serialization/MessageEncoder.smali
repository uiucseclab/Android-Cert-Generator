.class public Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;
.super Ljava/lang/Object;
.source "ru"


# instance fields
.field private final a:I

.field private final b:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

.field private final c:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field private d:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(ILcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a:I

    .line 48
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->b:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    .line 49
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->c:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    .line 50
    return-void
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;)I
    .locals 4
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v3

    iget-byte v3, v3, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    if-nez v3, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->b(Z)V

    .line 194
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 196
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 198
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/io/DataOutputStream;I)V

    .line 200
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 202
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v2

    iget-byte v2, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 204
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 206
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 207
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 209
    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 219
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 193
    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->b(Z)V

    .line 213
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 214
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 215
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 216
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v1

    iget-byte v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 217
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    move v0, v2

    .line 219
    goto :goto_1

    :cond_2
    move v0, v1

    .line 212
    goto :goto_2
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 365
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v1

    .line 368
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 369
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v0, v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/io/DataOutputStream;I)V

    .line 370
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    iget v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 371
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 373
    return v3
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 319
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v4

    .line 320
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v5

    .line 322
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->b()[B

    move-result-object v0

    .line 323
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a:I

    if-eqz v1, :cond_0

    .line 324
    array-length v6, v0

    .line 325
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;->a([B)[B

    move-result-object v1

    .line 326
    iget v7, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a:I

    if-ne v2, v7, :cond_2

    array-length v7, v1

    array-length v8, v0

    if-le v7, v8, :cond_2

    .line 330
    invoke-virtual {v4, v11}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a(Z)V

    .line 334
    :goto_0
    const-string v7, "MessageEncoder"

    const-string v8, "compress %s %d -> %d retain: %b"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v11

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    const/4 v1, 0x3

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-static {v7, v8, v9}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :cond_0
    iget-object v1, v5, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->a:Ljava/lang/String;

    .line 344
    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 346
    array-length v1, v6

    add-int/lit8 v7, v1, 0x2

    iget v1, v4, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    add-int/2addr v1, v7

    .line 349
    array-length v2, v0

    add-int/2addr v1, v2

    .line 351
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v4}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 352
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v2, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/io/DataOutputStream;I)V

    .line 353
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v7, v6

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 354
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v7, v6

    invoke-virtual {v2, v6, v3, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 355
    iget v2, v4, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    if-lez v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    iget v4, v5, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->b:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 359
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 361
    return v1

    :cond_2
    move-object v0, v1

    .line 332
    goto :goto_0

    :cond_3
    move v1, v3

    .line 346
    goto :goto_1
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;)I
    .locals 4

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 296
    add-int/lit8 v1, v0, 0x2

    .line 297
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 298
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/io/DataOutputStream;I)V

    .line 299
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v2

    iget v2, v2, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 300
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 301
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 305
    return v1
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 225
    .line 227
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    .line 228
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v4

    .line 229
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    move-result-object v5

    .line 231
    iget-object v0, v5, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 232
    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    .line 233
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 234
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 235
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 236
    goto :goto_0

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 240
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 241
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/io/DataOutputStream;I)V

    .line 244
    iget v0, v4, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    .line 245
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 248
    iget-object v0, v5, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 249
    iget-object v4, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->a:Ljava/lang/String;

    .line 250
    invoke-static {v4}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 251
    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 252
    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v6, v4

    invoke-virtual {v5, v4, v2, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 253
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->b:I

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 257
    return v1
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;)I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 310
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 311
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v0, v2}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/io/DataOutputStream;I)V

    .line 312
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v1

    iget v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 313
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 315
    return v2
.end method

.method private a(Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 262
    .line 264
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    .line 265
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v4

    .line 266
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    move-result-object v5

    .line 268
    iget-object v0, v5, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 270
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    move v1, v0

    .line 271
    goto :goto_0

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 275
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 276
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/io/DataOutputStream;I)V

    .line 279
    iget v0, v4, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    .line 280
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 283
    iget-object v0, v5, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 285
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 286
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_1

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 290
    return v1
.end method

.method private b(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 379
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 380
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 382
    return v2
.end method

.method private c(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 388
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 389
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 391
    return v2
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->e()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v2

    .line 59
    sget-object v3, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder$1;->a:[I

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 173
    const-string v2, "MessageEncoder"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown message type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->e()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "MQTT Packet unexpected send: %s"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v2

    iput v1, v2, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 61
    :pswitch_0
    :try_start_1
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 64
    :cond_0
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;

    move-object v1, v0

    .line 65
    const-string v3, "MessageEncoder"

    const-string v4, "MQTT Packet sending: %s retcode:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v6

    iget-byte v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;)I

    move-result v1

    goto :goto_0

    .line 74
    :pswitch_1
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;

    if-nez v1, :cond_1

    .line 75
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 77
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;

    move-object v1, v0

    .line 78
    const-string v3, "MessageEncoder"

    const-string v4, "MQTT Packet sending: %s topics:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;->a:Ljava/util/List;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;)I

    move-result v1

    goto/16 :goto_0

    .line 87
    :pswitch_2
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;

    if-nez v1, :cond_2

    .line 88
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 90
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;

    move-object v1, v0

    .line 91
    const-string v3, "MessageEncoder"

    const-string v4, "MQTT Packet sending: %s id:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v6

    iget v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;)I

    move-result v1

    goto/16 :goto_0

    .line 99
    :pswitch_3
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;

    if-nez v1, :cond_3

    .line 100
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 102
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;

    move-object v1, v0

    .line 103
    const-string v3, "MessageEncoder"

    const-string v4, "MQTT Packet sending: %s topics:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->b()Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;->a:Ljava/util/List;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;)I

    move-result v1

    goto/16 :goto_0

    .line 111
    :pswitch_4
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;

    if-nez v1, :cond_4

    .line 112
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 114
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;

    move-object v1, v0

    .line 115
    const-string v3, "MessageEncoder"

    const-string v4, "MQTT Packet sending: %s id:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v6

    iget v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;)I

    move-result v1

    goto/16 :goto_0

    .line 124
    :pswitch_5
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    if-nez v1, :cond_5

    .line 125
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 127
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    move-object v1, v0

    .line 128
    const-string v3, "MessageEncoder"

    const-string v4, "MQTT Packet sending: %s id:%d qos:%d topic:%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v6

    iget v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->f()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v6

    iget v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->a:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)I

    move-result v1

    goto/16 :goto_0

    .line 139
    :pswitch_6
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    if-nez v1, :cond_6

    .line 140
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 142
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    move-object v1, v0

    .line 143
    const-string v3, "MessageEncoder"

    const-string v4, "MQTT Packet sending: %s id:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v6

    iget v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->a(Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;)I

    move-result v1

    goto/16 :goto_0

    .line 151
    :pswitch_7
    const-string v1, "MessageEncoder"

    const-string v3, "MQTT Packet sending: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->b(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)I

    move-result v1

    goto/16 :goto_0

    .line 156
    :pswitch_8
    const-string v1, "MessageEncoder"

    const-string v3, "MQTT Packet sending: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->c(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)I

    move-result v1

    goto/16 :goto_0

    .line 160
    :pswitch_9
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;

    if-nez v1, :cond_7

    .line 161
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 163
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;

    move-object v1, v0

    .line 164
    const-string v3, "MessageEncoder"

    const-string v4, "MQTT Packet sending: %s timeout:%d with %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->a()Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v6

    iget v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->c:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->c:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    invoke-interface {v2, v3, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;->a(Ljava/io/DataOutputStream;Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto/16 :goto_0

    .line 59
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
    .end packed-switch
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->d:Ljava/io/DataOutputStream;

    .line 54
    return-void
.end method
