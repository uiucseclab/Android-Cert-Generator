.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

.field public static final enum CARDS:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

.field public static final enum CAROUSEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

.field public static final enum CHANNEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

.field public static final enum INLINE_FEED:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

.field public static final enum POSTPLAY:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    const-string v1, "CAROUSEL"

    const-string v2, "carousel"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->CAROUSEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    .line 241
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    const-string v1, "CARDS"

    const-string v2, "cards"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->CARDS:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    .line 242
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    const-string v1, "POSTPLAY"

    const-string v2, "postplay"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->POSTPLAY:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    .line 243
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    const-string v1, "INLINE_FEED"

    const-string v2, "inline_feed"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->INLINE_FEED:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    .line 244
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    const-string v1, "CHANNEL"

    const-string v2, "channel"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->CHANNEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    .line 239
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->CAROUSEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->CARDS:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->POSTPLAY:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->INLINE_FEED:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->CHANNEL:Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    aput-object v1, v0, v7

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

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
    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 248
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->value:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;
    .locals 1

    .prologue
    .line 239
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoChainingSource;

    return-object v0
.end method
