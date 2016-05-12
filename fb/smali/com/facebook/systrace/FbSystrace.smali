.class public Lcom/facebook/systrace/FbSystrace;
.super Ljava/lang/Object;
.source "onVideoSizeChanged w="


# static fields
.field public static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/systrace/FbSystrace;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()J
    .locals 4

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 33
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(J)J
    .locals 6

    .prologue
    .line 21
    const/16 v3, 0x3e8

    const-wide/16 v4, 0x1

    .line 47
    invoke-static {v4, v5}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/facebook/systrace/FbSystrace;->a:Z

    if-nez v2, :cond_1

    .line 48
    const/4 v2, 0x1

    sput-boolean v2, Lcom/facebook/systrace/FbSystrace;->a:Z

    .line 51
    const-string v2, "fburl.com/fbsystrace"

    invoke-static {v4, v5, v2, v3}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 52
    const-string v2, "USE fbsystrace"

    invoke-static {v4, v5, v2, v3}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 53
    const-string v2, "DO NOT USE systrace"

    invoke-static {v4, v5, v2, v3}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 57
    .line 23
    :cond_0
    :goto_0
    invoke-static {}, Lcom/facebook/systrace/FbSystrace;->a()J

    move-result-wide v0

    .line 24
    sub-long v0, p0, v0

    .line 26
    return-wide v0

    .line 54
    :cond_1
    sget-boolean v2, Lcom/facebook/systrace/FbSystrace;->a:Z

    if-eqz v2, :cond_0

    invoke-static {v4, v5}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const/4 v2, 0x0

    sput-boolean v2, Lcom/facebook/systrace/FbSystrace;->a:Z

    goto :goto_0
.end method
