.class public Lcom/facebook/loom/logger/Trace;
.super Ljava/lang/Object;
.source "unknown reason"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:J

.field private final b:Ljava/io/File;

.field private final c:I

.field private final d:Lcom/facebook/loom/core/TraceOrchestrator;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/facebook/loom/logger/LogWriter;

.field private f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/io/File;Lcom/facebook/loom/logger/LogWriter;ILcom/facebook/loom/core/TraceOrchestrator;)V
    .locals 1
    .param p6    # Lcom/facebook/loom/core/TraceOrchestrator;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/facebook/loom/logger/Trace;->a:J

    .line 51
    iput-object p3, p0, Lcom/facebook/loom/logger/Trace;->b:Ljava/io/File;

    .line 52
    iput-object p4, p0, Lcom/facebook/loom/logger/Trace;->e:Lcom/facebook/loom/logger/LogWriter;

    .line 53
    iput p5, p0, Lcom/facebook/loom/logger/Trace;->c:I

    .line 54
    iput-object p6, p0, Lcom/facebook/loom/logger/Trace;->d:Lcom/facebook/loom/core/TraceOrchestrator;

    .line 55
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH-mm-ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s-%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const/4 v0, 0x2

    const-string v4, ".tmp"

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/facebook/loom/logger/Trace;->a:J

    return-wide v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/facebook/loom/logger/Trace;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Lcom/facebook/loom/logger/LogWriter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/loom/logger/Trace;->e:Lcom/facebook/loom/logger/LogWriter;

    return-object v0
.end method

.method public final c()Ljava/io/File;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/loom/logger/Trace;->b:Ljava/io/File;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/facebook/loom/logger/Trace;->b()Lcom/facebook/loom/logger/LogWriter;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/loom/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/loom/logger/Trace;->d:Lcom/facebook/loom/core/TraceOrchestrator;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/loom/logger/Trace;->d:Lcom/facebook/loom/core/TraceOrchestrator;

    invoke-virtual {v0, p0}, Lcom/facebook/loom/core/TraceOrchestrator;->a(Lcom/facebook/loom/logger/Trace;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/facebook/loom/logger/Trace;->c:I

    return v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/loom/logger/Trace;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
