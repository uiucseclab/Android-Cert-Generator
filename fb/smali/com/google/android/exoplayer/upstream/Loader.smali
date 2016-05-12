.class public final Lcom/google/android/exoplayer/upstream/Loader;
.super Ljava/lang/Object;
.source "nodex_message"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field public b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 149
    new-instance v1, Lcom/google/android/exoplayer/util/Util$1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer/util/Util$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v0, v1

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    .line 116
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 143
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 144
    iput-boolean v1, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    .line 145
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;-><init>(Lcom/google/android/exoplayer/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader;->b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    const v2, -0x2b76aacb

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 147
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 129
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer/upstream/Loader;->a(Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 130
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->b:Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->a()V

    .line 166
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->c:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/Loader;->b()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 178
    return-void
.end method
