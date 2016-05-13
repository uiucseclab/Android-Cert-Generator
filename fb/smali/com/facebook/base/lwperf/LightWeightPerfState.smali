.class public final Lcom/facebook/base/lwperf/LightWeightPerfState;
.super Ljava/lang/Object;
.source "vr_cast_button_displayed"


# static fields
.field private static final a:Lcom/facebook/base/lwperf/LightWeightPerfState;

.field private static volatile c:J

.field public static volatile d:J


# instance fields
.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 12
    new-instance v0, Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/LightWeightPerfState;-><init>()V

    sput-object v0, Lcom/facebook/base/lwperf/LightWeightPerfState;->a:Lcom/facebook/base/lwperf/LightWeightPerfState;

    .line 16
    sput-wide v2, Lcom/facebook/base/lwperf/LightWeightPerfState;->c:J

    .line 18
    sput-wide v2, Lcom/facebook/base/lwperf/LightWeightPerfState;->d:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/LightWeightPerfState;->b:Z

    .line 22
    return-void
.end method

.method public static a()Lcom/facebook/base/lwperf/LightWeightPerfState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/facebook/base/lwperf/LightWeightPerfState;->a:Lcom/facebook/base/lwperf/LightWeightPerfState;

    return-object v0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 40
    sget-wide v0, Lcom/facebook/base/lwperf/LightWeightPerfState;->c:J

    return-wide v0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->f()J

    move-result-wide v0

    .line 46
    sput-wide v0, Lcom/facebook/base/lwperf/LightWeightPerfState;->c:J

    return-wide v0
.end method

.method public static e()J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 54
    sget-wide v0, Lcom/facebook/base/lwperf/LightWeightPerfState;->c:J

    .line 55
    sget-wide v2, Lcom/facebook/base/lwperf/LightWeightPerfState;->d:J

    .line 57
    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    .line 59
    const-class v0, Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No known set start time. Return now as default."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->f()J

    move-result-wide v0

    .line 73
    :cond_0
    :goto_0
    return-wide v0

    .line 65
    :cond_1
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 69
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static f()J
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/LightWeightPerfState;->b:Z

    .line 33
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/LightWeightPerfState;->b:Z

    return v0
.end method
