.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

.field public static final enum ALBUM_ORIGIN:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

    const-string v1, "ALBUM_ORIGIN"

    const-string v2, "album_origin"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;->ALBUM_ORIGIN:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;->ALBUM_ORIGIN:Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

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
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;->value:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;
    .locals 1

    .prologue
    .line 184
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoAlbumAttributes;

    return-object v0
.end method
