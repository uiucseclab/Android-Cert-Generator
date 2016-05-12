.class public Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;
.super Ljava/lang/Object;
.source "rti.mqtt.flags"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    :cond_0
    div-int/lit16 p0, p0, 0x80

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    if-gtz p0, :cond_0

    .line 65
    return v0
.end method

.method public static a(Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;)I
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->b:Z

    if-eqz v1, :cond_0

    .line 17
    const/16 v0, 0x80

    .line 19
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->c:Z

    if-eqz v1, :cond_1

    .line 20
    or-int/lit8 v0, v0, 0x40

    .line 22
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->e:Z

    if-eqz v1, :cond_2

    .line 23
    or-int/lit8 v0, v0, 0x20

    .line 25
    :cond_2
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->f:I

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 26
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->d:Z

    if-eqz v1, :cond_3

    .line 27
    or-int/lit8 v0, v0, 0x4

    .line 29
    :cond_3
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->g:Z

    if-eqz v1, :cond_4

    .line 30
    or-int/lit8 v0, v0, 0x2

    .line 32
    :cond_4
    return v0
.end method

.method public static a(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->mValue:I

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x0

    .line 38
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->b:Z

    if-eqz v1, :cond_0

    .line 39
    or-int/lit8 v0, v0, 0x8

    .line 41
    :cond_0
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 42
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    or-int/lit8 v0, v0, 0x1

    .line 45
    :cond_1
    return v0
.end method

.method public static a(Ljava/io/DataOutputStream;I)V
    .locals 1

    .prologue
    .line 50
    :cond_0
    rem-int/lit16 v0, p1, 0x80

    .line 51
    div-int/lit16 p1, p1, 0x80

    .line 52
    if-lez p1, :cond_1

    .line 53
    or-int/lit16 v0, v0, 0x80

    .line 55
    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 56
    if-gtz p1, :cond_0

    .line 57
    return-void
.end method

.method static a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 70
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
