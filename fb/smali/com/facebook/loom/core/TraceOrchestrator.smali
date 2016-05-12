.class public final Lcom/facebook/loom/core/TraceOrchestrator;
.super Ljava/lang/Object;
.source "uuid"

# interfaces
.implements Lcom/facebook/loom/config/ConfigProvider$ConfigUpdateListener;
.implements Lcom/facebook/loom/core/TraceControl$TraceControlListener;
.implements Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/loom/core/TraceOrchestrator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/loom/config/ConfigProvider;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:Lcom/facebook/loom/config/Config;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Lcom/facebook/loom/logger/FileManager;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Lcom/facebook/loom/module/LoomBridge;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/loom/core/TraceOrchestrator;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/loom/config/ConfigProvider;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/facebook/loom/core/TraceOrchestrator;->b:Lcom/facebook/loom/config/ConfigProvider;

    .line 73
    iput-object v1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->c:Lcom/facebook/loom/config/Config;

    .line 74
    new-instance v0, Lcom/facebook/loom/logger/FileManager;

    invoke-direct {v0, p1}, Lcom/facebook/loom/logger/FileManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    .line 75
    iput-object v1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->e:Lcom/facebook/loom/module/LoomBridge;

    .line 76
    iput-object v1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    .line 77
    return-void
.end method

.method public static a()Lcom/facebook/loom/core/TraceOrchestrator;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/facebook/loom/core/TraceOrchestrator;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/core/TraceOrchestrator;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TraceOrchestrator has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/loom/config/ConfigProvider;)V
    .locals 3
    .param p1    # Lcom/facebook/loom/config/ConfigProvider;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance p1, Lcom/facebook/loom/config/DevConfigProvider;

    invoke-direct {p1}, Lcom/facebook/loom/config/DevConfigProvider;-><init>()V

    .line 48
    :cond_0
    new-instance v0, Lcom/facebook/loom/core/TraceOrchestrator;

    invoke-direct {v0, p0, p1}, Lcom/facebook/loom/core/TraceOrchestrator;-><init>(Landroid/content/Context;Lcom/facebook/loom/config/ConfigProvider;)V

    .line 49
    sget-object v1, Lcom/facebook/loom/core/TraceOrchestrator;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-direct {v0}, Lcom/facebook/loom/core/TraceOrchestrator;->d()V

    return-void

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Orchestrator already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/facebook/loom/config/Config;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->c:Lcom/facebook/loom/config/Config;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/facebook/loom/core/TraceEvents;->c(I)V

    .line 143
    iput-object p1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->c:Lcom/facebook/loom/config/Config;

    .line 144
    invoke-static {}, Lcom/facebook/loom/core/TraceControl;->a()Lcom/facebook/loom/core/TraceControl;

    move-result-object v0

    .line 145
    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Performing config change before TraceControl has been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    invoke-interface {p1}, Lcom/facebook/loom/config/Config;->a()Lcom/facebook/loom/config/Config$RootControllerConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/loom/core/TraceControl;->a(Lcom/facebook/loom/config/Config$RootControllerConfig;)V

    .line 152
    invoke-interface {p1}, Lcom/facebook/loom/config/Config;->b()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/loom/core/TraceEvents;->b(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->b:Lcom/facebook/loom/config/ConfigProvider;

    invoke-interface {v0, p0}, Lcom/facebook/loom/config/ConfigProvider;->a(Lcom/facebook/loom/config/ConfigProvider$ConfigUpdateListener;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->b:Lcom/facebook/loom/config/ConfigProvider;

    invoke-interface {v0}, Lcom/facebook/loom/config/ConfigProvider;->c()Lcom/facebook/loom/config/Config;

    move-result-object v0

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 88
    const/4 v2, 0x4

    new-instance v3, Lcom/facebook/loom/core/ManualTraceController;

    invoke-direct {v3}, Lcom/facebook/loom/core/ManualTraceController;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    const/4 v2, 0x2

    new-instance v3, Lcom/facebook/loom/core/HttpTraceController;

    invoke-direct {v3}, Lcom/facebook/loom/core/HttpTraceController;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    new-instance v2, Lcom/facebook/loom/core/QPLTraceController;

    invoke-direct {v2}, Lcom/facebook/loom/core/QPLTraceController;-><init>()V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    invoke-interface {v0}, Lcom/facebook/loom/config/Config;->a()Lcom/facebook/loom/config/Config$RootControllerConfig;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/facebook/loom/core/TraceControl;->a(Landroid/util/SparseArray;Lcom/facebook/loom/core/TraceControl$TraceControlListener;Lcom/facebook/loom/config/Config$RootControllerConfig;)V

    .line 94
    monitor-enter p0

    .line 96
    :try_start_1
    invoke-direct {p0, v0}, Lcom/facebook/loom/core/TraceOrchestrator;->b(Lcom/facebook/loom/config/Config;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    invoke-virtual {v0}, Lcom/facebook/loom/logger/FileManager;->e()Ljava/io/File;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/loom/logger/FileManager;->a(J)V

    .line 102
    iget-object v1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/facebook/loom/logger/FileManager;->a(I)V

    .line 103
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    invoke-static {v0, p0}, Lcom/facebook/loom/logger/Logger;->a(Ljava/io/File;Lcom/facebook/loom/core/TraceOrchestrator;)V

    .line 105
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 103
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->c:Lcom/facebook/loom/config/Config;

    .line 209
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/facebook/loom/core/TraceEvents;->c(I)V

    .line 212
    invoke-interface {v0}, Lcom/facebook/loom/config/Config;->b()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/loom/core/TraceEvents;->b(I)V

    .line 214
    :cond_0
    return-void

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    .line 277
    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    invoke-virtual {v1}, Lcom/facebook/loom/logger/FileManager;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V

    .line 281
    iget-object v1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    invoke-virtual {v1}, Lcom/facebook/loom/logger/FileManager;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/facebook/loom/config/Config;)V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/loom/core/TraceOrchestrator;->b(Lcom/facebook/loom/config/Config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/loom/config/ConfigProvider;)V
    .locals 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->b:Lcom/facebook/loom/config/ConfigProvider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->b:Lcom/facebook/loom/config/ConfigProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/loom/config/ConfigProvider;->a(Lcom/facebook/loom/config/ConfigProvider$ConfigUpdateListener;)V

    .line 112
    invoke-interface {p1, p0}, Lcom/facebook/loom/config/ConfigProvider;->a(Lcom/facebook/loom/config/ConfigProvider$ConfigUpdateListener;)V

    .line 114
    iput-object p1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->b:Lcom/facebook/loom/config/ConfigProvider;

    .line 115
    invoke-interface {p1}, Lcom/facebook/loom/config/ConfigProvider;->c()Lcom/facebook/loom/config/Config;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/loom/core/TraceOrchestrator;->b(Lcom/facebook/loom/config/Config;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/facebook/loom/core/TraceControl$TraceContext;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->c:Lcom/facebook/loom/config/Config;

    .line 161
    iget-object v1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->e:Lcom/facebook/loom/module/LoomBridge;

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-static {v6}, Lcom/facebook/loom/core/TraceEvents;->c(I)V

    .line 165
    iget v2, p1, Lcom/facebook/loom/core/TraceControl$TraceContext;->e:I

    invoke-static {v2}, Lcom/facebook/loom/core/TraceEvents;->b(I)V

    .line 167
    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_ANNOTATION:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v3, 0x7c0006

    invoke-interface {v0}, Lcom/facebook/loom/config/Config;->c()J

    move-result-wide v4

    invoke-static {v6, v2, v3, v4, v5}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;IJ)I

    .line 174
    :cond_0
    if-eqz v1, :cond_1

    .line 175
    invoke-interface {v1, p1}, Lcom/facebook/loom/core/TraceControl$TraceControlListener;->a(Lcom/facebook/loom/core/TraceControl$TraceContext;)V

    .line 177
    :cond_1
    return-void

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/facebook/loom/logger/Trace;)V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/facebook/loom/logger/Trace;->c()Ljava/io/File;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/loom/logger/Trace;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    const-string v0, "TraceOrchestrator"

    const-string v1, "Could not delete aborted trace"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2
    invoke-static {}, Lcom/facebook/loom/core/TraceControl;->a()Lcom/facebook/loom/core/TraceControl;

    move-result-object v0

    .line 228
    if-nez v0, :cond_3

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No TraceControl when cleaning up aborted trace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/loom/logger/Trace;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/loom/core/TraceControl;->a(J)V

    goto :goto_0

    .line 236
    :cond_4
    monitor-enter p0

    .line 238
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/loom/logger/Trace;->d()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 239
    :goto_1
    iget-object v2, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Z)V

    .line 240
    invoke-direct {p0}, Lcom/facebook/loom/core/TraceOrchestrator;->f()V

    .line 242
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->e:Lcom/facebook/loom/module/LoomBridge;

    .line 243
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/facebook/loom/module/LoomBridge;->a()V

    goto :goto_0

    .line 238
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/loom/module/LoomBridge;)V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->e:Lcom/facebook/loom/module/LoomBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;)V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/loom/core/TraceOrchestrator;->f:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    .line 123
    invoke-direct {p0}, Lcom/facebook/loom/core/TraceOrchestrator;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    invoke-virtual {v0, p1}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->e:Lcom/facebook/loom/module/LoomBridge;

    .line 256
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p1}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;->a(Ljava/io/File;)V

    .line 260
    :cond_0
    return-void

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lcom/facebook/loom/core/TraceControl$TraceContext;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/facebook/loom/core/TraceOrchestrator;->e()V

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->e:Lcom/facebook/loom/module/LoomBridge;

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0, p1}, Lcom/facebook/loom/core/TraceControl$TraceControlListener;->b(Lcom/facebook/loom/core/TraceControl$TraceContext;)V

    .line 190
    :cond_0
    return-void

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->e:Lcom/facebook/loom/module/LoomBridge;

    .line 267
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0, p1}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;->b(Ljava/io/File;)V

    .line 272
    :cond_0
    return-void

    .line 267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/loom/config/DevConfigProvider;

    invoke-direct {v0}, Lcom/facebook/loom/config/DevConfigProvider;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/loom/core/TraceOrchestrator;->a(Lcom/facebook/loom/config/ConfigProvider;)V

    .line 294
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    invoke-virtual {v0}, Lcom/facebook/loom/logger/FileManager;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->d:Lcom/facebook/loom/logger/FileManager;

    invoke-virtual {v0}, Lcom/facebook/loom/logger/FileManager;->d()Ljava/lang/Iterable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lcom/facebook/loom/core/TraceControl$TraceContext;)V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/facebook/loom/core/TraceOrchestrator;->e()V

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceOrchestrator;->e:Lcom/facebook/loom/module/LoomBridge;

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p1}, Lcom/facebook/loom/core/TraceControl$TraceControlListener;->c(Lcom/facebook/loom/core/TraceControl$TraceContext;)V

    .line 203
    :cond_0
    return-void

    .line 199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
