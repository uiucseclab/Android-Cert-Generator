.class public final enum Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;
.super Ljava/lang/Enum;
.source "stsd"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

.field public static final enum JSON_PARSE_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

.field public static final enum UNEXPECTED_TOPIC:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    const-string v1, "JSON_PARSE_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->JSON_PARSE_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    .line 50
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    const-string v1, "UNEXPECTED_TOPIC"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->UNEXPECTED_TOPIC:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->JSON_PARSE_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->UNEXPECTED_TOPIC:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->$VALUES:[Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->$VALUES:[Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    invoke-virtual {v0}, [Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    return-object v0
.end method
