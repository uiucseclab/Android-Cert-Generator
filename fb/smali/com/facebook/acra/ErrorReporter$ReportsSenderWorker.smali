.class final Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
.super Ljava/lang/Thread;
.source "xz stream terminated prematurely"


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;

.field private final mReportTypesToSend:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field final synthetic this$0:Lcom/facebook/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;)V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 251
    iput-object p2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;

    .line 252
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    .line 259
    iput-object p2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportTypesToSend:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 260
    return-void
.end method

.method private acquireWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 3

    .prologue
    .line 291
    new-instance v0, Lcom/facebook/acra/util/PackageManagerWrapper;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v1, v1, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 292
    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 302
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v0, v0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 297
    const/4 v1, 0x1

    const-string v2, "ACRA wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 301
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method


# virtual methods
.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 266
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->acquireWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 267
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v2, v2, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport(Landroid/content/Context;Lcom/facebook/acra/CrashReportData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    :cond_0
    :goto_1
    return-void

    .line 270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v2, v2, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportTypesToSend:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/ErrorReporter;->checkAndSendReports(Landroid/content/Context;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 275
    :try_start_2
    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    throw v0
.end method
