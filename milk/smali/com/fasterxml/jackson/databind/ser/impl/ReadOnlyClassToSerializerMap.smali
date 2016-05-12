.class public final Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
.super Ljava/lang/Object;
.source "ReadOnlyClassToSerializerMap.java"


# instance fields
.field protected _cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

.field protected final _map:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 31
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;

    .line 32
    return-void
.end method

.method public static from(Ljava/util/HashMap;)Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;)V

    return-object v0
.end method


# virtual methods
.method public instance()Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;)V

    return-object v0
.end method

.method public typedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->find(Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->resetTyped(Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_0
.end method

.method public typedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->find(Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->resetTyped(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public untypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->find(Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->resetUntyped(Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_0
.end method

.method public untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->find(Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->resetUntyped(Ljava/lang/Class;)V

    goto :goto_0
.end method
