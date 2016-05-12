.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

.field public static final enum ATTEMPT_TO_CONNECT:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

.field public static final enum SHOW_CAST_MENU:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    const-string v1, "ATTEMPT_TO_CONNECT"

    const-string v2, "attempt_to_connect"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;->ATTEMPT_TO_CONNECT:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    .line 494
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    const-string v1, "SHOW_CAST_MENU"

    const-string v2, "show_cast_menu"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;->SHOW_CAST_MENU:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;->ATTEMPT_TO_CONNECT:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;->SHOW_CAST_MENU:Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

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
    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 499
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;->value:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;
    .locals 1

    .prologue
    .line 492
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$ChromecastCastButtonClickType;

    return-object v0
.end method
