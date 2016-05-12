.class public Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;
.super Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;
.source "UTF8JsonGenerator.java"


# static fields
.field private static final BYTE_0:B = 0x30t

.field private static final BYTE_BACKSLASH:B = 0x5ct

.field private static final BYTE_COLON:B = 0x3at

.field private static final BYTE_COMMA:B = 0x2ct

.field private static final BYTE_LBRACKET:B = 0x5bt

.field private static final BYTE_LCURLY:B = 0x7bt

.field private static final BYTE_QUOTE:B = 0x22t

.field private static final BYTE_RBRACKET:B = 0x5dt

.field private static final BYTE_RCURLY:B = 0x7dt

.field private static final BYTE_u:B = 0x75t

.field private static final FALSE_BYTES:[B

.field static final HEX_CHARS:[B

.field private static final MAX_BYTES_TO_BUFFER:I = 0x200

.field private static final NULL_BYTES:[B

.field protected static final SURR1_FIRST:I = 0xd800

.field protected static final SURR1_LAST:I = 0xdbff

.field protected static final SURR2_FIRST:I = 0xdc00

.field protected static final SURR2_LAST:I = 0xdfff

.field private static final TRUE_BYTES:[B


# instance fields
.field protected _bufferRecyclable:Z

.field protected _cfgUnqNames:Z

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected _entityBuffer:[B

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected final _outputMaxContiguous:I

.field protected final _outputStream:Ljava/io/OutputStream;

.field protected _outputTail:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 35
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    .line 37
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->NULL_BYTES:[B

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->TRUE_BYTES:[B

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->FALSE_BYTES:[B

    return-void

    .line 37
    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    .line 38
    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    .line 39
    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p4, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 62
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 121
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    .line 122
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    .line 123
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 124
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    array-length v2, v2

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    .line 130
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    shr-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    .line 131
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 132
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    array-length v2, v2

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    .line 135
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 138
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    .line 139
    return-void

    :cond_1
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;[BIZ)V
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "outputBuffer"    # [B
    .param p6, "outputOffset"    # I
    .param p7, "bufferRecyclable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 62
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 147
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    .line 148
    iput-boolean p7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    .line 149
    iput p6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 150
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 151
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    array-length v1, v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    .line 153
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    shr-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    .line 154
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 155
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    array-length v1, v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    .line 156
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    .line 157
    return-void
.end method

.method private final _handleLongCustomEscape([BII[BI)I
    .locals 3
    .param p1, "outputBuffer"    # [B
    .param p2, "outputPtr"    # I
    .param p3, "outputEnd"    # I
    .param p4, "raw"    # [B
    .param p5, "remainingChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1436
    array-length v0, p4

    .line 1437
    .local v0, "len":I
    add-int v1, p2, v0

    if-le v1, p3, :cond_1

    .line 1438
    iput p2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1439
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1440
    iget p2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1441
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 1442
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p4, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    move v1, p2

    .line 1453
    :goto_0
    return v1

    .line 1445
    :cond_0
    invoke-static {p4, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1446
    add-int/2addr p2, v0

    .line 1449
    :cond_1
    mul-int/lit8 v1, p5, 0x6

    add-int/2addr v1, p2

    if-le v1, p3, :cond_2

    .line 1450
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1451
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0

    :cond_2
    move v1, p2

    .line 1453
    goto :goto_0
.end method

.method private final _outputMultiByteChar(II)I
    .locals 4
    .param p1, "ch"    # I
    .param p2, "outputPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1786
    .local v0, "bbuf":[B
    const v2, 0xd800

    if-lt p1, v2, :cond_0

    const v2, 0xdfff

    if-gt p1, v2, :cond_0

    .line 1787
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .local v1, "outputPtr":I
    const/16 v2, 0x5c

    aput-byte v2, v0, p2

    .line 1788
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    const/16 v2, 0x75

    aput-byte v2, v0, v1

    .line 1790
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v1    # "outputPtr":I
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, p2

    .line 1791
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1792
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v1    # "outputPtr":I
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, p2

    .line 1793
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1799
    :goto_0
    return p2

    .line 1795
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v1    # "outputPtr":I
    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    .line 1796
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1797
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v1    # "outputPtr":I
    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    move p2, v1

    .end local v1    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    goto :goto_0
.end method

.method private final _outputRawMultiByteChar(I[CII)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "cbuf"    # [C
    .param p3, "inputOffset"    # I
    .param p4, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    const v1, 0xd800

    if-lt p1, v1, :cond_2

    .line 1743
    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 1745
    if-ge p3, p4, :cond_0

    if-nez p2, :cond_1

    .line 1746
    :cond_0
    const-string v1, "Split surrogate on writeRaw() input (last character)"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 1748
    :cond_1
    aget-char v1, p2, p3

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputSurrogates(II)V

    .line 1749
    add-int/lit8 p3, p3, 0x1

    .line 1756
    .end local p3    # "inputOffset":I
    :goto_0
    return p3

    .line 1752
    .restart local p3    # "inputOffset":I
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1753
    .local v0, "bbuf":[B
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1754
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1755
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private final _readMore(Ljava/io/InputStream;[BIII)I
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "readBuffer"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .param p5, "maxRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1705
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v4, p3

    .line 1706
    .end local p3    # "inputPtr":I
    .local v4, "inputPtr":I
    :goto_0
    if-ge v4, p4, :cond_0

    .line 1707
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v4

    aput-byte v6, p2, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, p3

    .end local p3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_0

    .line 1709
    :cond_0
    const/4 p3, 0x0

    .line 1710
    .end local v4    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    move p4, v2

    .line 1711
    array-length v6, p2

    invoke-static {p5, v6}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1714
    :cond_1
    sub-int v5, p5, p4

    .line 1715
    .local v5, "length":I
    if-nez v5, :cond_2

    :goto_1
    move v3, p4

    .line 1724
    .end local p4    # "inputEnd":I
    .local v3, "inputEnd":I
    :goto_2
    return v3

    .line 1718
    .end local v3    # "inputEnd":I
    .restart local p4    # "inputEnd":I
    :cond_2
    invoke-virtual {p1, p2, p4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1719
    .local v0, "count":I
    if-gez v0, :cond_3

    move v3, p4

    .line 1720
    .end local p4    # "inputEnd":I
    .restart local v3    # "inputEnd":I
    goto :goto_2

    .line 1722
    .end local v3    # "inputEnd":I
    .restart local p4    # "inputEnd":I
    :cond_3
    add-int/2addr p4, v0

    .line 1723
    const/4 v6, 0x3

    if-lt p4, v6, :cond_1

    goto :goto_1
.end method

.method private final _writeBytes([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1108
    array-length v0, p1

    .line 1109
    .local v0, "len":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1112
    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1118
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method private final _writeBytes([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1126
    const/16 v0, 0x200

    if-le p3, v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1133
    :goto_0
    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1132
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method private final _writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I
    .locals 7
    .param p1, "outputBuffer"    # [B
    .param p2, "outputPtr"    # I
    .param p3, "esc"    # Lcom/fasterxml/jackson/core/SerializableString;
    .param p4, "remainingChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1422
    invoke-interface {p3}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v4

    .line 1423
    .local v4, "raw":[B
    array-length v6, v4

    .line 1424
    .local v6, "len":I
    const/4 v0, 0x6

    if-le v6, v0, :cond_0

    .line 1425
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_handleLongCustomEscape([BII[BI)I

    move-result v0

    .line 1429
    :goto_0
    return v0

    .line 1428
    :cond_0
    const/4 v0, 0x0

    invoke-static {v4, v0, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1429
    add-int v0, p2, v6

    goto :goto_0
.end method

.method private final _writeCustomStringSegment2([CII)V
    .locals 12
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1365
    iget v10, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v11, p3, p2

    mul-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    iget v11, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v10, v11, :cond_0

    .line 1366
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1368
    :cond_0
    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1370
    .local v8, "outputPtr":I
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1371
    .local v7, "outputBuffer":[B
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1373
    .local v3, "escCodes":[I
    iget v10, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    if-gtz v10, :cond_1

    const v5, 0xffff

    .line 1374
    .local v5, "maxUnescaped":I
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .local v1, "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    move v9, v8

    .end local v8    # "outputPtr":I
    .local v9, "outputPtr":I
    move v6, p2

    .line 1376
    .end local p2    # "offset":I
    .local v6, "offset":I
    :goto_1
    if-ge v6, p3, :cond_a

    .line 1377
    add-int/lit8 p2, v6, 0x1

    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v6

    .line 1378
    .local v0, "ch":I
    const/16 v10, 0x7f

    if-gt v0, v10, :cond_6

    .line 1379
    aget v10, v3, v0

    if-nez v10, :cond_2

    .line 1380
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    int-to-byte v10, v0

    aput-byte v10, v7, v9

    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1381
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1373
    .end local v0    # "ch":I
    .end local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v5    # "maxUnescaped":I
    .end local v6    # "offset":I
    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    .restart local p2    # "offset":I
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1383
    .end local v8    # "outputPtr":I
    .restart local v0    # "ch":I
    .restart local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v5    # "maxUnescaped":I
    .restart local v9    # "outputPtr":I
    :cond_2
    aget v4, v3, v0

    .line 1384
    .local v4, "escape":I
    if-lez v4, :cond_3

    .line 1385
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    const/16 v10, 0x5c

    aput-byte v10, v7, v9

    .line 1386
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    int-to-byte v10, v4

    aput-byte v10, v7, v8

    move v6, p2

    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1387
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    const/4 v10, -0x2

    if-ne v4, v10, :cond_5

    .line 1388
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v2

    .line 1389
    .local v2, "esc":Lcom/fasterxml/jackson/core/SerializableString;
    if-nez v2, :cond_4

    .line 1390
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", although was supposed to have one"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 1393
    :cond_4
    sub-int v10, p3, p2

    invoke-direct {p0, v7, v9, v2, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1394
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1396
    .end local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_5
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1398
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1400
    .end local v4    # "escape":I
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_6
    if-le v0, v5, :cond_7

    .line 1401
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1402
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1404
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_7
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v2

    .line 1405
    .restart local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    if-eqz v2, :cond_8

    .line 1406
    sub-int v10, p3, p2

    invoke-direct {p0, v7, v9, v2, v10}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomEscape([BILcom/fasterxml/jackson/core/SerializableString;I)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1407
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1409
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_8
    const/16 v10, 0x7ff

    if-gt v0, v10, :cond_9

    .line 1410
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    shr-int/lit8 v10, v0, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1411
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    and-int/lit8 v10, v0, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    move v8, v9

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    :goto_2
    move v9, v8

    .end local v8    # "outputPtr":I
    .restart local v9    # "outputPtr":I
    move v6, p2

    .line 1415
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_1

    .line 1413
    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    :cond_9
    invoke-direct {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v8

    .end local v9    # "outputPtr":I
    .restart local v8    # "outputPtr":I
    goto :goto_2

    .line 1416
    .end local v0    # "ch":I
    .end local v2    # "esc":Lcom/fasterxml/jackson/core/SerializableString;
    .end local v8    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    .restart local v9    # "outputPtr":I
    :cond_a
    iput v9, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1417
    return-void
.end method

.method private _writeGenericEscape(II)I
    .locals 5
    .param p1, "charToEscape"    # I
    .param p2, "outputPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1830
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1831
    .local v0, "bbuf":[B
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outputPtr":I
    .local v2, "outputPtr":I
    const/16 v3, 0x5c

    aput-byte v3, v0, p2

    .line 1832
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    const/16 v3, 0x75

    aput-byte v3, v0, v2

    .line 1833
    const/16 v3, 0xff

    if-le p1, v3, :cond_0

    .line 1834
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v1, v3, 0xff

    .line 1835
    .local v1, "hi":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v4, v1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v0, p2

    .line 1836
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v4, v1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 1837
    and-int/lit16 p1, p1, 0xff

    .line 1843
    .end local v1    # "hi":I
    :goto_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    shr-int/lit8 v4, p1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v0, p2

    .line 1844
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->HEX_CHARS:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 1845
    return p2

    .line 1839
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    aput-byte v4, v0, p2

    .line 1840
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local p2    # "outputPtr":I
    aput-byte v4, v0, v2

    goto :goto_0
.end method

.method private _writeLongString([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 458
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 462
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    .line 463
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 467
    return-void
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1815
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1816
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1818
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->NULL_BYTES:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1819
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1820
    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 805
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 809
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 810
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 811
    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 4
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 831
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 835
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 836
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 837
    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 917
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 921
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 922
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 926
    return-void
.end method

.method private final _writeQuotedShort(S)V
    .locals 4
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 779
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 783
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 784
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 785
    return-void
.end method

.method private final _writeSegmentedRaw([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 664
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    .line 665
    .local v2, "end":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 668
    .local v0, "bbuf":[B
    :goto_0
    if-ge p2, p3, :cond_4

    .line 671
    :cond_0
    aget-char v1, p1, p2

    .line 672
    .local v1, "ch":I
    const/16 v4, 0x80

    if-lt v1, v4, :cond_2

    .line 684
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_1

    .line 685
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 687
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    aget-char v1, p1, p2

    .line 688
    .local v1, "ch":C
    const/16 v4, 0x800

    if-ge v1, v4, :cond_5

    .line 689
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v5, v1, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 690
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v5, v1, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    move p2, v3

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .line 676
    .local v1, "ch":I
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-lt v4, v2, :cond_3

    .line 677
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 679
    :cond_3
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 680
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    .line 695
    .end local v1    # "ch":I
    :cond_4
    return-void

    .line 692
    .end local p2    # "offset":I
    .local v1, "ch":C
    .restart local v3    # "offset":I
    :cond_5
    invoke-direct {p0, v1, p1, v3, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    move-result p2

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0
.end method

.method private final _writeStringSegment([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1220
    add-int/2addr p3, p2

    .line 1222
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1223
    .local v3, "outputPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1224
    .local v2, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .local v1, "escCodes":[I
    move v4, v3

    .line 1226
    .end local v3    # "outputPtr":I
    .local v4, "outputPtr":I
    :goto_0
    if-ge p2, p3, :cond_0

    .line 1227
    aget-char v0, p1, p2

    .line 1229
    .local v0, "ch":I
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    aget v5, v1, v0

    if-eqz v5, :cond_2

    .line 1235
    .end local v0    # "ch":I
    :cond_0
    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1236
    if-ge p2, p3, :cond_1

    .line 1238
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v5, :cond_3

    .line 1239
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeCustomStringSegment2([CII)V

    .line 1248
    :cond_1
    :goto_1
    return-void

    .line 1232
    .restart local v0    # "ch":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local v3    # "outputPtr":I
    int-to-byte v5, v0

    aput-byte v5, v2, v4

    .line 1233
    add-int/lit8 p2, p2, 0x1

    move v4, v3

    .line 1234
    .end local v3    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    goto :goto_0

    .line 1241
    .end local v0    # "ch":I
    :cond_3
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    if-nez v5, :cond_4

    .line 1242
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment2([CII)V

    goto :goto_1

    .line 1244
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegmentASCII2([CII)V

    goto :goto_1
.end method

.method private final _writeStringSegment2([CII)V
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1258
    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v8, p3, p2

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v7, v8, :cond_0

    .line 1259
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1262
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1264
    .local v5, "outputPtr":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1265
    .local v4, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .local v1, "escCodes":[I
    move v6, v5

    .end local v5    # "outputPtr":I
    .local v6, "outputPtr":I
    move v3, p2

    .line 1267
    .end local p2    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v3, p3, :cond_5

    .line 1268
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v3

    .line 1269
    .local v0, "ch":I
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_3

    .line 1270
    aget v7, v1, v0

    if-nez v7, :cond_1

    .line 1271
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    int-to-byte v7, v0

    aput-byte v7, v4, v6

    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1272
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1274
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_1
    aget v2, v1, v0

    .line 1275
    .local v2, "escape":I
    if-lez v2, :cond_2

    .line 1276
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    const/16 v7, 0x5c

    aput-byte v7, v4, v6

    .line 1277
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    int-to-byte v7, v2

    aput-byte v7, v4, v5

    move v3, p2

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1280
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_2
    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v5

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1282
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1284
    .end local v2    # "escape":I
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    const/16 v7, 0x7ff

    if-gt v0, v7, :cond_4

    .line 1285
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    shr-int/lit8 v7, v0, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1286
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    move v5, v6

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    :goto_1
    move v6, v5

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v3, p2

    .line 1290
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1288
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_4
    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v5

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    goto :goto_1

    .line 1291
    .end local v0    # "ch":I
    .end local v5    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "outputPtr":I
    :cond_5
    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1292
    return-void
.end method

.method private final _writeStringSegmentASCII2([CII)V
    .locals 10
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1309
    iget v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    sub-int v9, p3, p2

    mul-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    iget v9, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v8, v9, :cond_0

    .line 1310
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1313
    :cond_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1315
    .local v6, "outputPtr":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1316
    .local v5, "outputBuffer":[B
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1317
    .local v1, "escCodes":[I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_maximumNonEscapedChar:I

    .local v3, "maxUnescaped":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .local v7, "outputPtr":I
    move v4, p2

    .line 1319
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, p3, :cond_6

    .line 1320
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v4

    .line 1321
    .local v0, "ch":I
    const/16 v8, 0x7f

    if-gt v0, v8, :cond_3

    .line 1322
    aget v8, v1, v0

    if-nez v8, :cond_1

    .line 1323
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    int-to-byte v8, v0

    aput-byte v8, v5, v7

    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1324
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1326
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_1
    aget v2, v1, v0

    .line 1327
    .local v2, "escape":I
    if-lez v2, :cond_2

    .line 1328
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    const/16 v8, 0x5c

    aput-byte v8, v5, v7

    .line 1329
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    int-to-byte v8, v2

    aput-byte v8, v5, v6

    move v4, p2

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1332
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_2
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1334
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1336
    .end local v2    # "escape":I
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    if-le v0, v3, :cond_4

    .line 1337
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1338
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1340
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_4
    const/16 v8, 0x7ff

    if-gt v0, v8, :cond_5

    .line 1341
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1342
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    move v6, v7

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    :goto_1
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1346
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1344
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMultiByteChar(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    goto :goto_1

    .line 1347
    .end local v0    # "ch":I
    .end local v6    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    .restart local v7    # "outputPtr":I
    :cond_6
    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1348
    return-void
.end method

.method private final _writeStringSegments(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "addQuotes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    .line 1150
    if-eqz p2, :cond_1

    .line 1151
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_0

    .line 1152
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1154
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v8, v4, v5

    .line 1157
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1158
    .local v1, "left":I
    const/4 v3, 0x0

    .line 1159
    .local v3, "offset":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 1161
    .local v0, "cbuf":[C
    :goto_0
    if-lez v1, :cond_3

    .line 1162
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1163
    .local v2, "len":I
    add-int v4, v3, v2

    invoke-virtual {p1, v3, v4, v0, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1164
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v4, v5, :cond_2

    .line 1165
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1167
    :cond_2
    invoke-direct {p0, v0, v7, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 1168
    add-int/2addr v3, v2

    .line 1169
    sub-int/2addr v1, v2

    .line 1170
    goto :goto_0

    .line 1172
    .end local v2    # "len":I
    :cond_3
    if-eqz p2, :cond_5

    .line 1173
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_4

    .line 1174
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1176
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v8, v4, v5

    .line 1178
    :cond_5
    return-void
.end method

.method private final _writeStringSegments([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "totalLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1190
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1191
    .local v0, "len":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_1

    .line 1192
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1194
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 1195
    add-int/2addr p2, v0

    .line 1196
    sub-int/2addr p3, v0

    .line 1197
    if-gtz p3, :cond_0

    .line 1198
    return-void
.end method

.method private final _writeUTF8Segment([BII)V
    .locals 7
    .param p1, "utf8"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1482
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1484
    .local v2, "escCodes":[I
    move v3, p2

    .local v3, "ptr":I
    add-int v1, p2, p3

    .local v1, "end":I
    move v4, v3

    .end local v3    # "ptr":I
    .local v4, "ptr":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1486
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    aget-byte v0, p1, v4

    .line 1487
    .local v0, "ch":I
    if-ltz v0, :cond_0

    aget v5, v2, v0

    if-eqz v5, :cond_0

    .line 1488
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment2([BII)V

    .line 1499
    .end local v0    # "ch":I
    :goto_1
    return-void

    .restart local v0    # "ch":I
    :cond_0
    move v4, v3

    .line 1491
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    goto :goto_0

    .line 1494
    .end local v0    # "ch":I
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v5, p3

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v5, v6, :cond_2

    .line 1495
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1497
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v5, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1498
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v5, p3

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    move v3, v4

    .line 1499
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_1
.end method

.method private final _writeUTF8Segment2([BII)V
    .locals 10
    .param p1, "utf8"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1504
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1507
    .local v6, "outputPtr":I
    mul-int/lit8 v8, p3, 0x6

    add-int/2addr v8, v6

    iget v9, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v8, v9, :cond_0

    .line 1508
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1509
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1512
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1513
    .local v5, "outputBuffer":[B
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEscapes:[I

    .line 1514
    .local v2, "escCodes":[I
    add-int/2addr p3, p2

    move v7, v6

    .end local v6    # "outputPtr":I
    .local v7, "outputPtr":I
    move v4, p2

    .line 1516
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, p3, :cond_4

    .line 1517
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v4

    .line 1518
    .local v0, "b":B
    move v1, v0

    .line 1519
    .local v1, "ch":I
    if-ltz v1, :cond_1

    aget v8, v2, v1

    if-nez v8, :cond_2

    .line 1520
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    aput-byte v0, v5, v7

    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1521
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1523
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_2
    aget v3, v2, v1

    .line 1524
    .local v3, "escape":I
    if-lez v3, :cond_3

    .line 1525
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    const/16 v8, 0x5c

    aput-byte v8, v5, v7

    .line 1526
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    int-to-byte v8, v3

    aput-byte v8, v5, v6

    move v6, v7

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    :goto_1
    move v7, v6

    .end local v6    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    move v4, p2

    .line 1531
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 1529
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    invoke-direct {p0, v1, v7}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    goto :goto_1

    .line 1532
    .end local v0    # "b":B
    .end local v1    # "ch":I
    .end local v3    # "escape":I
    .end local v6    # "outputPtr":I
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    .restart local v7    # "outputPtr":I
    :cond_4
    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1533
    return-void
.end method

.method private final _writeUTF8Segments([BII)V
    .locals 2
    .param p1, "utf8"    # [B
    .param p2, "offset"    # I
    .param p3, "totalLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1471
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1472
    .local v0, "len":I
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment([BII)V

    .line 1473
    add-int/2addr p2, v0

    .line 1474
    sub-int/2addr p3, v0

    .line 1475
    if-gtz p3, :cond_0

    .line 1476
    return-void
.end method

.method private final _writeUnq(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 3
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v1, v2}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    .line 266
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 267
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method


# virtual methods
.method protected final _decodeSurrogate(II)I
    .locals 5
    .param p1, "surr1"    # I
    .param p2, "surr2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xdc00

    .line 1805
    if-lt p2, v4, :cond_0

    const v2, 0xdfff

    if-le p2, v2, :cond_1

    .line 1806
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete surrogate pair: first char 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", second 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1807
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 1809
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    const/high16 v2, 0x10000

    const v3, 0xd800

    sub-int v3, p1, v3

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    sub-int v3, p2, v4

    add-int v0, v2, v3

    .line 1810
    .local v0, "c":I
    return v0
.end method

.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1850
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1851
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1852
    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1853
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1855
    :cond_0
    return-void
.end method

.method protected final _outputSurrogates(II)V
    .locals 4
    .param p1, "surr1"    # I
    .param p2, "surr2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1762
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_decodeSurrogate(II)I

    move-result v1

    .line 1763
    .local v1, "c":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v2, v3, :cond_0

    .line 1764
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1767
    .local v0, "bbuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1768
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1769
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1770
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v3, v1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1771
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1088
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1089
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_bufferRecyclable:Z

    if-eqz v2, :cond_0

    .line 1090
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 1091
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 1094
    .local v1, "cbuf":[C
    if-eqz v1, :cond_1

    .line 1095
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 1096
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseConcatBuffer([C)V

    .line 1098
    :cond_1
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 1
    .param p1, "typeMsg"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1000
    packed-switch p2, :pswitch_data_0

    .line 1019
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_throwInternal()V

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1002
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 1005
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 1008
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 1012
    :pswitch_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 5
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 960
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeValue()I

    move-result v2

    .line 961
    .local v2, "status":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expecting field name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 964
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-nez v3, :cond_3

    .line 966
    packed-switch v2, :pswitch_data_0

    .line 994
    :cond_1
    :goto_0
    return-void

    .line 968
    :pswitch_0
    const/16 v0, 0x2c

    .line 985
    .local v0, "b":B
    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 986
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 988
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v0, v3, v4

    .line 989
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0

    .line 971
    .end local v0    # "b":B
    :pswitch_1
    const/16 v0, 0x3a

    .line 972
    .restart local v0    # "b":B
    goto :goto_1

    .line 974
    .end local v0    # "b":B
    :pswitch_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v3, :cond_1

    .line 975
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v3}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v1

    .line 976
    .local v1, "raw":[B
    array-length v3, v1

    if-lez v3, :cond_1

    .line 977
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    goto :goto_0

    .line 993
    .end local v1    # "raw":[B
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_0

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    .locals 14
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "readBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1648
    const/4 v4, 0x0

    .line 1649
    .local v4, "inputPtr":I
    const/4 v5, 0x0

    .line 1650
    .local v5, "inputEnd":I
    const/4 v12, -0x3

    .line 1651
    .local v12, "lastFullOffset":I
    const/4 v9, 0x0

    .line 1654
    .local v9, "bytesDone":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v13, v1, -0x6

    .line 1655
    .local v13, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v10, v1, 0x2

    .line 1659
    .local v10, "chunksBeforeLF":I
    :goto_0
    if-le v4, v12, :cond_4

    .line 1660
    move-object/from16 v0, p3

    array-length v6, v0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1661
    const/4 v4, 0x0

    .line 1662
    const/4 v1, 0x3

    if-ge v5, v1, :cond_3

    .line 1684
    if-ge v4, v5, :cond_2

    .line 1685
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v13, :cond_0

    .line 1686
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1688
    :cond_0
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .local v11, "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x10

    .line 1689
    .local v8, "b24":I
    const/4 v7, 0x1

    .line 1690
    .local v7, "amount":I
    if-ge v11, v5, :cond_1

    .line 1691
    aget-byte v1, p3, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v8, v1

    .line 1692
    const/4 v7, 0x2

    .line 1694
    :cond_1
    add-int/2addr v9, v7

    .line 1695
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v7, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    move v4, v11

    .line 1697
    .end local v7    # "amount":I
    .end local v8    # "b24":I
    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_2
    return v9

    .line 1665
    :cond_3
    add-int/lit8 v12, v5, -0x3

    .line 1667
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v13, :cond_5

    .line 1668
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1671
    :cond_5
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v11    # "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x8

    .line 1672
    .restart local v8    # "b24":I
    add-int/lit8 v4, v11, 0x1

    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v1, p3, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v8, v1

    .line 1673
    shl-int/lit8 v1, v8, 0x8

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v11    # "inputPtr":I
    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    or-int v8, v1, v2

    .line 1674
    add-int/lit8 v9, v9, 0x3

    .line 1675
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1676
    add-int/lit8 v10, v10, -0x1

    if-gtz v10, :cond_6

    .line 1677
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v3, 0x5c

    aput-byte v3, v1, v2

    .line 1678
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    .line 1679
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v10, v1, 0x2

    :cond_6
    move v4, v11

    .line 1681
    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto/16 :goto_0
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I
    .locals 13
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "readBuffer"    # [B
    .param p4, "bytesLeft"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1588
    const/4 v4, 0x0

    .line 1589
    .local v4, "inputPtr":I
    const/4 v5, 0x0

    .line 1590
    .local v5, "inputEnd":I
    const/4 v11, -0x3

    .line 1593
    .local v11, "lastFullOffset":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v12, v1, -0x6

    .line 1594
    .local v12, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v9, v1, 0x2

    .line 1596
    .local v9, "chunksBeforeLF":I
    :goto_0
    const/4 v1, 0x2

    move/from16 v0, p4

    if-le v0, v1, :cond_0

    .line 1597
    if-le v4, v11, :cond_4

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    .line 1598
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1599
    const/4 v4, 0x0

    .line 1600
    const/4 v1, 0x3

    if-ge v5, v1, :cond_3

    .line 1621
    :cond_0
    if-lez p4, :cond_2

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    .line 1622
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1623
    const/4 v4, 0x0

    .line 1624
    if-lez v5, :cond_2

    .line 1625
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v12, :cond_1

    .line 1626
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1628
    :cond_1
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .local v10, "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x10

    .line 1630
    .local v8, "b24":I
    if-ge v10, v5, :cond_7

    .line 1631
    aget-byte v1, p3, v10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v8, v1

    .line 1632
    const/4 v7, 0x2

    .line 1636
    .local v7, "amount":I
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v7, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1637
    sub-int p4, p4, v7

    move v4, v10

    .line 1640
    .end local v7    # "amount":I
    .end local v8    # "b24":I
    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_2
    return p4

    .line 1603
    :cond_3
    add-int/lit8 v11, v5, -0x3

    .line 1605
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v1, v12, :cond_5

    .line 1606
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1608
    :cond_5
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x8

    .line 1609
    .restart local v8    # "b24":I
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v1, p3, v10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v8, v1

    .line 1610
    shl-int/lit8 v1, v8, 0x8

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    or-int v8, v1, v2

    .line 1611
    add-int/lit8 p4, p4, -0x3

    .line 1612
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1613
    add-int/lit8 v9, v9, -0x1

    if-gtz v9, :cond_6

    .line 1614
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v3, 0x5c

    aput-byte v3, v1, v2

    .line 1615
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    .line 1616
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v9, v1, 0x2

    :cond_6
    move v4, v10

    .line 1618
    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto/16 :goto_0

    .line 1634
    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    :cond_7
    const/4 v7, 0x1

    .restart local v7    # "amount":I
    goto :goto_1
.end method

.method protected final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 9
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "input"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1546
    add-int/lit8 v4, p4, -0x3

    .line 1548
    .local v4, "safeInputEnd":I
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    add-int/lit8 v5, v6, -0x6

    .line 1549
    .local v5, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    .local v1, "chunksBeforeLF":I
    move v3, p3

    .line 1552
    .end local p3    # "inputPtr":I
    .local v3, "inputPtr":I
    :goto_0
    if-gt v3, v4, :cond_2

    .line 1553
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v6, v5, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1557
    :cond_0
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x8

    .line 1558
    .local v0, "b24":I
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 1559
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 1560
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[BI)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1561
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 1563
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v8, 0x5c

    aput-byte v8, v6, v7

    .line 1564
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-byte v8, v6, v7

    .line 1565
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    :cond_1
    move v3, p3

    .line 1567
    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .line 1570
    .end local v0    # "b24":I
    :cond_2
    sub-int v2, p4, v3

    .line 1571
    .local v2, "inputLeft":I
    if-lez v2, :cond_5

    .line 1572
    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    if-le v6, v5, :cond_3

    .line 1573
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1575
    :cond_3
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x10

    .line 1576
    .restart local v0    # "b24":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1577
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    move p3, v3

    .line 1579
    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v2, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[BI)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 1581
    .end local v0    # "b24":I
    :goto_1
    return-void

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_5
    move p3, v3

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    goto :goto_1
.end method

.method protected final _writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 6
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v0, 0x1

    .line 389
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    .line 390
    .local v1, "status":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 391
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 393
    :cond_0
    if-ne v1, v0, :cond_5

    .line 394
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 399
    :goto_0
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    if-nez v2, :cond_6

    .line 400
    .local v0, "addQuotes":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 401
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v2, v3

    .line 406
    :cond_2
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 407
    if-eqz v0, :cond_4

    .line 408
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 411
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v2, v3

    .line 413
    :cond_4
    return-void

    .line 396
    .end local v0    # "addQuotes":Z
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 399
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final _writePPFieldName(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 349
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    .line 350
    .local v1, "status":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 351
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 353
    :cond_0
    if-ne v1, v3, :cond_1

    .line 354
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 358
    :goto_0
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    if-eqz v2, :cond_2

    .line 359
    invoke-direct {p0, p1, v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    .line 385
    :goto_1
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v2, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 363
    .local v0, "len":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    if-le v0, v2, :cond_3

    .line 364
    invoke-direct {p0, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    goto :goto_1

    .line 367
    :cond_3
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 368
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 370
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v2, v3

    .line 371
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-virtual {p1, v5, v0, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 373
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt v0, v2, :cond_7

    .line 374
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v2, v3, :cond_5

    .line 375
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 377
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v2, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 381
    :goto_2
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_6

    .line 382
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 384
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v2, v3

    goto :goto_1

    .line 379
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v2, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    goto :goto_2
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    invoke-super {p0}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->close()V

    .line 1052
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    .line 1056
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 1065
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1073
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    .line 1074
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1075
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1082
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_releaseBuffers()V

    .line 1083
    return-void

    .line 1076
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1078
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 1035
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1036
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1040
    :cond_0
    return-void
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    .line 727
    const-string v3, "write binary value"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 729
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 732
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v3, v4

    .line 733
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    .line 736
    .local v1, "encodingBuffer":[B
    if-gez p3, :cond_2

    .line 737
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 746
    .local v0, "bytes":I
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 749
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_1

    .line 750
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 752
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v6, v3, v4

    .line 753
    return v0

    .line 739
    .end local v0    # "bytes":I
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I

    move-result v2

    .line 740
    .local v2, "missing":I
    if-lez v2, :cond_3

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too few bytes available: missing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes (out of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    :cond_3
    move v0, p3

    .restart local v0    # "bytes":I
    goto :goto_0

    .line 746
    .end local v0    # "bytes":I
    .end local v2    # "missing":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v3
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 4
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 708
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 710
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 714
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 716
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 720
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 932
    const-string v2, "write boolean value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 933
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 936
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->TRUE_BYTES:[B

    .line 937
    .local v0, "keyword":[B
    :goto_0
    array-length v1, v0

    .line 938
    .local v1, "len":I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 939
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    .line 940
    return-void

    .line 936
    .end local v0    # "keyword":[B
    .end local v1    # "len":I
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->FALSE_BYTES:[B

    goto :goto_0
.end method

.method public final writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 309
    return-void

    .line 303
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 341
    return-void

    .line 335
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 6
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    .line 230
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 262
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, "status":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 236
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 238
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 239
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v4, 0x2c

    aput-byte v4, v2, v3

    .line 244
    :cond_3
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    if-eqz v2, :cond_4

    .line 245
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUnq(Lcom/fasterxml/jackson/core/SerializableString;)V

    goto :goto_0

    .line 248
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_5

    .line 249
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 251
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v2, v3

    .line 252
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v2, v3}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    .line 253
    .local v0, "len":I
    if-gez v0, :cond_7

    .line 254
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 258
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_6

    .line 259
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 261
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v2, v3

    goto :goto_0

    .line 256
    :cond_7
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_1
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writePPFieldName(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "status":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 185
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 187
    :cond_1
    if-ne v1, v6, :cond_3

    .line 188
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v4, 0x2c

    aput-byte v4, v2, v3

    .line 196
    :cond_3
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgUnqNames:Z

    if-eqz v2, :cond_4

    .line 197
    invoke-direct {p0, p1, v5}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 202
    .local v0, "len":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    if-le v0, v2, :cond_5

    .line 203
    invoke-direct {p0, p1, v6}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    goto :goto_0

    .line 206
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_6

    .line 207
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 209
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v7, v2, v3

    .line 210
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-virtual {p1, v5, v0, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 212
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt v0, v2, :cond_9

    .line 213
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v2, v3, :cond_7

    .line 214
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 216
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v2, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 221
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_8

    .line 222
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 224
    :cond_8
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v7, v2, v3

    goto :goto_0

    .line 218
    :cond_9
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v2, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    goto :goto_1
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 946
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 947
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    .line 948
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 868
    :goto_0
    return-void

    .line 866
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 867
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(F)V
    .locals 1
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 878
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 884
    :goto_0
    return-void

    .line 882
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 883
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 791
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 793
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 796
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 797
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedInt(I)V

    .line 801
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 2
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 817
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 818
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 819
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedLong(J)V

    .line 827
    :goto_0
    return-void

    .line 822
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 907
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 908
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 909
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 891
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 892
    if-nez p1, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    .line 901
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 895
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 896
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 843
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 844
    if-nez p1, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    .line 851
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 847
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(S)V
    .locals 2
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 766
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 768
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 771
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 772
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeQuotedShort(S)V

    .line 776
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeRaw(C)V
    .locals 4
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 643
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    .line 647
    .local v0, "bbuf":[B
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    .line 648
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 655
    :goto_0
    return-void

    .line 649
    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    .line 650
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 651
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 653
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    goto :goto_0
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 2
    .param p1, "text"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v0

    .line 590
    .local v0, "raw":[B
    array-length v1, v0

    if-lez v1, :cond_0

    .line 591
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 593
    :cond_0
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 558
    const/4 v4, 0x0

    .line 559
    .local v4, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 560
    .local v2, "len":I
    :goto_0
    if-lez v2, :cond_1

    .line 561
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 562
    .local v1, "buf":[C
    array-length v0, v1

    .line 563
    .local v0, "blen":I
    if-ge v2, v0, :cond_0

    move v3, v2

    .line 564
    .local v3, "len2":I
    :goto_1
    add-int v5, v4, v3

    invoke-virtual {p1, v4, v5, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 565
    invoke-virtual {p0, v1, v6, v3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw([CII)V

    .line 566
    add-int/2addr v4, v3

    .line 567
    sub-int/2addr v2, v3

    .line 568
    goto :goto_0

    .end local v3    # "len2":I
    :cond_0
    move v3, v0

    .line 563
    goto :goto_1

    .line 569
    .end local v0    # "blen":I
    .end local v1    # "buf":[C
    :cond_1
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 575
    :goto_0
    if-lez p3, :cond_1

    .line 576
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    .line 577
    .local v1, "buf":[C
    array-length v0, v1

    .line 578
    .local v0, "blen":I
    if-ge p3, v0, :cond_0

    move v2, p3

    .line 579
    .local v2, "len2":I
    :goto_1
    add-int v3, p2, v2

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 580
    invoke-virtual {p0, v1, v4, v2}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->writeRaw([CII)V

    .line 581
    add-int/2addr p2, v2

    .line 582
    sub-int/2addr p3, v2

    .line 583
    goto :goto_0

    .end local v2    # "len2":I
    :cond_0
    move v2, v0

    .line 578
    goto :goto_1

    .line 584
    .end local v0    # "blen":I
    .end local v1    # "buf":[C
    :cond_1
    return-void
.end method

.method public final writeRaw([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 602
    add-int v3, p3, p3

    add-int v1, v3, p3

    .line 603
    .local v1, "len3":I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v3, v4, :cond_2

    .line 605
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-ge v3, v1, :cond_1

    .line 606
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeSegmentedRaw([CII)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 613
    :cond_2
    add-int/2addr p3, p2

    .line 617
    :goto_1
    if-ge p2, p3, :cond_0

    .line 620
    :cond_3
    aget-char v0, p1, p2

    .line 621
    .local v0, "ch":I
    const/16 v3, 0x7f

    if-le v0, v3, :cond_4

    .line 629
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    aget-char v0, p1, p2

    .line 630
    .local v0, "ch":C
    const/16 v3, 0x800

    if-ge v0, v3, :cond_5

    .line 631
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 632
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move p2, v2

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 624
    .local v0, "ch":I
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 625
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_3

    goto :goto_0

    .line 634
    .end local p2    # "offset":I
    .local v0, "ch":C
    .restart local v2    # "offset":I
    :cond_5
    invoke-direct {p0, v0, p1, v2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputRawMultiByteChar(I[CII)I

    move-result p2

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1
.end method

.method public writeRawUTF8String([BII)V
    .locals 4
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 516
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 517
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 521
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([BII)V

    .line 522
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 526
    return-void
.end method

.method public final writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 284
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 316
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 5
    .param p1, "text"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 496
    const-string v1, "write text value"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 497
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 501
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    invoke-interface {p1, v1, v2}, Lcom/fasterxml/jackson/core/SerializableString;->appendQuotedUTF8([BI)I

    move-result v0

    .line 502
    .local v0, "len":I
    if-gez v0, :cond_2

    .line 503
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeBytes([B)V

    .line 507
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 511
    return-void

    .line 505
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 424
    const-string v1, "write text value"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 425
    if-nez p1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeNull()V

    .line 454
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 431
    .local v0, "len":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBufferLength:I

    if-le v0, v1, :cond_1

    .line 432
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments(Ljava/lang/String;Z)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 438
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-le v0, v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeLongString([CII)V

    goto :goto_0

    .line 442
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_3

    .line 443
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 445
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v1, v2

    .line 446
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 450
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_4

    .line 451
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v5, v1, v2

    goto :goto_0
.end method

.method public writeString([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 472
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 473
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 478
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt p3, v0, :cond_3

    .line 479
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 482
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegment([CII)V

    .line 487
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 491
    return-void

    .line 484
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeStringSegments([CII)V

    goto :goto_0
.end method

.method public writeUTF8String([BII)V
    .locals 4
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 531
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 532
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 537
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputMaxContiguous:I

    if-gt p3, v0, :cond_2

    .line 538
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segment([BII)V

    .line 542
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_flushBuffer()V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 546
    return-void

    .line 540
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->_writeUTF8Segments([BII)V

    goto :goto_0
.end method
