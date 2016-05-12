.class Lcom/facebook/loom/logger/LoggerWorkerThread$1;
.super Ljava/lang/Object;
.source "unexpectedEndOfInput"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/facebook/loom/logger/LoggerWorkerThread;


# direct methods
.method constructor <init>(Lcom/facebook/loom/logger/LoggerWorkerThread;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/loom/logger/LoggerWorkerThread$1;->a:Lcom/facebook/loom/logger/LoggerWorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "Dextr"

    const-string v1, "Unhandled exception -- Dextr disabled"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 64
    iget-object v0, p0, Lcom/facebook/loom/logger/LoggerWorkerThread$1;->a:Lcom/facebook/loom/logger/LoggerWorkerThread;

    invoke-virtual {v0}, Lcom/facebook/loom/logger/LoggerWorkerThread;->a()V

    .line 65
    return-void
.end method
