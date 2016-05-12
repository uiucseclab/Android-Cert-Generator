.class public Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.super Ljava/lang/Object;
.source "NumberDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
    }
.end annotation


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    .line 30
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Character;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Number;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Ljava/math/BigDecimal;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v1, v2

    .line 42
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 43
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    return-void
.end method

.method public static all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 53
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v1, v2, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    const-class v3, Ljava/lang/Byte;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    const-class v3, Ljava/lang/Short;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    const-class v3, Ljava/lang/Character;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    const-class v3, Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    const-class v3, Ljava/lang/Long;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    const-class v3, Ljava/lang/Float;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    const-class v3, Ljava/lang/Double;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 87
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->access$000()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 90
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;->access$100()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 93
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->access$200()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 96
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->access$300()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 99
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->access$400()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 102
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->access$500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 105
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;->access$600()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_13

    .line 108
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->access$700()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_7
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 112
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_8

    .line 113
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->access$800()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_8
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_9

    .line 116
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;->access$900()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_9
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_a

    .line 119
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->access$1000()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_a
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_b

    .line 122
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->access$1100()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_b
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_c

    .line 125
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->access$1200()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_c
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_d

    .line 128
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->access$1300()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_d
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_e

    .line 131
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;->access$1400()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    move-result-object v0

    goto/16 :goto_0

    .line 133
    :cond_e
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_f

    .line 134
    # getter for: Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->access$1500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :cond_f
    const-class v0, Ljava/lang/Number;

    if-ne p0, v0, :cond_10

    .line 137
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;

    goto/16 :goto_0

    .line 139
    :cond_10
    const-class v0, Ljava/math/BigDecimal;

    if-ne p0, v0, :cond_11

    .line 140
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;

    goto/16 :goto_0

    .line 142
    :cond_11
    const-class v0, Ljava/math/BigInteger;

    if-ne p0, v0, :cond_13

    .line 143
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;

    goto/16 :goto_0

    .line 146
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 149
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: can\'t find deserializer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
