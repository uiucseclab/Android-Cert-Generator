.class public Lcom/facebook/katana/app/FacebookApplicationImpl;
.super Lcom/facebook/base/app/AbstractApplicationLike;
.source "width"

# interfaces
.implements Lcom/facebook/inject/FbInjectorProvider;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field private final k:Landroid/content/Context;

.field public final l:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

.field public m:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

.field private final n:J

.field private final o:Lcom/facebook/base/lwperf/perfstats/PerfStats;

.field private p:Lcom/facebook/base/app/LightweightPerfEvents;

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/facebook/katana/app/FacebookApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/app/FacebookApplicationImpl;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/config/application/FbAppType;Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;JLcom/facebook/base/lwperf/perfstats/PerfStats;Lcom/facebook/base/app/LightweightPerfEvents;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p7}, Lcom/facebook/base/app/AbstractApplicationLike;-><init>(Landroid/app/Application;Lcom/facebook/config/application/FbAppType;Lcom/facebook/base/app/LightweightPerfEvents;)V

    .line 76
    iput-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->q:Z

    .line 77
    iput-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->r:Z

    .line 87
    iput-object p3, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->l:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    .line 88
    iput-wide p4, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:J

    .line 89
    iput-object p6, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 90
    iput-object p1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->k:Landroid/content/Context;

    .line 91
    iput-object p7, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;Lcom/facebook/base/lwperf/perfstats/PerfStats;)V
    .locals 1

    .prologue
    .line 62
    invoke-static/range {p0 .. p8}, Lcom/facebook/katana/app/FacebookApplicationImpl;->b(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;Lcom/facebook/base/lwperf/perfstats/PerfStats;)V

    return-void
.end method

.method private a(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/feed/perf/FeedPerfLogger;)V
    .locals 8

    .prologue
    .line 243
    const-string v0, "FacebookApplicationImpl.runPerfMarkers"

    const v1, 0x6eeef8d9

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->m:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    invoke-virtual {v0}, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->getProcessName()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-wide v2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:J

    iget-object v4, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->o:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->g()Z

    move-result v5

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->e()J

    move-result-wide v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/feed/perf/FeedPerfLogger;->a(JLcom/facebook/base/lwperf/perfstats/PerfStats;ZJ)V

    .line 252
    new-instance v0, Lcom/facebook/performancelogger/MarkerConfig;

    const v1, 0xa0034

    const-string v2, "NNF_PermalinkFromAndroidNotificationColdLoad"

    invoke-direct {v0, v1, v2}, Lcom/facebook/performancelogger/MarkerConfig;-><init>(ILjava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/performancelogger/MarkerConfig;->a(J)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "story_view"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/facebook/apptab/state/TabTag;->Notifications:Lcom/facebook/apptab/state/TabTag;

    iget-object v3, v3, Lcom/facebook/apptab/state/TabTag;->analyticsTag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/performancelogger/MarkerConfig;->a([Ljava/lang/String;)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/performancelogger/MarkerConfig;->b()Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/performancelogger/MarkerConfig;->c(Z)Lcom/facebook/performancelogger/MarkerConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/performancelogger/PerformanceLogger;->c(Lcom/facebook/performancelogger/MarkerConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_0
    const v0, -0x4638677f

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    const v1, 0x3ca60ca3

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method

.method private static b(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;Lcom/facebook/base/lwperf/perfstats/PerfStats;)V
    .locals 11

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v6, p3

    move-object/from16 v8, p8

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/perf/StartupPerfLogger;->a(ILjava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLcom/facebook/base/lwperf/perfstats/PerfStats;Ljava/lang/Boolean;)Lcom/facebook/perf/StartupPerfLogger;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/perf/StartupPerfLogger;->a(ILjava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLjava/lang/Boolean;)Lcom/facebook/perf/StartupPerfLogger;

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->m:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    invoke-virtual {v0}, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->getProcessName()Lcom/facebook/common/process/ProcessName;

    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->l:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-boolean v0, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->hadToGenerateDexes:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/LightWeightPerfState;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 277
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->l:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-boolean v0, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->hadToGenerateDexes:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/LightWeightPerfState;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized h()V
    .locals 1

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->r:Z

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/base/app/LightweightPerfEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 354
    const-string v0, "FacebookApplicationImpl.startStrictMode"

    const v1, 0x4bcd61af    # 2.6919774E7f

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->a()Lcom/facebook/inject/FbInjector;

    move-result-object v1

    .line 357
    invoke-static {v1}, Lcom/facebook/config/application/SignatureTypeMethodAutoProvider;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/build/SignatureType;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/build/SignatureType;

    .line 358
    if-eqz v0, :cond_0

    sget-object v2, Lcom/facebook/common/build/SignatureType;->DEBUG:Lcom/facebook/common/build/SignatureType;

    if-ne v0, v2, :cond_0

    .line 359
    new-instance v2, Lcom/facebook/strictmode/StrictModeAggregator;

    invoke-static {v1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;

    invoke-static {v1}, Lcom/facebook/common/random/Random_InsecureRandomMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Ljava/util/Random;

    move-result-object v1

    check-cast v1, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Lcom/facebook/strictmode/StrictModeAggregator;-><init>(Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;Ljava/util/Random;)V

    .line 364
    invoke-virtual {v2}, Lcom/facebook/strictmode/StrictModeAggregator;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_0
    const v0, -0x36aa365a

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    const v1, 0x5069fd38

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/facebook/common/process/ProcessName;)V
    .locals 1

    .prologue
    .line 215
    invoke-static {p1}, Lcom/facebook/katana/app/module/common/FbandroidProcessName;->convertProcessNameToProcessEnum(Lcom/facebook/common/process/ProcessName;)Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->m:Lcom/facebook/katana/app/module/common/FbandroidProcessName;

    .line 216
    return-void
.end method

.method public final a(Lcom/facebook/perf/StartupPerfLogger;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/AppInitialization"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->e(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/base/app/LightweightPerfEvents;

    new-instance v1, Lcom/facebook/katana/app/FacebookApplicationImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/app/FacebookApplicationImpl$3;-><init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/perf/StartupPerfLogger;)V

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Lcom/facebook/katana/app/FacebookApplicationImpl$3;)V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->r:Z

    .line 310
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->h()V

    .line 311
    return-void
.end method

.method protected final b(Lcom/facebook/common/process/ProcessName;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->a()Lcom/facebook/inject/FbInjector;

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/facebook/backgroundtasks/BackgroundTaskController;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/backgroundtasks/BackgroundTaskController;

    move-result-object v0

    check-cast v0, Lcom/facebook/backgroundtasks/BackgroundTaskController;

    .line 224
    invoke-virtual {p1}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const-class v1, Lcom/facebook/contacts/background/ContactsTaskTag;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/backgroundtasks/BackgroundTaskController;->a(Ljava/lang/Class;Z)V

    .line 226
    const-class v1, Lcom/facebook/messaging/background/MessagesDataTaskTag;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/backgroundtasks/BackgroundTaskController;->a(Ljava/lang/Class;Z)V

    .line 227
    const-class v1, Lcom/facebook/messaging/background/MessagesLocalTaskTag;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/backgroundtasks/BackgroundTaskController;->a(Ljava/lang/Class;Z)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/AppInitialization"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->d(Ljava/lang/String;)V

    .line 234
    return-void

    .line 230
    :cond_0
    invoke-static {v1}, Lcom/facebook/common/appstate/AppStateManager;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/appstate/AppStateManager;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/appstate/AppStateManager;

    iget-wide v2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->n:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/common/appstate/AppStateManager;->a(J)V

    goto :goto_0
.end method

.method public final c()V
    .locals 11

    .prologue
    const v2, 0x4e0004

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/FBAppImpl.onCreate"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->e(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 105
    const-string v0, "FacebookApplicationImpl.onCreate"

    const v1, -0x193c6f0a

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 108
    :try_start_0
    const-string v0, "TraceOrchestrator.initialize"

    const v1, -0x60595387

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->k:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/loom/core/TraceOrchestrator;->a(Landroid/content/Context;Lcom/facebook/loom/config/ConfigProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    const v0, -0x27ccd49a

    :try_start_2
    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 115
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/facebook/katana/app/FacebookApplicationImpl$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/app/FacebookApplicationImpl$1;-><init>(Lcom/facebook/katana/app/FacebookApplicationImpl;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 124
    :cond_0
    const-string v0, "ReportAProblem.setReportAProblemConfigProvider"

    const v1, -0x200af8a

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :try_start_3
    new-instance v0, Lcom/facebook/reportaproblem/fb/FbReportAProblemConfigProvider;

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/reportaproblem/fb/FbReportAProblemConfigProvider;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/facebook/reportaproblem/base/ReportAProblem;->a(Lcom/facebook/reportaproblem/fb/FbReportAProblemConfigProvider;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    const v0, -0x4a6d3904

    :try_start_4
    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 132
    const-string v0, "FacebookApplicationImpl.super.onCreate"

    const v1, 0x694b2a9

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    :try_start_5
    invoke-super {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 136
    const v0, -0x660cac23

    :try_start_6
    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 139
    invoke-static {}, Lcom/facebook/common/errorreporting/AcraBLogBridge;->a()V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->a()Lcom/facebook/inject/FbInjector;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .line 144
    :try_start_7
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->i()V

    .line 146
    invoke-static {v3}, Lcom/facebook/performancelogger/DelegatingPerformanceLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/performancelogger/DelegatingPerformanceLogger;

    move-result-object v0

    check-cast v0, Lcom/facebook/performancelogger/PerformanceLogger;

    invoke-static {v3}, Lcom/facebook/feed/perf/FeedPerfLogger;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/feed/perf/FeedPerfLogger;

    move-result-object v1

    check-cast v1, Lcom/facebook/feed/perf/FeedPerfLogger;

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/feed/perf/FeedPerfLogger;)V

    .line 150
    invoke-static {v3}, Lcom/facebook/common/init/AppInitLock;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/init/AppInitLock;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/init/AppInitLock;

    .line 151
    new-instance v1, Lcom/facebook/katana/app/FacebookApplicationImpl$2;

    invoke-direct {v1, p0, v3}, Lcom/facebook/katana/app/FacebookApplicationImpl$2;-><init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/inject/FbInjector;)V

    invoke-virtual {v0, v1}, Lcom/facebook/common/init/AppInitLock;->a(Lcom/facebook/common/init/AppInitLock$Listener;)V

    .line 176
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v6, "ColdStart/UIThreadBlockedOnAppInit"

    const v7, 0x700002

    invoke-virtual {v1, v6, v7}, Lcom/facebook/base/app/LightweightPerfEvents;->a(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v0}, Lcom/facebook/common/init/AppInitLock;->b()V

    .line 180
    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->onColdStartEnd()V

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->p:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v1, "ColdStart/UIThreadBlockedOnAppInit"

    invoke-virtual {v0, v1}, Lcom/facebook/base/app/LightweightPerfEvents;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 184
    const v0, -0x70b3df4f

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 185
    if-eqz v3, :cond_1

    .line 186
    invoke-static {v3}, Lcom/facebook/perf/StartupPerfLogger;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/perf/StartupPerfLogger;

    move-result-object v1

    check-cast v1, Lcom/facebook/perf/StartupPerfLogger;

    const-string v3, "ApplicationOnCreate"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v1 .. v9}, Lcom/facebook/katana/app/FacebookApplicationImpl;->b(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;Lcom/facebook/base/lwperf/perfstats/PerfStats;)V

    .line 195
    :cond_1
    iput-boolean v10, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->q:Z

    .line 196
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->h()V

    .line 197
    return-void

    .line 112
    :catchall_0
    move-exception v0

    const v1, -0x634a15f7

    :try_start_8
    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 184
    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_0
    const v3, -0x56958a13

    invoke-static {v3}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 185
    if-eqz v1, :cond_2

    .line 186
    invoke-static {v1}, Lcom/facebook/perf/StartupPerfLogger;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/perf/StartupPerfLogger;

    move-result-object v1

    check-cast v1, Lcom/facebook/perf/StartupPerfLogger;

    const-string v3, "ApplicationOnCreate"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->a()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->d()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v1 .. v9}, Lcom/facebook/katana/app/FacebookApplicationImpl;->b(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;Lcom/facebook/base/lwperf/perfstats/PerfStats;)V

    .line 195
    :cond_2
    iput-boolean v10, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->q:Z

    .line 196
    invoke-direct {p0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->h()V

    throw v0

    .line 129
    :catchall_2
    move-exception v0

    const v1, -0x7a45f51f

    :try_start_9
    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0

    .line 136
    :catchall_3
    move-exception v0

    const v1, -0x484c37af

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 184
    :catchall_4
    move-exception v0

    move-object v1, v3

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "FacebookApplicationImpl.initializeUDPPriming"

    const v1, 0x6f95d5a1

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 205
    :try_start_0
    invoke-static {}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a()Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a(Landroid/content/Context;)Z

    .line 206
    invoke-static {}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a()Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a(Landroid/content/Context;)Z

    .line 207
    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const v0, -0x416aadd2

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    const v1, -0x3f90dcf3

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method
