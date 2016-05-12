.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

.field public static final enum FROM_CACHE:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

.field public static final enum FROM_LOCAL_STORAGE:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

.field public static final enum FROM_STREAM:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    const-string v1, "FROM_STREAM"

    const-string v2, "stream"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->FROM_STREAM:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    .line 431
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    const-string v1, "FROM_CACHE"

    const-string v2, "from_cache"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->FROM_CACHE:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    .line 432
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    const-string v1, "FROM_LOCAL_STORAGE"

    const-string v2, "local_storage"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->FROM_LOCAL_STORAGE:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    .line 429
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->FROM_STREAM:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->FROM_CACHE:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->FROM_LOCAL_STORAGE:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

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
    .line 435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 436
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->value:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;
    .locals 1

    .prologue
    .line 429
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;
    .locals 1

    .prologue
    .line 429
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    return-object v0
.end method
