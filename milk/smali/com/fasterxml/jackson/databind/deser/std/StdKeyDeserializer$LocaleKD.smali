.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocaleKD"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _localeDeserializer:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 258
    const-class v0, Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;->_localeDeserializer:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;

    return-void
.end method


# virtual methods
.method protected bridge synthetic _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;->_parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Locale;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;->_localeDeserializer:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Locale;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;->_keyClass:Ljava/lang/Class;

    const-string v1, "unable to parse key as locale"

    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method
