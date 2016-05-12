.class public abstract Lcom/facebook/base/app/AbstractApplicationLike;
.super Lcom/facebook/base/app/ApplicationLike;
.source "when"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithContext;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field protected final a:Landroid/app/Application;

.field b:Lcom/facebook/common/init/impl/FbAppInitializer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/facebook/debug/activitytracer/ActivityTracer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ljava/util/concurrent/Executor;
    .annotation runtime Lcom/facebook/common/executors/ForUiThread;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field volatile e:Lcom/facebook/resources/FbResources;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/facebook/common/memory/MemoryManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/facebook/config/application/FbAppType;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/facebook/debug/coldstart/ColdStartTimer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l:Lcom/facebook/base/app/LightweightPerfEvents;

.field private m:Lcom/facebook/inject/FbInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/facebook/base/app/AbstractApplicationLike;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/base/app/AbstractApplicationLike;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/config/application/FbAppType;Lcom/facebook/base/app/LightweightPerfEvents;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/facebook/base/app/ApplicationLike;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    iput-object p1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->a:Landroid/app/Application;

    .line 110
    .line 19
    sput-object p2, Lcom/facebook/config/application/FbAppType;->a:Lcom/facebook/config/application/FbAppType;

    .line 20
    .line 111
    iput-object p3, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 112
    return-void
.end method

.method private a(Lcom/facebook/common/init/impl/FbAppInitializer;Lcom/facebook/debug/activitytracer/ActivityTracer;Ljava/util/concurrent/Executor;Lcom/facebook/resources/FbResources;Lcom/facebook/inject/Lazy;Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;Lcom/facebook/config/application/FbAppType;Lcom/facebook/debug/coldstart/ColdStartTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/init/impl/FbAppInitializer;",
            "Lcom/facebook/debug/activitytracer/ActivityTracer;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/resources/FbResources;",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/facebook/common/memory/MemoryManager;",
            ">;",
            "Lcom/facebook/systrace/mainlooper/MainLooperTracerFactory;",
            "Lcom/facebook/config/application/FbAppType;",
            "Lcom/facebook/debug/coldstart/ColdStartTimer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->b:Lcom/facebook/common/init/impl/FbAppInitializer;

    iput-object p2, p0, Lcom/facebook/base/app/AbstractApplicationLike;->c:Lcom/facebook/debug/activitytracer/ActivityTracer;

    iput-object p3, p0, Lcom/facebook/base/app/AbstractApplicationLike;->d:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/facebook/base/app/AbstractApplicationLike;->e:Lcom/facebook/resources/FbResources;

    iput-object p5, p0, Lcom/facebook/base/app/AbstractApplicationLike;->f:Lcom/facebook/inject/Lazy;

    iput-object p6, p0, Lcom/facebook/base/app/AbstractApplicationLike;->g:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    iput-object p7, p0, Lcom/facebook/base/app/AbstractApplicationLike;->h:Lcom/facebook/config/application/FbAppType;

    iput-object p8, p0, Lcom/facebook/base/app/AbstractApplicationLike;->i:Lcom/facebook/debug/coldstart/ColdStartTimer;

    return-void
.end method

.method private static a(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/inject/InjectableComponentWithContext;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/facebook/inject/InjectableComponentWithContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/base/app/AbstractApplicationLike;->a(Ljava/lang/Object;Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 9

    invoke-static {p1}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Lcom/facebook/base/app/AbstractApplicationLike;

    invoke-static {v8}, Lcom/facebook/common/init/impl/FbAppInitializer;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/init/impl/FbAppInitializer;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/init/impl/FbAppInitializer;

    invoke-static {v8}, Lcom/facebook/debug/activitytracer/ActivityTracer;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/debug/activitytracer/ActivityTracer;

    move-result-object v2

    check-cast v2, Lcom/facebook/debug/activitytracer/ActivityTracer;

    invoke-static {v8}, Lcom/facebook/common/executors/ListeningScheduledExecutorService_ForUiThreadMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-static {v8}, Lcom/facebook/resources/impl/DownloadedFbResources;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/resources/impl/DownloadedFbResources;

    move-result-object v4

    check-cast v4, Lcom/facebook/resources/FbResources;

    const/16 v5, 0x24e

    invoke-static {v8, v5}, Lcom/facebook/inject/IdBasedSingletonScopeProvider;->c(Lcom/facebook/inject/InjectorLike;I)Lcom/facebook/inject/Lazy;

    move-result-object v5

    invoke-static {v8}, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    move-result-object v6

    check-cast v6, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    const-class v7, Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v8, v7}, Lcom/facebook/inject/FbInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/config/application/FbAppType;

    invoke-static {v8}, Lcom/facebook/debug/coldstart/ColdStartTimer;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/debug/coldstart/ColdStartTimer;

    move-result-object v8

    check-cast v8, Lcom/facebook/debug/coldstart/ColdStartTimer;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/base/app/AbstractApplicationLike;->a(Lcom/facebook/common/init/impl/FbAppInitializer;Lcom/facebook/debug/activitytracer/ActivityTracer;Ljava/util/concurrent/Executor;Lcom/facebook/resources/FbResources;Lcom/facebook/inject/Lazy;Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;Lcom/facebook/config/application/FbAppType;Lcom/facebook/debug/coldstart/ColdStartTimer;)V

    return-void
.end method

.method private static c(Lcom/facebook/common/process/ProcessName;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/process/ProcessName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->d()Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    new-instance v2, Lcom/facebook/inject/autorequire/AutoRequireLoaderModule;

    invoke-direct {v2, v0}, Lcom/facebook/inject/autorequire/AutoRequireLoaderModule;-><init>(Lcom/facebook/common/process/PrivateProcessName;)V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/facebook/inject/rootmodule/RootModuleProvider;->a(Lcom/facebook/common/process/ProcessName;)Lcom/facebook/inject/AbstractLibraryModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/facebook/common/process/ProcessName;)V
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "empty"

    .line 292
    :goto_0
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "process_name_on_start"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f()V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/debug/log/BLog;->a(I)V

    .line 210
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/facebook/base/app/AbstractApplicationLike$2;->a:[I

    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->h:Lcom/facebook/config/application/FbAppType;

    invoke-virtual {v1}, Lcom/facebook/config/application/FbAppType;->g()Lcom/facebook/config/application/IntendedAudience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/config/application/IntendedAudience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    const/4 v0, 0x5

    .line 224
    :goto_0
    invoke-static {v0}, Lcom/facebook/debug/log/BLog;->a(I)V

    .line 225
    return-void

    .line 216
    :pswitch_0
    const/4 v0, 0x3

    .line 217
    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 302
    const-string v2, "app_on_create_count"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    return-void
.end method

.method private i()V
    .locals 0

    .prologue
    .line 306
    invoke-static {}, Lcom/facebook/base/app/AbstractApplicationLike;->j()V

    .line 307
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->k()V

    .line 308
    return-void
.end method

.method private static j()V
    .locals 3

    .prologue
    .line 314
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    sget-object v1, Lcom/facebook/base/app/AbstractApplicationLike;->j:Ljava/lang/String;

    const-string v2, "Exception trying to initialize AsyncTask"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->a:Landroid/app/Application;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 336
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/facebook/inject/FbInjector;
    .locals 2

    .prologue
    .line 276
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->m:Lcom/facebook/inject/FbInjector;

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 279
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->m:Lcom/facebook/inject/FbInjector;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->f:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/MemoryManager;

    invoke-virtual {v0, p1}, Lcom/facebook/common/memory/MemoryManager;->a(I)V

    .line 270
    return-void
.end method

.method protected a(Lcom/facebook/common/process/ProcessName;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public final b()Landroid/app/Application;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->a:Landroid/app/Application;

    return-object v0
.end method

.method protected b(Lcom/facebook/common/process/ProcessName;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public c()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 121
    const-class v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 122
    invoke-static {}, Lcom/facebook/base/app/AbstractApplicationLike;->f()V

    .line 124
    const-string v0, "Application startup"

    invoke-static {v0}, Lcom/facebook/debug/tracer/AsyncTracer;->a(Ljava/lang/String;)Lcom/facebook/debug/tracer/AsyncTracer;

    move-result-object v0

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 126
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->c()V

    .line 128
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->i()V

    .line 129
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->h()V

    .line 131
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v1

    .line 132
    invoke-virtual {p0, v1}, Lcom/facebook/base/app/AbstractApplicationLike;->a(Lcom/facebook/common/process/ProcessName;)V

    .line 133
    invoke-static {v1}, Lcom/facebook/base/app/AbstractApplicationLike;->d(Lcom/facebook/common/process/ProcessName;)V

    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-static {v1}, Lcom/facebook/base/app/AbstractApplicationLike;->c(Lcom/facebook/common/process/ProcessName;)Ljava/util/List;

    move-result-object v4

    .line 138
    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->d()Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v5

    .line 139
    iget-object v6, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v7, "ColdStart/FBInjector.create"

    invoke-virtual {v6, v7}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->b()Landroid/app/Application;

    move-result-object v6

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v7

    invoke-static {v6, v4, v5, v7}, Lcom/facebook/inject/FbInjector;->a(Landroid/content/Context;Ljava/util/List;Lcom/facebook/common/process/PrivateProcessName;Z)Lcom/facebook/inject/FbInjector;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/base/app/AbstractApplicationLike;->m:Lcom/facebook/inject/FbInjector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget-object v4, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v5, "ColdStart/FBInjector.create"

    invoke-virtual {v4, v5}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 146
    const-string v4, "ApplicationLike.onCreate#notifyAll"

    const v5, -0x14147071

    invoke-static {v4, v5}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    const v4, 0x4586f79f

    :try_start_4
    invoke-static {v4}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 152
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    iget-object v4, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v5, "ColdStart/FBInjector.inject"

    invoke-virtual {v4, v5}, Lcom/facebook/base/app/LightweightPerfEvents;->b(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    .line 156
    :try_start_5
    const-class v4, Lcom/facebook/base/app/AbstractApplicationLike;

    invoke-static {v4, p0}, Lcom/facebook/base/app/AbstractApplicationLike;->a(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithContext;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 158
    iget-object v4, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v5, "ColdStart/FBInjector.inject"

    invoke-virtual {v4, v5}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 159
    iput-object v8, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    .line 163
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->g()V

    .line 165
    invoke-virtual {p0, v1}, Lcom/facebook/base/app/AbstractApplicationLike;->b(Lcom/facebook/common/process/ProcessName;)V

    .line 166
    const-string v1, "FbAppInitializer.run"

    const v4, 0x78f53b04

    invoke-static {v1, v4}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 169
    :try_start_6
    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->b:Lcom/facebook/common/init/impl/FbAppInitializer;

    invoke-virtual {v1}, Lcom/facebook/common/init/impl/FbAppInitializer;->a()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v1

    .line 171
    const v4, -0x2551280b

    invoke-static {v4}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 173
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 175
    iget-object v4, p0, Lcom/facebook/base/app/AbstractApplicationLike;->i:Lcom/facebook/debug/coldstart/ColdStartTimer;

    invoke-virtual {v4, v2, v3}, Lcom/facebook/debug/coldstart/ColdStartTimer;->a(J)V

    .line 176
    iget-object v2, p0, Lcom/facebook/base/app/AbstractApplicationLike;->c:Lcom/facebook/debug/activitytracer/ActivityTracer;

    const-string v3, "cold_start"

    invoke-virtual {v2, v0, v3}, Lcom/facebook/debug/activitytracer/ActivityTracer;->a(Lcom/facebook/debug/tracer/AsyncTracer;Ljava/lang/String;)Lcom/facebook/debug/activitytracer/ActivityTrace;

    .line 180
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->c:Lcom/facebook/debug/activitytracer/ActivityTracer;

    invoke-virtual {v0}, Lcom/facebook/debug/activitytracer/ActivityTracer;->a()Lcom/facebook/debug/activitytracer/ActivityTrace;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    sget-object v2, Lcom/facebook/debug/activitytracer/AppStartupType;->COLD_START:Lcom/facebook/debug/activitytracer/AppStartupType;

    invoke-virtual {v0, v2}, Lcom/facebook/debug/activitytracer/ActivityTrace;->a(Lcom/facebook/debug/activitytracer/AppStartupType;)V

    .line 184
    :cond_0
    new-instance v0, Lcom/facebook/base/app/AbstractApplicationLike$1;

    invoke-direct {v0, p0}, Lcom/facebook/base/app/AbstractApplicationLike$1;-><init>(Lcom/facebook/base/app/AbstractApplicationLike;)V

    iget-object v2, p0, Lcom/facebook/base/app/AbstractApplicationLike;->d:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 199
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->g:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    invoke-static {v0}, Lcom/facebook/systrace/mainlooper/MainLooperTracer;->a(Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;)V

    .line 200
    invoke-static {}, Lcom/facebook/perftestutils/FrameRateEventsTraceListener;->c()V

    .line 201
    return-void

    .line 144
    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBInjector.create"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    throw v0

    .line 152
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 150
    :catchall_2
    move-exception v0

    const v1, -0x3c10f1a7

    :try_start_8
    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 158
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    const-string v2, "ColdStart/FBInjector.inject"

    invoke-virtual {v1, v2}, Lcom/facebook/base/app/LightweightPerfEvents;->c(Ljava/lang/String;)V

    .line 159
    iput-object v8, p0, Lcom/facebook/base/app/AbstractApplicationLike;->l:Lcom/facebook/base/app/LightweightPerfEvents;

    throw v0

    .line 171
    :catchall_4
    move-exception v0

    const v1, 0x6698d2a1

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->f:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/MemoryManager;

    invoke-virtual {v0}, Lcom/facebook/common/memory/MemoryManager;->a()V

    .line 265
    return-void
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/facebook/base/app/AbstractApplicationLike;->b()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public final x_()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike;->e:Lcom/facebook/resources/FbResources;

    return-object v0
.end method
