.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

.field public static final enum CAST_BUTTON_CLICK_TYPE:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

.field public static final enum DISCONNECT_REASON_CODE:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 482
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    const-string v1, "CAST_BUTTON_CLICK_TYPE"

    const-string v2, "cast_button_click_type"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;->CAST_BUTTON_CLICK_TYPE:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    .line 483
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    const-string v1, "DISCONNECT_REASON_CODE"

    const-string v2, "disconnect_reason_code"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;->DISCONNECT_REASON_CODE:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    .line 481
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;->CAST_BUTTON_CLICK_TYPE:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;->DISCONNECT_REASON_CODE:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

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
    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 488
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;->value:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;
    .locals 1

    .prologue
    .line 481
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$ChromecastVideoAnalyticsAttributes;

    return-object v0
.end method
