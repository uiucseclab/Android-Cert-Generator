.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

.field public static final enum PAGE_VIDEO_HUB:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

.field public static final enum PAGE_VIDEO_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

.field public static final enum PHOTO_ALBUM:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

.field public static final enum UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;


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

    .line 194
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    const-string v1, "PHOTO_ALBUM"

    const-string v2, "photo_album"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->PHOTO_ALBUM:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    .line 195
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    const-string v1, "PAGE_VIDEO_PERMALINK"

    const-string v2, "page_video_permalink"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->PAGE_VIDEO_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    .line 196
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    const-string v1, "PAGE_VIDEO_HUB"

    const-string v2, "page_video_hub"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->PAGE_VIDEO_HUB:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    .line 197
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    .line 193
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->PHOTO_ALBUM:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->PAGE_VIDEO_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->PAGE_VIDEO_HUB:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

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
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->value:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public static asOriginType(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;
    .locals 5

    .prologue
    .line 205
    if-nez p0, :cond_1

    .line 206
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 208
    :cond_1
    invoke-static {}, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->values()[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 209
    iget-object v4, v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->value:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 213
    :cond_2
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;
    .locals 1

    .prologue
    .line 193
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumOriginType;

    return-object v0
.end method
