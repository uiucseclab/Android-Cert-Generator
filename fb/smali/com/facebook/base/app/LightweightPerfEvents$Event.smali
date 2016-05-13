.class final Lcom/facebook/base/app/LightweightPerfEvents$Event;
.super Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
.source "{clientIdentifier=\'"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Z

.field public f:Lcom/facebook/base/lwperf/perfstats/PerfStats;

.field final synthetic g:Lcom/facebook/base/app/LightweightPerfEvents;


# direct methods
.method public constructor <init>(Lcom/facebook/base/app/LightweightPerfEvents;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->g:Lcom/facebook/base/app/LightweightPerfEvents;

    invoke-direct {p0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->g:Lcom/facebook/base/app/LightweightPerfEvents;

    iget-object v1, p0, Lcom/facebook/base/app/LightweightPerfEvents$Event;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 43
    return-void
.end method
