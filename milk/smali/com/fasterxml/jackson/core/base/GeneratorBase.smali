.class public abstract Lcom/fasterxml/jackson/core/base/GeneratorBase;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "GeneratorBase.java"


# instance fields
.field protected _cfgNumbersAsStrings:Z

.field protected _closed:Z

.field protected _features:I

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 2
    .param p1, "features"    # I
    .param p2, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    .line 67
    iput p1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    .line 68
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/DupDetector;->rootDetector(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v0

    .line 70
    .local v0, "dups":Lcom/fasterxml/jackson/core/json/DupDetector;
    :goto_0
    invoke-static {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 71
    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 72
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    .line 73
    return-void

    .line 68
    .end local v0    # "dups":Lcom/fasterxml/jackson/core/json/DupDetector;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract _releaseBuffers()V
.end method

.method protected abstract _verifyValueWrite(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_closed:Z

    return-void
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 3
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    const/4 v2, 0x0

    .line 100
    iget v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    .line 101
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    .line 102
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    .line 106
    :cond_0
    :goto_0
    return-object p0

    .line 103
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    .line 104
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 89
    iget v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    .line 90
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    .line 95
    :cond_0
    :goto_0
    return-object p0

    .line 92
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    .line 93
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getFeatureMask()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    return v0
.end method

.method public bridge synthetic getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_closed:Z

    return v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 111
    iget v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .param p1, "oc"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 131
    return-object p0
.end method

.method public setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    .line 116
    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    .end local p0    # "this":Lcom/fasterxml/jackson/core/base/GeneratorBase;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/core/base/GeneratorBase;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p0

    goto :goto_0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 1
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_reportUnsupportedOperation()V

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeFieldName(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNull()V

    .line 244
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeSimpleObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeRaw(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeRaw(Ljava/lang/String;II)V

    .line 189
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeRaw([CII)V

    .line 194
    return-void
.end method

.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .param p1, "text"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeString(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public writeTree(Lcom/fasterxml/jackson/core/TreeNode;)V
    .locals 2
    .param p1, "rootNode"    # Lcom/fasterxml/jackson/core/TreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNull()V

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0
.end method
