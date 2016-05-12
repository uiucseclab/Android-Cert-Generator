.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

.field public static final enum CHANNEL_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

.field public static final enum CHROMECAST_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

.field public static final enum FULL_SCREEN_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

.field public static final enum INLINE_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

.field public static final enum OTHERS:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

.field public static final enum RICH_DOCUMENT:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

.field public static final enum YOUTUBE_FULL_SCREEN_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;


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

    .line 459
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    const-string v1, "CHANNEL_PLAYER"

    const-string v2, "channel"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->CHANNEL_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 460
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    const-string v1, "INLINE_PLAYER"

    const-string v2, "inline"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->INLINE_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 461
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    const-string v1, "FULL_SCREEN_PLAYER"

    const-string v2, "full_screen"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->FULL_SCREEN_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 462
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    const-string v1, "YOUTUBE_FULL_SCREEN_PLAYER"

    const-string v2, "youtube_full_screen"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->YOUTUBE_FULL_SCREEN_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 463
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    const-string v1, "CHROMECAST_PLAYER"

    const-string v2, "chromecast"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->CHROMECAST_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 464
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    const-string v1, "RICH_DOCUMENT"

    const/4 v2, 0x5

    const-string v3, "rich_document"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->RICH_DOCUMENT:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 465
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    const-string v1, "OTHERS"

    const/4 v2, 0x6

    const-string v3, "others"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->OTHERS:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 458
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->CHANNEL_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->INLINE_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->FULL_SCREEN_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->YOUTUBE_FULL_SCREEN_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->CHROMECAST_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->RICH_DOCUMENT:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->OTHERS:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

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
    .line 469
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 470
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->value:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public static asPlayerType(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;
    .locals 1

    .prologue
    .line 474
    :try_start_0
    invoke-static {p0}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->INLINE_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;
    .locals 1

    .prologue
    .line 458
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    return-object v0
.end method
