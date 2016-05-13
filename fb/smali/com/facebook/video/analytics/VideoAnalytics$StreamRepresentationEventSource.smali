.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

.field public static final enum COMPLETED:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

.field public static final enum PAUSED:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

.field public static final enum STREAM_SWITCH:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 504
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    const-string v1, "STREAM_SWITCH"

    const-string v2, "stream_switch"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->STREAM_SWITCH:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    .line 505
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    const-string v1, "PAUSED"

    const-string v2, "paused"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->PAUSED:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    .line 506
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    const-string v1, "COMPLETED"

    const-string v2, "completed"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->COMPLETED:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    .line 503
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->STREAM_SWITCH:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->PAUSED:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->COMPLETED:Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 510
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->value:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;
    .locals 1

    .prologue
    .line 503
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$StreamRepresentationEventSource;

    return-object v0
.end method
