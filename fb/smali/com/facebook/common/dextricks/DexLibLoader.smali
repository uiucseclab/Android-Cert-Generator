.class public final Lcom/facebook/common/dextricks/DexLibLoader;
.super Ljava/lang/Object;
.source "xW-31ZG6ZwTfBH_Zj1NTcv6gAhE"


# static fields
.field public static deoptTaint:Z

.field private static sMainDexStore:Lcom/facebook/common/dextricks/DexStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    return-void
.end method

.method public static final declared-synchronized getLastCompilationTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 222
    const-class v2, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v2

    const-wide/16 v0, 0x0

    .line 223
    :try_start_0
    sget-object v3, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    if-eqz v3, :cond_0

    .line 224
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore;->getLastRegenTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 226
    :cond_0
    monitor-exit v2

    return-wide v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getMainDexStore()Lcom/facebook/common/dextricks/DexStore;
    .locals 3

    .prologue
    .line 170
    const-class v1, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "main dex store not loaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 173
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized loadAll(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 13
    .param p2    # Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 60
    const-class v5, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v5

    if-nez p2, :cond_0

    .line 61
    :try_start_0
    new-instance p2, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;

    invoke-direct {p2}, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;-><init>()V

    .line 64
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    .line 66
    :goto_0
    const-string v4, "DLL.loadAll betaBuild:%s flags:0x%08x"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v4, "DLL2_load_main"

    invoke-virtual {p2, v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 75
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 78
    :try_start_2
    invoke-static {v4}, Lcom/facebook/dalvik/DalvikInternals;->realpath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v7

    .line 84
    :try_start_3
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/app_secondary_program_dex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 85
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/app_secondary_program_dex_opt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 88
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 89
    const-string v8, "resolved non-canonical data directory %s to %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v7, v9, v4

    invoke-static {v8, v9}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/dex"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {p2, p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->obtainResProvider(Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;Z)Lcom/facebook/common/dextricks/ResProvider;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    .line 96
    if-nez v9, :cond_6

    .line 97
    :try_start_4
    const-string v0, "Nothing to do in DexLibLoader.loadAll: no resProvider"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;-><init>()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 150
    if-eqz v9, :cond_2

    :try_start_5
    invoke-virtual {v9}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 151
    :cond_2
    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :goto_1
    monitor-exit v5

    return-object v0

    :cond_4
    move v0, v3

    .line 64
    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    :try_start_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 69
    :catch_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 151
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v2, :cond_11

    :try_start_9
    invoke-virtual {v6}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :goto_3
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 60
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 101
    :cond_6
    :try_start_b
    const-string v0, "opening dex store %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v0, v10}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {v4, v8, v9}, Lcom/facebook/common/dextricks/DexStore;->open(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;)Lcom/facebook/common/dextricks/DexStore;

    move-result-object v8

    .line 103
    sput-object v8, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    .line 104
    new-instance v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;-><init>()V

    .line 106
    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_d

    .line 108
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_12

    .line 111
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/force-release-optimization"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 114
    const-string v7, "using release-level optimization because %s exists"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v7, v10}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v3

    .line 121
    :goto_4
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_7

    .line 122
    or-int/lit8 v4, v4, 0x4

    .line 125
    :cond_7
    new-instance v7, Ljava/io/File;

    const-string v10, "/data/local/tmp/ctscan_test_running"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 126
    const-string v7, "disabling background optimization in CT-Scan mode"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    and-int/lit8 v4, v4, -0x6

    .line 128
    or-int/lit8 v4, v4, 0x8

    .line 131
    :cond_8
    invoke-virtual {v8, v4, p2}, Lcom/facebook/common/dextricks/DexStore;->loadAll(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)I

    move-result v4

    .line 137
    :goto_5
    and-int/lit8 v7, v4, 0x10

    if-eqz v7, :cond_9

    .line 138
    const-string v7, "running deoptimized code"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const/4 v7, 0x1

    sput-boolean v7, Lcom/facebook/common/dextricks/DexLibLoader;->deoptTaint:Z

    .line 142
    :cond_9
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_a

    .line 143
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->needOptimization:Z

    .line 145
    :cond_a
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    :goto_6
    iput-boolean v1, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->hadToGenerateDexes:Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 150
    if-eqz v9, :cond_b

    :try_start_c
    invoke-virtual {v9}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 151
    :cond_b
    if-eqz v6, :cond_3

    :try_start_d
    invoke-virtual {v6}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    :cond_c
    move v4, v1

    .line 117
    goto :goto_4

    .line 133
    :cond_d
    :try_start_e
    const-string v4, "skipping actual loadAll as requested"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move v4, v3

    .line 134
    goto :goto_5

    :cond_e
    move v1, v3

    .line 145
    goto :goto_6

    .line 147
    :catch_2
    move-exception v0

    .line 148
    :try_start_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 95
    :catch_3
    move-exception v0

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 150
    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_7
    if-eqz v9, :cond_f

    if-eqz v1, :cond_10

    :try_start_11
    invoke-virtual {v9}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_f
    :goto_8
    :try_start_12
    throw v0

    .line 151
    :catchall_3
    move-exception v0

    goto/16 :goto_2

    .line 150
    :catch_4
    move-exception v3

    invoke-static {v1, v3}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_10
    invoke-virtual {v9}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_8

    .line 151
    :catch_5
    move-exception v1

    :try_start_13
    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v6}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_3

    .line 150
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :cond_12
    move v4, v3

    goto/16 :goto_4
.end method

.method static obtainResProvider(Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;Z)Lcom/facebook/common/dextricks/ResProvider;
    .locals 5

    .prologue
    .line 241
    const-string v0, "DLL2_obtain_res_provider"

    invoke-virtual {p0, v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v2

    const/4 v1, 0x0

    .line 243
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/common/dextricks/DexLibLoader;->obtainResProviderInternal(Landroid/content/Context;Z)Lcom/facebook/common/dextricks/ResProvider;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 247
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    :cond_0
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    throw v0

    :catch_2
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static obtainResProviderInternal(Landroid/content/Context;Z)Lcom/facebook/common/dextricks/ResProvider;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 266
    new-instance v0, Lcom/facebook/common/dextricks/DexLibLoader$ApkResProvider;

    invoke-direct {v0, p0}, Lcom/facebook/common/dextricks/DexLibLoader$ApkResProvider;-><init>(Landroid/content/Context;)V

    .line 268
    :try_start_0
    const-string v2, "metadata.txt"

    invoke-virtual {v0, v2}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 276
    :goto_1
    if-eqz p1, :cond_0

    .line 277
    new-instance v0, Lcom/facebook/common/dextricks/DexLibLoader$ExoPackageResProvider;

    invoke-direct {v0, p0}, Lcom/facebook/common/dextricks/DexLibLoader$ExoPackageResProvider;-><init>(Landroid/content/Context;)V

    .line 279
    :try_start_1
    const-string v2, "metadata.txt"

    invoke-virtual {v0, v2}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 280
    const-string v2, "using exopackage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    move-object v0, v1

    .line 287
    goto :goto_0

    .line 274
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized setRegenerateOnNextLoadHint(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 207
    const-class v1, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore;->forceRegenerateOnNextLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    monitor-exit v1

    return-void

    .line 210
    :cond_0
    :try_start_1
    const-string v0, "setRegenerateOnNextLoadHint called without a main dex store present"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static verifyCanaryClasses()Ljava/lang/RuntimeException;
    .locals 4

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;

    move-result-object v0

    move-object v1, v0

    .line 184
    :goto_0
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/DexStore;->getLoadedManifest()Lcom/facebook/common/dextricks/DexManifest;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_0

    .line 188
    const/4 v0, 0x0

    :goto_1
    iget-object v3, v2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 189
    iget-object v3, v2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_0
    iget-object v0, v1, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    .line 195
    :goto_2
    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->runtimeExFrom(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_2
.end method
