.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.super Ljava/lang/Object;
.source "JdkDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;
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

    .line 26
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    .line 29
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/UUID;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-class v3, Ljava/net/URL;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/net/URI;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/util/Currency;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/util/regex/Pattern;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/util/Locale;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/net/InetAddress;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Ljava/nio/charset/Charset;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Ljava/lang/StackTraceElement;

    aput-object v3, v1, v2

    .line 44
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 45
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method public static all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
    .locals 3
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
    .line 55
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    const/4 v1, 0x0

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;

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
    .line 78
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const-class v0, Ljava/net/URI;

    if-ne p0, v0, :cond_1

    .line 85
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;

    goto :goto_0

    .line 87
    :cond_1
    const-class v0, Ljava/net/URL;

    if-ne p0, v0, :cond_2

    .line 88
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;

    goto :goto_0

    .line 90
    :cond_2
    const-class v0, Ljava/io/File;

    if-ne p0, v0, :cond_3

    .line 91
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;

    goto :goto_0

    .line 95
    :cond_3
    const-class v0, Ljava/util/UUID;

    if-ne p0, v0, :cond_4

    .line 96
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;

    goto :goto_0

    .line 98
    :cond_4
    const-class v0, Ljava/util/Currency;

    if-ne p0, v0, :cond_5

    .line 99
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;

    goto :goto_0

    .line 101
    :cond_5
    const-class v0, Ljava/util/regex/Pattern;

    if-ne p0, v0, :cond_6

    .line 102
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;

    goto :goto_0

    .line 104
    :cond_6
    const-class v0, Ljava/util/Locale;

    if-ne p0, v0, :cond_7

    .line 105
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;

    goto :goto_0

    .line 107
    :cond_7
    const-class v0, Ljava/net/InetAddress;

    if-ne p0, v0, :cond_8

    .line 108
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;

    goto :goto_0

    .line 110
    :cond_8
    const-class v0, Ljava/nio/charset/Charset;

    if-ne p0, v0, :cond_9

    .line 111
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;

    goto :goto_0

    .line 113
    :cond_9
    const-class v0, Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    .line 114
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;

    goto :goto_0

    .line 116
    :cond_a
    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p0, v0, :cond_b

    .line 117
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;

    goto :goto_0

    .line 119
    :cond_b
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p0, v0, :cond_c

    .line 121
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;

    goto :goto_0

    .line 124
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: can\'t find deserializer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
