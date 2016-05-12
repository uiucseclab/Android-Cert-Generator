.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "StdKeyDeserializers.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcd01b6e7cfbcee7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructStringKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    move-result-object v0

    return-object v0
.end method

.method public static findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 66
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 71
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 84
    :goto_0
    return-object v0

    .line 76
    :cond_1
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 81
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 100
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 103
    :cond_1
    const-class v1, Ljava/util/UUID;

    if-ne v0, v1, :cond_2

    .line 104
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;-><init>()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 112
    :cond_3
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_4

    .line 113
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;-><init>()V

    goto :goto_0

    .line 115
    :cond_4
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    .line 116
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;-><init>()V

    goto :goto_0

    .line 118
    :cond_5
    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_6

    .line 119
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;-><init>()V

    goto :goto_0

    .line 121
    :cond_6
    const-class v1, Ljava/util/Calendar;

    if-ne v0, v1, :cond_7

    .line 122
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;-><init>()V

    goto :goto_0

    .line 126
    :cond_7
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_8

    .line 127
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;-><init>()V

    goto :goto_0

    .line 129
    :cond_8
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_9

    .line 130
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;-><init>()V

    goto :goto_0

    .line 132
    :cond_9
    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_a

    .line 133
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;-><init>()V

    goto :goto_0

    .line 135
    :cond_a
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_b

    .line 136
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;-><init>()V

    goto :goto_0

    .line 138
    :cond_b
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_c

    .line 139
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;-><init>()V

    goto :goto_0

    .line 141
    :cond_c
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_d

    .line 142
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;-><init>()V

    goto :goto_0

    .line 144
    :cond_d
    const-class v1, Ljava/util/Locale;

    if-ne v0, v1, :cond_e

    .line 145
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;-><init>()V

    goto/16 :goto_0

    .line 147
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
