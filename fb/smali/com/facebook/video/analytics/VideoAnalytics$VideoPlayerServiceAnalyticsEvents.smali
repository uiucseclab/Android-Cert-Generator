.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

.field public static final enum VIDEO_PLAYER_SERVICE_DISCONNECTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

.field public static final enum VIDEO_PLAYER_SERVICE_RECONNECTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

.field public static final enum VIDEO_PLAYER_SERVICE_UNAVAILABLE:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    const-string v1, "VIDEO_PLAYER_SERVICE_RECONNECTED"

    const-string v2, "video_player_service_reconnected"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->VIDEO_PLAYER_SERVICE_RECONNECTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    .line 104
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    const-string v1, "VIDEO_PLAYER_SERVICE_DISCONNECTED"

    const-string v2, "video_player_service_disconnected"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->VIDEO_PLAYER_SERVICE_DISCONNECTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    .line 105
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    const-string v1, "VIDEO_PLAYER_SERVICE_UNAVAILABLE"

    const-string v2, "video_player_service_unavailable"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->VIDEO_PLAYER_SERVICE_UNAVAILABLE:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->VIDEO_PLAYER_SERVICE_RECONNECTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->VIDEO_PLAYER_SERVICE_DISCONNECTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->VIDEO_PLAYER_SERVICE_UNAVAILABLE:Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->value:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoPlayerServiceAnalyticsEvents;

    return-object v0
.end method
