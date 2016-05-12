.class public final Lcom/facebook/systrace/MemoryTracer;
.super Ljava/lang/Object;
.source "volume_decrease"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/systrace/MemoryTracer;->a:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/systrace/MemoryTracer$1;

    invoke-direct {v0}, Lcom/facebook/systrace/MemoryTracer$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/systrace/TraceConfig;->a(Lcom/facebook/systrace/TraceListener;)V

    .line 44
    return-void
.end method

.method private c()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x400

    .line 77
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v0

    .line 78
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v1

    .line 79
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v2

    .line 80
    invoke-static {}, Landroid/os/Debug;->getGlobalClassInitCount()I

    move-result v3

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 82
    iget-wide v6, p0, Lcom/facebook/systrace/MemoryTracer;->f:J

    sub-long v6, v4, v6

    long-to-int v6, v6

    .line 84
    if-nez v6, :cond_0

    .line 127
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    .line 90
    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    .line 92
    const-string v10, "Java bytes allocated"

    iget v11, p0, Lcom/facebook/systrace/MemoryTracer;->c:I

    sub-int v11, v1, v11

    invoke-static {v12, v13, v10, v11}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 96
    const-string v10, "# Java allocations"

    iget v11, p0, Lcom/facebook/systrace/MemoryTracer;->b:I

    sub-int v11, v0, v11

    invoke-static {v12, v13, v10, v11}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 100
    const-string v10, "classinits"

    iget v11, p0, Lcom/facebook/systrace/MemoryTracer;->e:I

    sub-int v11, v3, v11

    invoke-static {v12, v13, v10, v11}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 104
    const-string v10, "classloads"

    iget v11, p0, Lcom/facebook/systrace/MemoryTracer;->d:I

    sub-int v11, v2, v11

    invoke-static {v12, v13, v10, v11}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 108
    const-string v10, "free Java heap"

    long-to-int v11, v6

    invoke-static {v12, v13, v10, v11}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 109
    const-string v10, "used Java heap"

    sub-long v6, v8, v6

    long-to-int v6, v6

    invoke-static {v12, v13, v10, v6}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 113
    const-string v6, "total Java heap"

    long-to-int v7, v8

    invoke-static {v12, v13, v6, v7}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 115
    const-string v6, "initialized classes"

    invoke-static {v12, v13, v6, v3}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 119
    const-string v6, "loaded classes"

    invoke-static {v12, v13, v6, v2}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;I)V

    .line 122
    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->b:I

    .line 123
    iput v1, p0, Lcom/facebook/systrace/MemoryTracer;->c:I

    .line 124
    iput v2, p0, Lcom/facebook/systrace/MemoryTracer;->d:I

    .line 125
    iput v3, p0, Lcom/facebook/systrace/MemoryTracer;->e:I

    .line 126
    iput-wide v4, p0, Lcom/facebook/systrace/MemoryTracer;->f:J

    goto :goto_0
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 131
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/systrace/MemoryTracer;->a:Z

    .line 48
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->b:I

    .line 56
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v0

    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->c:I

    .line 57
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->d:I

    .line 58
    invoke-static {}, Landroid/os/Debug;->getGlobalClassInitCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/systrace/MemoryTracer;->e:I

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/systrace/MemoryTracer;->f:J

    .line 61
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/systrace/MemoryTracer;->a:Z

    if-nez v0, :cond_0

    .line 62
    const-wide/16 v0, 0x400

    const-string v2, "MemoryTracer"

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/systrace/MemoryTracer;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    const-wide/16 v0, 0x400

    :try_start_2
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->a(J)V

    .line 69
    invoke-static {}, Lcom/facebook/systrace/MemoryTracer;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v0

    .line 66
    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x400

    :try_start_3
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->a(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 73
    return-void
.end method
