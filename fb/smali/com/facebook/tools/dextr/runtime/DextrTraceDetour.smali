.class public Lcom/facebook/tools/dextr/runtime/DextrTraceDetour;
.super Ljava/lang/Object;
.source "trySendKeepAliveOrDisconnect"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(I)V
    .locals 4
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/facebook/loom/core/TraceControl;->a()Lcom/facebook/loom/core/TraceControl;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/loom/core/TraceControl;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public static stop(I)V
    .locals 3
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/facebook/loom/core/TraceControl;->a()Lcom/facebook/loom/core/TraceControl;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/loom/core/TraceControl;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static syncTestClock()V
    .locals 3
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/16 v2, 0x8

    const v1, -0x5314ff4

    .line 57
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TEST_CLOCK_SYNC_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v2, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 59
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->TEST_CLOCK_SYNC_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v2, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 65
    return-void
.end method
