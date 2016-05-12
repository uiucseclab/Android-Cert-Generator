.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

.field public static final enum DASH:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

.field public static final enum HLS:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

.field public static final enum PROGRESSIVE_DOWNLOAD:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

.field public static final enum RTMP:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 444
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    const-string v1, "DASH"

    const-string v2, "dash"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->DASH:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    .line 445
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    const-string v1, "HLS"

    const-string v2, "hls"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->HLS:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    .line 446
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    const-string v1, "RTMP"

    const-string v2, "rtmp"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->RTMP:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    .line 447
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    const-string v1, "PROGRESSIVE_DOWNLOAD"

    const-string v2, "progressive"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->PROGRESSIVE_DOWNLOAD:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    .line 443
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->DASH:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->HLS:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->RTMP:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->PROGRESSIVE_DOWNLOAD:Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

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
    .line 450
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 451
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->value:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;
    .locals 1

    .prologue
    .line 443
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$StreamingFormat;

    return-object v0
.end method
