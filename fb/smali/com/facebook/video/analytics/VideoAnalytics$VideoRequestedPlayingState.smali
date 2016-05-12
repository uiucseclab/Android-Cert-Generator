.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

.field public static final enum STARTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

.field public static final enum UNPAUSED:Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    const-string v1, "STARTED"

    const-string v2, "started"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;->STARTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    .line 176
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    const-string v1, "UNPAUSED"

    const-string v2, "unpaused"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;->UNPAUSED:Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;->STARTED:Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;->UNPAUSED:Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

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
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;->value:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;
    .locals 1

    .prologue
    .line 174
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$VideoRequestedPlayingState;

    return-object v0
.end method
