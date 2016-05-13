.class public final Lcom/facebook/base/app/LightweightPerfEvents;
.super Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;
.source "{clientIdentifier=\'"


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/facebook/base/app/LightweightPerfEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.HashMap._Constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/base/app/LightweightPerfEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.ArrayList._Constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/base/app/LightweightPerfEvents$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 54
    invoke-direct {p0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->a:Ljava/util/Stack;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->b:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->c:Ljava/util/List;

    .line 55
    return-void
.end method

.method private static a(Lcom/facebook/base/app/LightweightPerfEvents$Event;)V
    .locals 2

    .prologue
    .line 144
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->a(J)V

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->d:J

    .line 146
    iget-boolean v0, p0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->e:Z

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->e()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->e:Z

    .line 150
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->f:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->f:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->m()V

    .line 153
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)Lcom/facebook/base/app/LightweightPerfEvents$Event;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0}, Lcom/facebook/base/app/LightweightPerfEvents$Event;-><init>(Lcom/facebook/base/app/LightweightPerfEvents;)V

    .line 122
    iput-object p1, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->b:Ljava/lang/String;

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->c:J

    .line 124
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->e()Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->e:Z

    .line 126
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->f:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 127
    iget-object v1, p0, Lcom/facebook/base/app/LightweightPerfEvents;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const-wide/16 v2, 0x6

    invoke-static {v2, v3, p1}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;)V

    .line 133
    return-object v0
.end method

.method private g(Ljava/lang/String;)Lcom/facebook/base/app/LightweightPerfEvents$Event;
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/facebook/base/app/LightweightPerfEvents;->f(Ljava/lang/String;)Lcom/facebook/base/app/LightweightPerfEvents$Event;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-direct {v1}, Lcom/facebook/base/lwperf/perfstats/PerfStats;-><init>()V

    invoke-virtual {v1}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->l()Lcom/facebook/base/lwperf/perfstats/PerfStats;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->f:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 140
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/base/app/LightweightPerfEvents;->f(Ljava/lang/String;)Lcom/facebook/base/app/LightweightPerfEvents$Event;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/facebook/base/app/LightweightPerfEvents;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v0
.end method

.method public final a(Lcom/facebook/katana/app/FacebookApplicationImpl$3;)V
    .locals 11

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;

    .line 157
    iget v2, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->a:I

    iget-object v3, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->b:Ljava/lang/String;

    iget-wide v4, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->c:J

    iget-wide v6, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->d:J

    iget-boolean v8, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->e:Z

    iget-object v9, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->f:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/katana/app/FacebookApplicationImpl$3;->a(ILjava/lang/String;JJZLcom/facebook/base/lwperf/perfstats/PerfStats;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/base/app/LightweightPerfEvents;->f(Ljava/lang/String;)Lcom/facebook/base/app/LightweightPerfEvents$Event;

    move-result-object v0

    .line 102
    iput p2, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->a:I

    .line 104
    iget-object v1, p0, Lcom/facebook/base/app/LightweightPerfEvents;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/facebook/base/app/LightweightPerfEvents;->g(Ljava/lang/String;)Lcom/facebook/base/app/LightweightPerfEvents$Event;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/facebook/base/app/LightweightPerfEvents;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatUse"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;

    .line 75
    iget-object v1, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unbalanced LightweightPerfEvents.stop(). Expected: %s Actual: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->b:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    invoke-static {v0}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Lcom/facebook/base/app/LightweightPerfEvents$Event;)V

    .line 84
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/base/app/LightweightPerfEvents;->f(Ljava/lang/String;)Lcom/facebook/base/app/LightweightPerfEvents$Event;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/facebook/base/app/LightweightPerfEvents;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatUse"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/base/app/LightweightPerfEvents$Event;

    .line 110
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LightweightPerfEvents.stopAsync() called for %s without first calling startAsync()."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-static {v0}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Lcom/facebook/base/app/LightweightPerfEvents$Event;)V

    .line 118
    return-void
.end method
