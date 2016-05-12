.class final Lcom/facebook/systrace/MemoryTracer$1;
.super Ljava/lang/Object;
.source "volume_decrease"

# interfaces
.implements Lcom/facebook/systrace/TraceListener;


# instance fields
.field a:Lcom/facebook/systrace/MemoryTracer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 26
    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/facebook/systrace/MemoryTracer;

    invoke-direct {v0}, Lcom/facebook/systrace/MemoryTracer;-><init>()V

    iput-object v0, p0, Lcom/facebook/systrace/MemoryTracer$1;->a:Lcom/facebook/systrace/MemoryTracer;

    .line 31
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/facebook/systrace/MemoryTracer$1;->a:Lcom/facebook/systrace/MemoryTracer;

    const-string v2, "MemoryTracer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/systrace/MemoryTracer$1;->a:Lcom/facebook/systrace/MemoryTracer;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/facebook/systrace/MemoryTracer$1;->a:Lcom/facebook/systrace/MemoryTracer;

    invoke-virtual {v0}, Lcom/facebook/systrace/MemoryTracer;->b()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/systrace/MemoryTracer$1;->a:Lcom/facebook/systrace/MemoryTracer;

    goto :goto_0
.end method
