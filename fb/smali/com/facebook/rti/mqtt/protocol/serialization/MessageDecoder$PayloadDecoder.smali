.class Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;
.super Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;
.source "running deoptimized code"


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:I

.field private final e:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;IILcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p3}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;I)V

    .line 245
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->c:Ljava/lang/Object;

    .line 246
    iput p4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->d:I

    .line 247
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->e:Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    .line 248
    return-void
.end method

.method private d(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->c:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    .line 280
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-boolean v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->d:Z

    if-eqz v2, :cond_3

    .line 284
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 289
    :goto_0
    iget v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v5, :cond_2

    .line 290
    iget-boolean v5, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->b:Z

    if-eqz v5, :cond_1

    .line 291
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 293
    :goto_1
    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->c:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v5

    move-object v5, v6

    .line 297
    :goto_2
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v6, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_2

    :cond_1
    move-object v5, v4

    goto :goto_1

    :cond_2
    move-object v5, v4

    goto :goto_2

    :cond_3
    move-object v3, v4

    move-object v2, v4

    goto :goto_0
.end method

.method private e(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;
    .locals 2

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_0
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->a(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;
    .locals 4

    .prologue
    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    :goto_0
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 314
    iget v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 315
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    invoke-direct {v3, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_0
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private g(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;
    .locals 3

    .prologue
    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    :goto_0
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 323
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, -0x4

    .line 324
    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_0
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private h(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    :goto_0
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 333
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_0
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private i(Ljava/io/DataInputStream;)[B
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 341
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    new-array v0, v0, [B

    .line 342
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 343
    iput v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 345
    array-length v1, v0

    .line 346
    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->d:I

    if-eq v7, v2, :cond_0

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->d:I

    if-ne v8, v2, :cond_1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 349
    :cond_0
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;->b([B)[B

    move-result-object v0

    .line 351
    :cond_1
    const-string v2, "MessageDecoder"

    const-string v3, "decompress %s %d -> %d retain: %b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    array-length v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$1;->a:[I

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->a:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 255
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->d(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->e(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->f(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    move-result-object v0

    goto :goto_0

    .line 264
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->g(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->h(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    move-result-object v0

    goto :goto_0

    .line 270
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$PayloadDecoder;->i(Ljava/io/DataInputStream;)[B

    move-result-object v0

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
