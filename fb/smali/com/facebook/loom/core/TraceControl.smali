.class public final Lcom/facebook/loom/core/TraceControl;
.super Ljava/lang/Object;
.source "utf-8"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/facebook/loom/core/TraceControl;


# instance fields
.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/loom/core/TraceController;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/loom/core/TraceControl$TraceContext;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/loom/config/Config$RootControllerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/loom/core/TraceControl$1;

    invoke-direct {v0}, Lcom/facebook/loom/core/TraceControl$1;-><init>()V

    sput-object v0, Lcom/facebook/loom/core/TraceControl;->a:Ljava/lang/ThreadLocal;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/loom/core/TraceControl;->b:Lcom/facebook/loom/core/TraceControl;

    return-void
.end method

.method private constructor <init>(Landroid/util/SparseArray;Lcom/facebook/loom/core/TraceControl$TraceControlListener;Lcom/facebook/loom/config/Config$RootControllerConfig;)V
    .locals 2
    .param p2    # Lcom/facebook/loom/core/TraceControl$TraceControlListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/loom/config/Config$RootControllerConfig;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/loom/core/TraceController;",
            ">;",
            "Lcom/facebook/loom/core/TraceControl$TraceControlListener;",
            "Lcom/facebook/loom/config/Config$RootControllerConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/facebook/loom/core/TraceControl;->c:Landroid/util/SparseArray;

    .line 90
    iput-object p2, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/loom/core/TraceControl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    return-void
.end method

.method private a(Lcom/facebook/loom/config/Config$RootControllerConfig;ILjava/lang/Object;)I
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/core/TraceController;

    .line 259
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unregistered controller for id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    invoke-interface {p1, p2}, Lcom/facebook/loom/config/Config$RootControllerConfig;->b(I)Lcom/facebook/loom/config/ControllerConfig;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/facebook/loom/core/TraceController;->a(Ljava/lang/Object;Lcom/facebook/loom/config/ControllerConfig;)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/facebook/loom/core/TraceControl;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/facebook/loom/core/TraceControl;->b:Lcom/facebook/loom/core/TraceControl;

    return-object v0
.end method

.method private a(ILjava/lang/Object;Z)V
    .locals 11
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/core/TraceControl$TraceContext;

    .line 172
    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v1, v0, Lcom/facebook/loom/core/TraceControl$TraceContext;->c:I

    if-ne v1, p1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/loom/core/TraceController;

    .line 183
    if-nez v1, :cond_2

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unregistered traceController for id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_2
    iget-object v2, v0, Lcom/facebook/loom/core/TraceControl$TraceContext;->d:Ljava/lang/Object;

    invoke-interface {v1, v2, p2}, Lcom/facebook/loom/core/TraceController;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    if-eqz p3, :cond_3

    .line 194
    invoke-static {}, Lcom/facebook/loom/logger/Logger;->b()V

    .line 195
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    invoke-interface {v1, v0}, Lcom/facebook/loom/core/TraceControl$TraceControlListener;->c(Lcom/facebook/loom/core/TraceControl$TraceContext;)V

    goto :goto_0

    .line 199
    :cond_3
    const/4 v7, 0x0

    .line 140
    const/4 v4, -0x1

    const/4 v5, 0x0

    sget-object v6, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-wide/16 v9, 0x0

    move v8, v7

    invoke-static/range {v4 .. v10}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/NativeRingBuffer$Cursor;Lcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    .line 147
    .line 200
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    invoke-interface {v1, v0}, Lcom/facebook/loom/core/TraceControl$TraceControlListener;->b(Lcom/facebook/loom/core/TraceControl$TraceContext;)V

    goto :goto_0

    .line 205
    :cond_4
    const-string v0, "LoomTraceControl"

    const-string v1, "Could not reset trace context to null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static a(Landroid/util/SparseArray;Lcom/facebook/loom/core/TraceControl$TraceControlListener;Lcom/facebook/loom/config/Config$RootControllerConfig;)V
    .locals 3
    .param p1    # Lcom/facebook/loom/core/TraceControl$TraceControlListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/loom/config/Config$RootControllerConfig;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/loom/core/TraceController;",
            ">;",
            "Lcom/facebook/loom/core/TraceControl$TraceControlListener;",
            "Lcom/facebook/loom/config/Config$RootControllerConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/loom/core/TraceControl;->b:Lcom/facebook/loom/core/TraceControl;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Lcom/facebook/loom/core/TraceControl;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/facebook/loom/core/TraceControl;->b:Lcom/facebook/loom/core/TraceControl;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/facebook/loom/core/TraceControl;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/loom/core/TraceControl;-><init>(Landroid/util/SparseArray;Lcom/facebook/loom/core/TraceControl$TraceControlListener;Lcom/facebook/loom/config/Config$RootControllerConfig;)V

    sput-object v0, Lcom/facebook/loom/core/TraceControl;->b:Lcom/facebook/loom/core/TraceControl;

    .line 68
    monitor-exit v1

    .line 72
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "TraceControl already initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TraceControl already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/loom/core/TraceControl;->a(ILjava/lang/Object;Z)V

    .line 164
    return-void
.end method

.method final a(J)V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/core/TraceControl$TraceContext;

    .line 221
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/facebook/loom/core/TraceControl$TraceContext;->a:J

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    const-string v1, "LoomTraceControl"

    const-string v2, "Could not reset trace context to null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    invoke-interface {v1, v0}, Lcom/facebook/loom/core/TraceControl$TraceControlListener;->c(Lcom/facebook/loom/core/TraceControl$TraceContext;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/loom/config/Config$RootControllerConfig;)V
    .locals 3
    .param p1    # Lcom/facebook/loom/config/Config$RootControllerConfig;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/core/TraceControl$TraceContext;

    .line 97
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/facebook/loom/logger/Logger;->b()V

    .line 100
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    invoke-interface {v1, v0}, Lcom/facebook/loom/core/TraceControl$TraceControlListener;->c(Lcom/facebook/loom/core/TraceControl$TraceContext;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/config/Config$RootControllerConfig;

    .line 106
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "LoomTraceControl"

    const-string v1, "Tried to update the config and failed due to CAS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    return-void
.end method

.method public final a(IILjava/lang/Object;)Z
    .locals 12
    .param p3    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/config/Config$RootControllerConfig;

    .line 114
    invoke-interface {v0, p1}, Lcom/facebook/loom/config/Config$RootControllerConfig;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 159
    :goto_0
    return v0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/loom/core/TraceControl$TraceContext;

    .line 120
    if-eqz v1, :cond_1

    move v0, v2

    .line 122
    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, v0, p1, p3}, Lcom/facebook/loom/core/TraceControl;->a(Lcom/facebook/loom/config/Config$RootControllerConfig;ILjava/lang/Object;)I

    move-result v1

    .line 126
    if-nez v1, :cond_2

    move v0, v2

    .line 127
    goto :goto_0

    .line 130
    :cond_2
    new-instance v3, Lcom/facebook/loom/core/TraceControl$TraceContext;

    invoke-direct {v3}, Lcom/facebook/loom/core/TraceControl$TraceContext;-><init>()V

    .line 131
    invoke-static {}, Lcom/facebook/fbtrace/utils/FbTraceId;->b()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/facebook/loom/core/TraceControl$TraceContext;->a:J

    .line 132
    iget-wide v4, v3, Lcom/facebook/loom/core/TraceControl$TraceContext;->a:J

    invoke-static {v4, v5}, Lcom/facebook/fbtrace/utils/FbTraceId;->a(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/facebook/loom/core/TraceControl$TraceContext;->b:Ljava/lang/String;

    .line 133
    iput p1, v3, Lcom/facebook/loom/core/TraceControl$TraceContext;->c:I

    .line 134
    iput-object p3, v3, Lcom/facebook/loom/core/TraceControl$TraceContext;->d:Ljava/lang/Object;

    .line 135
    iput v1, v3, Lcom/facebook/loom/core/TraceControl$TraceContext;->e:I

    .line 137
    iget-object v1, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    invoke-interface {v0}, Lcom/facebook/loom/config/Config$RootControllerConfig;->b()I

    move-result v0

    .line 139
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 140
    const/16 v0, 0x7530

    .line 142
    :cond_3
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    .line 144
    const v0, 0x7fffffff

    .line 146
    :cond_4
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_6

    .line 147
    iget-wide v4, v3, Lcom/facebook/loom/core/TraceControl$TraceContext;->a:J

    .line 131
    const/4 v6, -0x1

    sget-object v7, Lcom/facebook/loom/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const/4 v9, 0x0

    move v8, v0

    move-wide v10, v4

    invoke-static/range {v6 .. v11}, Lcom/facebook/loom/logger/Logger;->b(ILcom/facebook/loom/logger/LogEntry$EntryType;IIJ)I

    .line 137
    .line 151
    :goto_1
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->f:Lcom/facebook/loom/core/TraceControl$TraceControlListener;

    invoke-interface {v0, v3}, Lcom/facebook/loom/core/TraceControl$TraceControlListener;->a(Lcom/facebook/loom/core/TraceControl$TraceContext;)V

    .line 159
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_6
    iget-wide v4, v3, Lcom/facebook/loom/core/TraceControl$TraceContext;->a:J

    invoke-static {v4, v5, p2, v0}, Lcom/facebook/loom/logger/Logger;->a(JII)V

    goto :goto_1

    .line 155
    :cond_7
    const-string v0, "LoomTraceControl"

    const-string v1, "Tried to start a trace and failed due to CAS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 156
    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/loom/core/TraceControl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/loom/core/TraceControl$TraceContext;

    .line 250
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/loom/core/TraceControl$TraceContext;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "AAAAAAAAAAA"

    goto :goto_0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/loom/core/TraceControl;->a(ILjava/lang/Object;Z)V

    .line 168
    return-void
.end method
