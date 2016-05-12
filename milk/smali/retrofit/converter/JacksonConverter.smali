.class public Lretrofit/converter/JacksonConverter;
.super Ljava/lang/Object;
.source "JacksonConverter.java"

# interfaces
.implements Lretrofit/converter/Converter;


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "application/json; charset=UTF-8"


# instance fields
.field private final objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .param p1, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit/converter/JacksonConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 30
    return-void
.end method


# virtual methods
.method public fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .param p1, "body"    # Lretrofit/mime/TypedInput;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit/converter/ConversionException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 35
    .local v1, "javaType":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v2, p0, Lretrofit/converter/JacksonConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-interface {p1}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 36
    .end local v1    # "javaType":Lcom/fasterxml/jackson/databind/JavaType;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    new-instance v2, Lretrofit/converter/ConversionException;

    invoke-direct {v2, v0}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 38
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    new-instance v2, Lretrofit/converter/ConversionException;

    invoke-direct {v2, v0}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 40
    .end local v0    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :catch_2
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lretrofit/converter/ConversionException;

    invoke-direct {v2, v0}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 47
    :try_start_0
    iget-object v2, p0, Lretrofit/converter/JacksonConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lretrofit/mime/TypedByteArray;

    const-string v3, "application/json; charset=UTF-8"

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lretrofit/mime/TypedByteArray;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 49
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 51
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
