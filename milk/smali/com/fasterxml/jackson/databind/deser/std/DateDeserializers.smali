.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.super Ljava/lang/Object;
.source "DateDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
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

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    .line 31
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/Calendar;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-class v3, Ljava/util/GregorianCalendar;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/sql/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/sql/Timestamp;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/util/TimeZone;

    aput-object v3, v1, v2

    .line 39
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 40
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
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
    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    const/4 v1, 0x0

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->gregorianInstance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;

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
    .line 65
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-class v0, Ljava/util/Calendar;

    if-ne p0, v0, :cond_1

    .line 70
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    goto :goto_0

    .line 72
    :cond_1
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_2

    .line 73
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    goto :goto_0

    .line 75
    :cond_2
    const-class v0, Ljava/sql/Date;

    if-ne p0, v0, :cond_3

    .line 76
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    goto :goto_0

    .line 78
    :cond_3
    const-class v0, Ljava/sql/Timestamp;

    if-ne p0, v0, :cond_4

    .line 79
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;

    goto :goto_0

    .line 81
    :cond_4
    const-class v0, Ljava/util/TimeZone;

    if-ne p0, v0, :cond_5

    .line 82
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;

    goto :goto_0

    .line 84
    :cond_5
    const-class v0, Ljava/util/GregorianCalendar;

    if-ne p0, v0, :cond_6

    .line 85
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->gregorianInstance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    goto :goto_0

    .line 88
    :cond_6
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
