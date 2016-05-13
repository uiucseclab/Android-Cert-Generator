.class public Lcom/facebook/katana/app/FacebookApplication;
.super Lcom/facebook/base/app/DelegatingApplication;
.source "}"

# interfaces
.implements Lcom/facebook/inject/FbInjectorProvider;
.implements Lcom/facebook/resources/HasBaseResourcesAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/base/app/DelegatingApplication",
        "<",
        "Lcom/facebook/base/app/ApplicationLike;",
        ">;",
        "Lcom/facebook/inject/FbInjectorProvider;",
        "Lcom/facebook/resources/HasBaseResourcesAccess;"
    }
.end annotation


# static fields
.field private static final g:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

.field private static final h:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;


# instance fields
.field private a:Lcom/facebook/config/application/FbAppType;

.field private b:Lcom/facebook/nobreak/CatchMeIfYouCan;

.field private c:J

.field private d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

.field private e:Lcom/facebook/base/app/LightweightPerfEvents;

.field private f:Lcom/facebook/nobreak/RecoveryModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 80
    new-array v0, v6, [Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    sput-object v0, Lcom/facebook/katana/app/FacebookApplication;->g:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    new-instance v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    const-string v2, ""

    const/4 v3, 0x3

    const-wide/32 v4, 0x1d4c0

    move v7, v6

    move v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;IJZZZ)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/katana/app/FacebookApplication;->h:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/facebook/base/app/DelegatingApplication;-><init>()V

    .line 88
    new-instance v0, Lcom/facebook/base/app/LightweightPerfEvents;

    invoke-direct {v0}, Lcom/facebook/base/app/LightweightPerfEvents;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 89
    new-instance v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 90
    return-void
.end method

.method private a(ILcom/facebook/base/app/LightweightPerfEvents;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 3
    .param p2    # Lcom/facebook/base/app/LightweightPerfEvents;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 345
    or-int/lit8 v0, p1, 0x4

    .line 346
    :try_start_0
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    or-int/lit8 v0, v0, 0x1

    .line 349
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/facebook/common/dextricks/DexLibLoader;->loadAll(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    move-result-object v1

    .line 351
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 353
    invoke-static {}, Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;->a()V

    .line 362
    invoke-static {p0}, Lcom/facebook/common/dextricks/MemoryReductionHack;->freeApkZip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_1
    return-object v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/katana/app/FacebookApplication;->a(Lcom/facebook/acra/ErrorReporter;)V

    .line 376
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_2

    .line 382
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/nobreak/CatchMeIfYouCan;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 391
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 392
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/facebook/acra/ErrorReporter;)V
    .locals 4

    .prologue
    .line 397
    new-instance v0, Lcom/facebook/common/dextricks/DexDiagnostics;

    invoke-direct {v0, p0}, Lcom/facebook/common/dextricks/DexDiagnostics;-><init>(Landroid/content/Context;)V

    .line 399
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexDiagnostics;->getDirectoryOwnerUid()I

    move-result v1

    .line 400
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 401
    const-string v3, "application_uid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    const-string v2, "directory_owner_uid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    const-string v1, "/proc/mounts"

    const-string v2, " /data "

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/dextricks/DexDiagnostics;->readProcFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    const-string v2, "mounts_file"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    const-string v1, "/proc/uptime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/dextricks/DexDiagnostics;->readProcFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string v2, "uptime_file"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    const-string v1, "/proc/loadavg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/dextricks/DexDiagnostics;->readProcFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    const-string v2, "loadavg_file"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexDiagnostics;->dumpAllDexDirectories()Ljava/lang/String;

    move-result-object v1

    .line 412
    const-string v2, "dex_directories"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexDiagnostics;->dumpLogcatData()Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string v1, "logcat_dump"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    const-string v1, "FacebookApplication"

    const-string v2, "Unable to read directory owner uid for ACRA report"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {p0, p1}, Lcom/facebook/breakpad/BreakpadManager;->a(Landroid/content/Context;I)V

    .line 105
    :cond_0
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :try_start_0
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->getMinidumpFlags()J

    move-result-wide v0

    .line 117
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 121
    const-string v2, ""

    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 123
    :goto_1
    if-eqz v2, :cond_1

    .line 124
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 125
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 128
    :cond_1
    invoke-static {v0, v1}, Lcom/facebook/breakpad/BreakpadManager;->setMinidumpFlags(J)V

    .line 130
    :cond_2
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "FacebookApplication"

    const-string v2, "registerDalvikStreamWithBreakpad failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private g()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ACRA_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->h()Lcom/facebook/config/application/FbAppType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    .line 208
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://b-www.facebook.com/mobile/android_beta_crash_logs/"

    .line 210
    :goto_0
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v0}, Lcom/facebook/config/application/FbAppType;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/errorreporting/FbCrashReporter;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_0
    new-instance v1, Lcom/facebook/common/errorreporting/FbCrashReporter;

    invoke-direct {v1, p0}, Lcom/facebook/common/errorreporting/FbCrashReporter;-><init>(Landroid/app/Application;)V

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/reporter/BaseCrashReporter;Ljava/lang/String;Z)Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 219
    const-string v1, "app"

    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v2}, Lcom/facebook/config/application/FbAppType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    const-string v1, "fb_app_id"

    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v2}, Lcom/facebook/config/application/FbAppType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    const-string v1, "app_backgrounded"

    new-instance v2, Lcom/facebook/katana/app/FacebookApplication$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/app/FacebookApplication$1;-><init>(Lcom/facebook/katana/app/FacebookApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V

    .line 230
    invoke-static {p0, v0}, Lcom/facebook/common/errorreporting/persisteduid/PersistedUid;->a(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V

    .line 232
    invoke-static {p0, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V

    .line 234
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    const-wide/32 v2, 0x100000

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/ErrorReporter;->setMaxReportSize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ACRA_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 239
    return-void

    .line 208
    :cond_2
    :try_start_1
    const-string v0, "https://b-www.facebook.com/mobile/android_crash_logs/"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ACRA_Setup"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private h()Lcom/facebook/config/application/FbAppType;
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "FacebookApplication#getAppType"

    invoke-virtual {v0, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    .line 435
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/katana/app/WorkAppTypes;->a:Lcom/facebook/config/application/FbAppType;

    .line 446
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "FacebookApplication#getAppType"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 447
    return-object v0

    .line 436
    :cond_0
    sget-object v0, Lcom/facebook/katana/app/WorkAppTypes;->b:Lcom/facebook/config/application/FbAppType;

    goto :goto_0

    .line 441
    :cond_1
    sget-object v0, Lcom/facebook/katana/app/FacebookAppTypes;->a:Lcom/facebook/config/application/FbAppType;

    sget-object v1, Lcom/facebook/katana/app/FacebookAppTypes;->b:Lcom/facebook/config/application/FbAppType;

    sget-object v2, Lcom/facebook/katana/app/FacebookAppTypes;->c:Lcom/facebook/config/application/FbAppType;

    invoke-static {v0, v1, v2}, Lcom/facebook/config/application/FbAppTypeSelector;->a(Lcom/facebook/config/application/FbAppType;Lcom/facebook/config/application/FbAppType;Lcom/facebook/config/application/FbAppType;)Lcom/facebook/config/application/FbAppType;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/facebook/inject/FbInjector;
    .locals 3

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/facebook/base/app/DelegatingApplication;->e()Lcom/facebook/base/app/ApplicationLike;

    move-result-object v0

    .line 423
    instance-of v1, v0, Lcom/facebook/katana/app/FacebookApplicationImpl;

    if-eqz v1, :cond_0

    .line 424
    check-cast v0, Lcom/facebook/katana/app/FacebookApplicationImpl;

    .line 425
    invoke-virtual {v0}, Lcom/facebook/base/app/AbstractApplicationLike;->a()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    return-object v0

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Injector is not supported in process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final c()Lcom/facebook/base/app/ApplicationLike;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 245
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "startupstress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    invoke-virtual {p0}, Lcom/facebook/katana/app/FacebookApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/process/ProcessName;->a(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    .line 253
    invoke-static {v0}, Lcom/facebook/common/process/ProcessName;->a(Lcom/facebook/common/process/ProcessName;)V

    .line 265
    :cond_0
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->a()V

    .line 272
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 274
    :try_start_0
    invoke-static {p0}, Lcom/facebook/common/dextricks/MemoryEnlargementHack;->growMyHeap(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v1, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    .line 283
    :try_start_1
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-virtual {v1, p0}, Lcom/facebook/nobreak/RecoveryModeHelper;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    invoke-static {}, Lcom/facebook/nobreak/RecoveryModeHelper;->b()V

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/EnsureDexsLoaded"

    invoke-virtual {v1, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    invoke-direct {p0, v1, v2}, Lcom/facebook/katana/app/FacebookApplication;->a(ILcom/facebook/base/app/LightweightPerfEvents;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 294
    :try_start_3
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/EnsureDexsLoaded"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 297
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 299
    invoke-static {p0}, Lcom/facebook/common/gcinitopt/GcOptimizer;->a(Landroid/content/Context;)V

    .line 304
    :cond_4
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/facebook/dalvik/DalvikLinearAllocType;->FBANDROID_DEBUG:Lcom/facebook/dalvik/DalvikLinearAllocType;

    .line 309
    :goto_1
    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v4, "ColdStart/ReplaceLinearAllocBuffer"

    invoke-virtual {v2, v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 311
    :try_start_4
    invoke-static {v1}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a(Lcom/facebook/dalvik/DalvikLinearAllocType;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    .line 313
    :try_start_5
    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v4, "ColdStart/ReplaceLinearAllocBuffer"

    invoke-virtual {v2, v4}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 316
    if-nez v1, :cond_5

    .line 317
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FallbackReplaceLinearAllocBuffer"

    invoke-virtual {v1, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 319
    :try_start_6
    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 321
    :try_start_7
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FallbackReplaceLinearAllocBuffer"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 325
    :cond_5
    new-instance v0, Lcom/facebook/katana/app/FacebookApplicationImpl;

    iget-object v2, p0, Lcom/facebook/katana/app/FacebookApplication;->a:Lcom/facebook/config/application/FbAppType;

    iget-wide v4, p0, Lcom/facebook/katana/app/FacebookApplication;->c:J

    iget-object v6, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    iget-object v7, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/app/FacebookApplicationImpl;-><init>(Landroid/app/Application;Lcom/facebook/config/application/FbAppType;Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;JLcom/facebook/base/lwperf/perfstats/PerfStats;Lcom/facebook/base/app/LightweightPerfEvents;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 335
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 336
    iput-object v8, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 337
    iput-object v8, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    :goto_2
    return-object v0

    .line 254
    :cond_6
    const-string v0, "optsvc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    const/4 v0, 0x2

    invoke-direct {p0, v0, v8}, Lcom/facebook/katana/app/FacebookApplication;->a(ILcom/facebook/base/app/LightweightPerfEvents;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    .line 256
    new-instance v0, Lcom/facebook/base/app/ApplicationLike;

    invoke-direct {v0}, Lcom/facebook/base/app/ApplicationLike;-><init>()V

    goto :goto_2

    .line 257
    :cond_7
    const-string v0, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    new-instance v0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;-><init>(Landroid/app/Application;Lcom/facebook/nobreak/RecoveryModeHelper;)V

    goto :goto_2

    .line 262
    :cond_8
    new-instance v0, Lcom/facebook/base/app/ApplicationLike;

    invoke-direct {v0}, Lcom/facebook/base/app/ApplicationLike;-><init>()V

    goto :goto_2

    .line 275
    :catch_0
    move-exception v1

    .line 276
    const-string v2, "FacebookApplication"

    const-string v3, "Unable to set large heap mode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/EnsureDexsLoaded"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 335
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.createDelegate"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 336
    iput-object v8, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 337
    iput-object v8, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    throw v0

    .line 304
    :cond_9
    :try_start_9
    sget-object v1, Lcom/facebook/dalvik/DalvikLinearAllocType;->FBANDROID_RELEASE:Lcom/facebook/dalvik/DalvikLinearAllocType;

    goto/16 :goto_1

    .line 313
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/ReplaceLinearAllocBuffer"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    throw v0

    .line 321
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FallbackReplaceLinearAllocBuffer"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method protected final d()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatUse",
            "BadMethodUse-android.util.Log.v",
            "BadMethodUse-android.util.Log.d",
            "BadMethodUse-android.util.Log.i",
            "BadMethodUse-android.util.Log.w",
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/app/FacebookApplication;->c:J

    .line 154
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->d:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->l()Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 158
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBAppImpl.onCreate"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->d(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBApp.onBaseContextAttached"

    invoke-virtual {v0, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    .line 162
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->b()Z

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "CatchMeIfYouCan_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/katana/app/FacebookApplication;->h:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    :goto_0
    invoke-static {p0, v0}, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->a(Landroid/app/Application;[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;)Lcom/facebook/nobreak/CatchMeIfYouCan;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "CatchMeIfYouCan_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/facebook/nobreak/RecoveryModeHelper;->a()Lcom/facebook/nobreak/RecoveryModeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->f:Lcom/facebook/nobreak/RecoveryModeHelper;

    .line 178
    invoke-static {p0}, Lcom/facebook/nobreak/ExceptionHandlerToDispatchKnownExceptionRemedies;->a(Landroid/app/Application;)V

    .line 180
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplication;->g()V

    .line 182
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "soloader_init"

    invoke-virtual {v0, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    const/4 v1, 0x0

    .line 183
    const/4 v0, 0x2

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/facebook/base/app/DelegatingApplication;->a(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 184
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "BreakpadManager_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/facebook/katana/app/FacebookApplication;->b(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 190
    :try_start_6
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "BreakpadManager_Setup"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a(Landroid/app/Application;Lcom/facebook/common/process/ProcessName;)V

    .line 196
    invoke-static {}, Lcom/facebook/systrace/MemoryTracer;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 198
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBApp.onBaseContextAttached"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 199
    return-void

    .line 171
    :cond_1
    :try_start_7
    sget-object v0, Lcom/facebook/katana/app/FacebookApplication;->g:[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "CatchMeIfYouCan_Setup"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 198
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBApp.onBaseContextAttached"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    throw v0

    .line 182
    :catch_0
    move-exception v1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 184
    :catchall_2
    move-exception v0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_a
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_2
    :goto_1
    :try_start_b
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_1

    .line 190
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplication;->e:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "BreakpadManager_Setup"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/facebook/systrace/SystraceEnabledDetector;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/base/app/DelegatingApplication;->a(I)V

    .line 139
    :cond_0
    return-void
.end method
