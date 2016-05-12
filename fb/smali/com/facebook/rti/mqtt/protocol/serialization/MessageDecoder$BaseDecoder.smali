.class public Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;
.super Ljava/lang/Object;
.source "running deoptimized code"


# instance fields
.field protected a:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

.field protected b:I


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;I)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->a:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    .line 128
    iput p2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 129
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v0

    .line 133
    new-array v1, v0, [B

    .line 134
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 135
    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 136
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected final b(Ljava/io/DataInputStream;)I
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 141
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 142
    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 143
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method
