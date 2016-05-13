.class public Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;
.super Ljava/lang/Object;
.source "stsz"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final d:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->a()Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    move-result-object v0

    sput-object v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->d:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    .line 36
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->e:Ljava/lang/ref/ReferenceQueue;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static a(Landroid/content/ServiceConnection;Z)Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;
    .locals 4
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a()V

    .line 79
    sget-object v1, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->d:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->d:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    invoke-static {v0, p0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->a(Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;Ljava/lang/Object;)Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    move-result-object v0

    .line 83
    sget-object v2, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->d:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    if-eq v0, v2, :cond_1

    .line 86
    iget-object v2, v0, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    .line 87
    if-eq v2, v0, :cond_0

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;

    monitor-exit v1

    .line 113
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b()V

    .line 94
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b()V

    .line 96
    invoke-static {p0, p1}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a(Landroid/content/ServiceConnection;Z)Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :cond_1
    if-eqz p1, :cond_2

    .line 100
    :try_start_1
    new-instance v2, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p0, v0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 102
    new-instance v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;-><init>()V

    .line 103
    new-instance v3, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    invoke-direct {v3, v0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;-><init>(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v2, v3}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->a(Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;)V

    .line 108
    sget-object v3, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->d:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    invoke-virtual {v3, v2}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b(Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;)V

    .line 110
    monitor-exit v1

    goto :goto_0

    .line 113
    :cond_2
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static a()V
    .locals 4

    .prologue
    .line 118
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 128
    sget-object v1, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->d:Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    monitor-enter v1

    .line 130
    :goto_1
    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    check-cast v0, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/detour/ChainedWeakReference;->b()V

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    sget-object v0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;I)V
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a(Landroid/content/ServiceConnection;Z)Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;

    move-result-object v0

    .line 166
    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 176
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_CALL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v1, v2, p2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 172
    invoke-direct {v0, p1, v1, p2}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a(Landroid/content/ServiceConnection;II)V

    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method private a(Landroid/content/ServiceConnection;II)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a:Landroid/content/ServiceConnection;

    .line 47
    iput p2, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->c:I

    .line 48
    iput p3, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->b:I

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 144
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/facebook/loom/core/TraceEvents;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 157
    :goto_0
    return v0

    .line 148
    :cond_0
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->ASYNC_CALL:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v1, v0, p4}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 150
    invoke-static {p2, v1}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a(Landroid/content/ServiceConnection;Z)Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;

    move-result-object v1

    .line 155
    invoke-direct {v1, p2, v0, p4}, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a(Landroid/content/ServiceConnection;II)V

    .line 157
    invoke-virtual {p0, p1, v1, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 53
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_CONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

    iget v1, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->b:I

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->c:I

    invoke-static {v3, v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a:Landroid/content/ServiceConnection;

    invoke-interface {v1, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 58
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->b:I

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_DISCONN:Lcom/facebook/loom/logger/LogEntry$EntryType;

    iget v1, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->b:I

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->c:I

    invoke-static {v3, v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->a:Landroid/content/ServiceConnection;

    invoke-interface {v1, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 69
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->SERV_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/ServiceConnectionDetour;->b:I

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 71
    return-void
.end method
