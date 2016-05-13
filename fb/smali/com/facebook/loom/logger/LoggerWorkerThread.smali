.class Lcom/facebook/loom/logger/LoggerWorkerThread;
.super Ljava/lang/Thread;
.source "unexpectedEndOfInput"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private volatile b:Z

.field private volatile c:Lcom/facebook/loom/logger/NativeRingBuffer;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/loom/logger/LogEntry;

.field private final e:Lcom/facebook/loom/core/TraceOrchestrator;

.field private final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/loom/logger/NativeRingBuffer;Ljava/io/File;Lcom/facebook/loom/core/TraceOrchestrator;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/loom/logger/NativeRingBuffer;",
            "Ljava/io/File;",
            "Lcom/facebook/loom/logger/Trace$ClosedListener;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    const-string v0, "dextr-worker"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/facebook/loom/logger/LoggerWorkerThread$1;

    invoke-direct {v0, p0}, Lcom/facebook/loom/logger/LoggerWorkerThread$1;-><init>(Lcom/facebook/loom/logger/LoggerWorkerThread;)V

    invoke-virtual {p0, v0}, Lcom/facebook/loom/logger/LoggerWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 67
    new-instance v0, Lcom/facebook/loom/logger/LogEntry;

    invoke-direct {v0}, Lcom/facebook/loom/logger/LogEntry;-><init>()V

    iput-object v0, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->b:Z

    .line 69
    iput-object p1, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->c:Lcom/facebook/loom/logger/NativeRingBuffer;

    .line 70
    iput-object p3, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->e:Lcom/facebook/loom/core/TraceOrchestrator;

    .line 71
    iput-object p2, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->a:Ljava/io/File;

    .line 72
    iput-object p4, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->f:Ljava/util/concurrent/BlockingQueue;

    .line 73
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;I)Lcom/facebook/loom/logger/LogWriter;
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/facebook/loom/logger/FileLogWriter;

    invoke-direct {v1, p0, v0}, Lcom/facebook/loom/logger/FileLogWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 208
    new-instance v0, Lcom/facebook/loom/logger/FilteringLogWriter;

    sget-object v2, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->ASYNC:Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/loom/logger/FilteringLogWriter;-><init>(Lcom/facebook/loom/logger/LogWriter;Ljava/util/EnumSet;)V

    .line 210
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(JLjava/io/File;I)Lcom/facebook/loom/logger/Trace;
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 182
    invoke-static {p1, p2}, Lcom/facebook/fbtrace/utils/FbTraceId;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "[^\\p{Alnum}]"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v4, Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/loom/logger/Trace;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-static {v0, v4, p4}, Lcom/facebook/loom/logger/LoggerWorkerThread;->a(Ljava/lang/String;Ljava/io/File;I)Lcom/facebook/loom/logger/LogWriter;

    move-result-object v5

    .line 192
    new-instance v1, Lcom/facebook/loom/logger/Trace;

    iget-object v7, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->e:Lcom/facebook/loom/core/TraceOrchestrator;

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/loom/logger/Trace;-><init>(JLjava/io/File;Lcom/facebook/loom/logger/LogWriter;ILcom/facebook/loom/core/TraceOrchestrator;)V

    return-object v1
.end method

.method private a(Lcom/facebook/loom/logger/LogWriter;Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;)V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p2}, Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v0, v1}, Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;->tryReadBackward(Lcom/facebook/loom/logger/LogEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {p1, v1}, Lcom/facebook/loom/logger/LogWriter;->a(Lcom/facebook/loom/logger/LogEntry;)J

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method private static a(Lcom/facebook/loom/logger/Trace;)V
    .locals 1
    .param p0    # Lcom/facebook/loom/logger/Trace;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 165
    if-eqz p0, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/loom/logger/Trace;->a(Z)V

    .line 167
    invoke-static {p0}, Lcom/facebook/loom/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->b:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/loom/logger/LoggerWorkerThread;->c:Lcom/facebook/loom/logger/NativeRingBuffer;

    .line 174
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 76
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->c:Lcom/facebook/loom/logger/NativeRingBuffer;

    .line 79
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->b:Z

    if-nez v2, :cond_2

    .line 80
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/loom/logger/LoggerWorkerThread;->a()V

    .line 155
    :cond_1
    return-void

    .line 84
    :cond_2
    const/4 v3, 0x0

    .line 85
    const-wide/16 v4, 0x0

    .line 86
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->f:Ljava/util/concurrent/BlockingQueue;

    .line 93
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->b:Z

    if-eqz v2, :cond_1

    .line 97
    :try_start_0
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v2, v7}, Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;->waitAndTryReadForward(Lcom/facebook/loom/logger/LogEntry;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 105
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v8}, Lcom/facebook/loom/logger/LogEntry;->b()Lcom/facebook/loom/logger/LogEntry$EntryType;

    move-result-object v8

    .line 107
    sget-object v9, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq v8, v9, :cond_4

    sget-object v9, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne v8, v9, :cond_5

    .line 108
    :cond_4
    invoke-static {v3}, Lcom/facebook/loom/logger/LoggerWorkerThread;->a(Lcom/facebook/loom/logger/Trace;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v3}, Lcom/facebook/loom/logger/LogEntry;->g()J

    move-result-wide v10

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v3}, Lcom/facebook/loom/logger/LogEntry;->f()I

    move-result v3

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v4}, Lcom/facebook/loom/logger/LogEntry;->e()I

    move-result v4

    .line 112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v5}, Lcom/facebook/loom/logger/LogEntry;->c()J

    move-result-wide v12

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v14, v4

    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v12

    .line 113
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->a:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v9, v3}, Lcom/facebook/loom/logger/LoggerWorkerThread;->a(JLjava/io/File;I)Lcom/facebook/loom/logger/Trace;

    move-result-object v3

    .line 116
    :cond_5
    if-eqz v3, :cond_a

    .line 121
    invoke-virtual {v3}, Lcom/facebook/loom/logger/Trace;->b()Lcom/facebook/loom/logger/LogWriter;

    move-result-object v9

    .line 122
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v9, v10}, Lcom/facebook/loom/logger/LogWriter;->a(Lcom/facebook/loom/logger/LogEntry;)J

    .line 124
    sget-object v10, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne v8, v10, :cond_6

    .line 125
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/facebook/loom/logger/LoggerWorkerThread;->a(Lcom/facebook/loom/logger/LogWriter;Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;)V

    .line 128
    :cond_6
    sget-object v9, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ABORT:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-eq v8, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/loom/logger/LoggerWorkerThread;->d:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v9}, Lcom/facebook/loom/logger/LogEntry;->c()J

    move-result-wide v10

    cmp-long v9, v10, v4

    if-lez v9, :cond_8

    .line 131
    :cond_7
    invoke-static {v3}, Lcom/facebook/loom/logger/LoggerWorkerThread;->a(Lcom/facebook/loom/logger/Trace;)V

    .line 132
    const-wide/16 v4, 0x0

    .line 133
    const/4 v3, 0x0

    .line 136
    :cond_8
    sget-object v9, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    if-ne v8, v9, :cond_9

    .line 137
    invoke-static {v3}, Lcom/facebook/loom/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 138
    const/4 v3, 0x0

    .line 139
    const-wide/16 v4, 0x0

    .line 142
    :cond_9
    if-nez v3, :cond_3

    :cond_a
    move-wide/from16 v16, v4

    move-object v4, v3

    move-wide/from16 v2, v16

    .line 148
    if-nez v7, :cond_b

    .line 150
    invoke-static {v4}, Lcom/facebook/loom/logger/LoggerWorkerThread;->a(Lcom/facebook/loom/logger/Trace;)V

    .line 151
    const/4 v4, 0x0

    .line 152
    const-wide/16 v2, 0x0

    :cond_b
    move-wide/from16 v16, v2

    move-object v3, v4

    move-wide/from16 v4, v16

    .line 154
    goto/16 :goto_0

    .line 99
    :catch_0
    move-exception v2

    new-instance v2, Lcom/facebook/loom/logger/LoggerWorkerThread$LoggerException;

    const-string v3, "Interrupted take() call"

    invoke-direct {v2, v3}, Lcom/facebook/loom/logger/LoggerWorkerThread$LoggerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
