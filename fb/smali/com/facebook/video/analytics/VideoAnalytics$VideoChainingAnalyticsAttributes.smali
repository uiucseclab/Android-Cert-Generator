.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

.field public static final enum VIDEO_CHAINING_DEPTH_LEVEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

.field public static final enum VIDEO_CHAINING_SESSION_ID:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

.field public static final enum VIDEO_CHAINING_SOURCE:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    const-string v1, "VIDEO_CHAINING_DEPTH_LEVEL"

    const-string v2, "video_chaining_depth_level"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->VIDEO_CHAINING_DEPTH_LEVEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    .line 230
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    const-string v1, "VIDEO_CHAINING_SESSION_ID"

    const-string v2, "video_chaining_session_id"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->VIDEO_CHAINING_SESSION_ID:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    .line 231
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    const-string v1, "VIDEO_CHAINING_SOURCE"

    const-string v2, "video_chaining_source"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->VIDEO_CHAINING_SOURCE:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    .line 228
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->VIDEO_CHAINING_DEPTH_LEVEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->VIDEO_CHAINING_SESSION_ID:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->VIDEO_CHAINING_SOURCE:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

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
    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 235
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->value:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;
    .locals 1

    .prologue
    .line 228
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingAnalyticsAttributes;

    return-object v0
.end method
