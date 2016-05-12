.class public Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;
.super Ljava/lang/Object;
.source "soun"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

.field private final d:Lcom/facebook/http/protocol/AbstractSingleMethodRunner;

.field private final e:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mInFlightTraces"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/http/protocol/AbstractSingleMethodRunner;Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;)V
    .locals 2
    .param p3    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p3, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b:Ljava/util/concurrent/ExecutorService;

    .line 48
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    .line 49
    iput-object p2, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a:Ljava/util/concurrent/ExecutorService;

    .line 50
    iput-object p4, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->d:Lcom/facebook/http/protocol/AbstractSingleMethodRunner;

    .line 51
    iput-object p5, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->e:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->f:Ljava/util/Set;

    .line 53
    return-void
.end method

.method private a(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    .locals 3
    .param p2    # Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 148
    if-eqz p2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$2;-><init>(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Ljava/io/File;)V

    const v2, -0x6a2d8adc

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 157
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 83
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->f:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    iget-object v3, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    monitor-exit v2

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$1;-><init>(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V

    const v0, -0x71410b3f

    invoke-static {v2, v3, v0}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 113
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private b(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    .locals 3
    .param p2    # Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    if-eqz p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;-><init>(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Ljava/io/File;)V

    const v2, 0x67d24c8b

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V
    .locals 7
    .param p2    # Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/facebook/http/protocol/ApiMethodRunnerParams;

    invoke-direct {v0}, Lcom/facebook/http/protocol/ApiMethodRunnerParams;-><init>()V

    .line 125
    sget-object v1, Lcom/facebook/http/interfaces/RequestPriority;->CAN_WAIT:Lcom/facebook/http/interfaces/RequestPriority;

    invoke-virtual {v0, v1}, Lcom/facebook/http/protocol/ApiMethodRunnerParams;->a(Lcom/facebook/http/interfaces/RequestPriority;)V

    .line 126
    const-class v1, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    invoke-static {v1}, Lcom/facebook/common/callercontext/CallerContext;->a(Ljava/lang/Class;)Lcom/facebook/common/callercontext/CallerContext;

    move-result-object v1

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->d:Lcom/facebook/http/protocol/AbstractSingleMethodRunner;

    iget-object v3, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->e:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/facebook/http/protocol/AbstractSingleMethodRunner;->a(Lcom/facebook/http/protocol/ApiMethod;Ljava/lang/Object;Lcom/facebook/http/protocol/ApiMethodRunnerParams;Lcom/facebook/common/callercontext/CallerContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    if-nez p3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a(J)V

    .line 134
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "Dextr"

    const-string v2, "Upload failed for trace %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V

    goto :goto_0

    .line 136
    :cond_2
    :try_start_1
    const-string v0, "Dextr"

    const-string v1, "Upload failed for trace %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->b(Ljava/io/File;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V

    .line 60
    return-void
.end method

.method public final b(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;->a(Ljava/util/List;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Z)V

    .line 67
    return-void
.end method
