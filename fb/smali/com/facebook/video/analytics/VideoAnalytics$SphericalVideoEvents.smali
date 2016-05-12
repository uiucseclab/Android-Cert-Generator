.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

.field public static final enum SPHERICAL_VIDEO_VIEWPORT_CHANGE:Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 519
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

    const-string v1, "SPHERICAL_VIDEO_VIEWPORT_CHANGE"

    const-string v2, "spherical_video_viewport_change"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;->SPHERICAL_VIDEO_VIEWPORT_CHANGE:Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

    .line 518
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;->SPHERICAL_VIDEO_VIEWPORT_CHANGE:Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

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
    .line 522
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 523
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;->value:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;
    .locals 1

    .prologue
    .line 518
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$SphericalVideoEvents;

    return-object v0
.end method
