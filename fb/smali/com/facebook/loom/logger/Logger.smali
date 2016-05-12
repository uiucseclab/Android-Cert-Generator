.class public final Lcom/facebook/loom/logger/Logger;
.super Ljava/lang/Object;
.source "use_ssl"


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


# static fields
.field static final a:Ljava/util/concurrent/BlockingQueue;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile c:Z

.field private static d:Lcom/facebook/loom/logger/NativeRingBuffer;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile e:Lcom/facebook/loom/logger/LoggerWorkerThread;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/loom/logger/LogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/loom/logger/Logger;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/facebook/loom/logger/Logger;->a:Ljava/util/concurrent/BlockingQueue;

    .line 37
    new-instance v0, Lcom/facebook/loom/logger/NativeRingBuffer;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/facebook/loom/logger/NativeRingBuffer;-><init>(I)V

    sput-object v0, Lcom/facebook/loom/logger/Logger;->d:Lcom/facebook/loom/logger/NativeRingBuffer;

    .line 40
    new-instance v0, Lcom/facebook/loom/logger/Logger$1;

    invoke-direct {v0}, Lcom/facebook/loom/logger/Logger$1;-><init>()V

    sput-object v0, Lcom/facebook/loom/logger/Logger;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I
    .locals 8

    .prologue
    .line 73
    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v1, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v1 .. v7}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/NativeRingBuffer$Cursor;Lcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    move-result v0

    return v0
.end method

.method public static a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I
    .locals 8

    .prologue
    .line 91
    if-nez p3, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeEntry called with mMatchID = NO_MATCH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/NativeRingBuffer$Cursor;Lcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    move-result v0

    return v0
.end method

.method public static a(ILcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I
    .locals 8

    .prologue
    .line 109
    if-nez p3, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeEntry called with mMatchID = NO_MATCH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const/4 v2, 0x0

    move v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/NativeRingBuffer$Cursor;Lcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    move-result v0

    return v0
.end method

.method public static a(ILcom/facebook/loom/logger/LogEntry$EntryType;IJ)I
    .locals 9

    .prologue
    .line 81
    const/4 v2, 0x0

    const/4 v5, 0x0

    move v1, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/NativeRingBuffer$Cursor;Lcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    move-result v0

    return v0
.end method

.method public static a(ILcom/facebook/loom/logger/NativeRingBuffer$Cursor;Lcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I
    .locals 17
    .param p1    # Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 189
    sget-object v0, Lcom/facebook/loom/logger/Logger;->e:Lcom/facebook/loom/logger/LoggerWorkerThread;

    .line 190
    sget-boolean v1, Lcom/facebook/loom/logger/Logger;->c:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    const/4 v1, -0x1

    .line 223
    :goto_0
    return v1

    .line 194
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/facebook/loom/logger/LogEntry$EntryType;->isControlEntry(Lcom/facebook/loom/logger/LogEntry$EntryType;)Z

    move-result v0

    .line 197
    invoke-static/range {p0 .. p0}, Lcom/facebook/loom/core/TraceEvents;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 198
    const/4 v1, -0x1

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/facebook/loom/logger/Logger;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 205
    if-eqz v1, :cond_2

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 207
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 209
    sget-object v0, Lcom/facebook/loom/logger/Logger;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/logger/LogEntry;

    move-object/from16 v2, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    .line 210
    invoke-virtual/range {v0 .. v9}, Lcom/facebook/loom/logger/LogEntry;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;JIIIJ)Lcom/facebook/loom/logger/LogEntry;

    .line 212
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/loom/logger/LogEntry$EntryType;->ordinal()I

    move-result v8

    move-object/from16 v6, p1

    move v7, v1

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    move-wide v12, v3

    move-wide/from16 v14, p5

    invoke-static/range {v6 .. v15}, Lcom/facebook/loom/logger/Logger;->a(Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;IIIIIJJ)V

    goto :goto_0
.end method

.method public static a(JII)V
    .locals 6

    .prologue
    .line 122
    const/4 v0, -0x1

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    move v2, p3

    move v3, p2

    move-wide v4, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/loom/logger/Logger;->b(ILcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    .line 128
    return-void
.end method

.method private static a(Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;IIIIIJJ)V
    .locals 12
    .param p0    # Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    sget-object v0, Lcom/facebook/loom/logger/Logger;->d:Lcom/facebook/loom/logger/NativeRingBuffer;

    .line 237
    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    if-nez p0, :cond_1

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 242
    invoke-virtual/range {v0 .. v9}, Lcom/facebook/loom/logger/NativeRingBuffer;->a(IIIIIJJ)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 244
    invoke-virtual/range {v0 .. v10}, Lcom/facebook/loom/logger/NativeRingBuffer;->a(Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;IIIIIJJ)V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Lcom/facebook/loom/core/TraceOrchestrator;)V
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/loom/logger/Logger;->d:Lcom/facebook/loom/logger/NativeRingBuffer;

    .line 49
    sget-boolean v1, Lcom/facebook/loom/logger/Logger;->c:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v1, Lcom/facebook/loom/logger/Logger;->e:Lcom/facebook/loom/logger/LoggerWorkerThread;

    if-eqz v1, :cond_2

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to start a second worker thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    new-instance v1, Lcom/facebook/loom/logger/LoggerWorkerThread;

    sget-object v2, Lcom/facebook/loom/logger/Logger;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/facebook/loom/logger/LoggerWorkerThread;-><init>(Lcom/facebook/loom/logger/NativeRingBuffer;Ljava/io/File;Lcom/facebook/loom/core/TraceOrchestrator;Ljava/util/concurrent/BlockingQueue;)V

    .line 59
    sput-object v1, Lcom/facebook/loom/logger/Logger;->e:Lcom/facebook/loom/logger/LoggerWorkerThread;

    .line 60
    invoke-virtual {v1}, Lcom/facebook/loom/logger/LoggerWorkerThread;->start()V

    goto :goto_0
.end method

.method public static b(ILcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I
    .locals 8

    .prologue
    .line 165
    sget-boolean v0, Lcom/facebook/loom/logger/Logger;->c:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, -0x1

    .line 178
    :goto_0
    return v0

    .line 169
    :cond_0
    sget-object v0, Lcom/facebook/loom/logger/Logger;->d:Lcom/facebook/loom/logger/NativeRingBuffer;

    .line 170
    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger enabled but buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/loom/logger/NativeRingBuffer;->a()Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;

    move-result-object v2

    move v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .line 175
    invoke-static/range {v1 .. v7}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/NativeRingBuffer$Cursor;Lcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    move-result v0

    .line 176
    sget-object v1, Lcom/facebook/loom/logger/Logger;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static b()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 150
    const/4 v1, -0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ABORT:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-wide/16 v6, 0x0

    move v5, v4

    invoke-static/range {v1 .. v7}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/NativeRingBuffer$Cursor;Lcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    .line 157
    return-void
.end method
