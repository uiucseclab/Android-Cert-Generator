.class Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;
.super Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;
.source "running deoptimized code"


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;I)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;I)V

    .line 154
    return-void
.end method

.method private d(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 181
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "MQIsdp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 184
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid input - missing header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 187
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v10

    .line 188
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 189
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v8

    .line 191
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    and-int/lit16 v2, v10, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    move v2, v7

    :goto_0
    and-int/lit8 v3, v10, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    move v3, v7

    :goto_1
    and-int/lit8 v4, v10, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    move v4, v7

    :goto_2
    and-int/lit8 v5, v10, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4

    move v5, v7

    :goto_3
    and-int/lit8 v6, v10, 0x18

    shr-int/lit8 v6, v6, 0x3

    and-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    :goto_4
    invoke-direct/range {v0 .. v8}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;-><init>(IZZZZIZI)V

    return-object v0

    :cond_1
    move v2, v9

    goto :goto_0

    :cond_2
    move v3, v9

    goto :goto_1

    :cond_3
    move v4, v9

    goto :goto_2

    :cond_4
    move v5, v9

    goto :goto_3

    :cond_5
    move v7, v9

    goto :goto_4
.end method

.method private e(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 206
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 207
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 208
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;-><init>(B)V

    return-object v1
.end method

.method private f(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v0

    .line 214
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;-><init>(I)V

    return-object v1
.end method

.method private g(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 220
    const/4 v0, -0x1

    .line 221
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->a:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    iget v2, v2, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    if-lez v2, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v0

    .line 224
    :cond_0
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    invoke-direct {v2, v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public final c(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$1;->a:[I

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->a:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 175
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->d(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->e(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->f(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$VariableHeaderDecoder;->g(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
