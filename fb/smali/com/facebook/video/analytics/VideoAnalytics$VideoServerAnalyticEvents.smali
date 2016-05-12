.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

.field public static final enum LAUNCH_SERVER:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

.field public static final enum SHUTDOWN_SERVER:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

.field public static final enum VIDEO_CACHE_REQUEST_ABORTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

.field public static final enum VIDEO_CACHE_REQUEST_FAILED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

.field public static final enum VIDEO_CACHE_REQUEST_FINISHED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

.field public static final enum VIDEO_PREFETCH:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    const-string v1, "LAUNCH_SERVER"

    const-string v2, "launch_video_server"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->LAUNCH_SERVER:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    .line 90
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    const-string v1, "SHUTDOWN_SERVER"

    const-string v2, "shutdown_video_server"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->SHUTDOWN_SERVER:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    .line 91
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    const-string v1, "VIDEO_CACHE_REQUEST_FINISHED"

    const-string v2, "video_cache_request_finished"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_FINISHED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    .line 92
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    const-string v1, "VIDEO_CACHE_REQUEST_ABORTED"

    const-string v2, "video_cache_request_aborted"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_ABORTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    .line 93
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    const-string v1, "VIDEO_CACHE_REQUEST_FAILED"

    const-string v2, "video_cache_request_failed"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_FAILED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    .line 94
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    const-string v1, "VIDEO_PREFETCH"

    const/4 v2, 0x5

    const-string v3, "video_prefetch"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_PREFETCH:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->LAUNCH_SERVER:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->SHUTDOWN_SERVER:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_FINISHED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_ABORTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_CACHE_REQUEST_FAILED:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->VIDEO_PREFETCH:Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->value:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoServerAnalyticEvents;

    return-object v0
.end method
