.class final Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;
.super Ljava/lang/Object;
.source "user_setting_failed_360_wifi_requirement"

# interfaces
.implements Lcom/facebook/systrace/TraceListener;


# instance fields
.field final synthetic a:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

.field private b:Lcom/facebook/systrace/mainlooper/MainLooperTracer;


# direct methods
.method constructor <init>(Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;->a:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    const-wide/16 v0, 0x1000

    :try_start_0
    invoke-static {v0, v1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;->b()V

    .line 34
    iget-object v0, p0, Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;->a:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    invoke-virtual {v0}, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->a()Lcom/facebook/systrace/mainlooper/MainLooperTracer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;->b:Lcom/facebook/systrace/mainlooper/MainLooperTracer;

    .line 35
    iget-object v0, p0, Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;->b:Lcom/facebook/systrace/mainlooper/MainLooperTracer;

    invoke-virtual {v0}, Lcom/facebook/systrace/mainlooper/MainLooperTracer;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;->b:Lcom/facebook/systrace/mainlooper/MainLooperTracer;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;->b:Lcom/facebook/systrace/mainlooper/MainLooperTracer;

    invoke-virtual {v0}, Lcom/facebook/systrace/mainlooper/MainLooperTracer;->d()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/systrace/mainlooper/MainLooperTracer$1;->b:Lcom/facebook/systrace/mainlooper/MainLooperTracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
