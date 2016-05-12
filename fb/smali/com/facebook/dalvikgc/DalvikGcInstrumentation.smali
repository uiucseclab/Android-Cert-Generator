.class public Lcom/facebook/dalvikgc/DalvikGcInstrumentation;
.super Ljava/lang/Object;
.source "uiMode"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;


# instance fields
.field private final a:Lcom/facebook/gk/store/GatekeeperStoreImpl;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/facebook/gk/store/GatekeeperStoreImpl;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->a:Lcom/facebook/gk/store/GatekeeperStoreImpl;

    .line 33
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/dalvikgc/DalvikGcInstrumentation;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->a()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/facebook/inject/ScopeSet;->b()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v3

    .line 48
    :try_start_1
    const-class v0, Lcom/facebook/inject/SingletonScope;

    invoke-interface {p0, v0}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/SingletonScope;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 51
    :try_start_2
    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    move-result-object v0

    sput-object v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :cond_1
    sget-object v0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d:Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    throw v0

    .line 59
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/dalvikgc/DalvikGcInstrumentation;
    .locals 2

    .prologue
    .line 16
    new-instance v1, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;

    invoke-static {p0}, Lcom/facebook/gk/GatekeeperStoreImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/store/GatekeeperStoreImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/gk/store/GatekeeperStoreImpl;

    invoke-direct {v1, v0}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;-><init>(Lcom/facebook/gk/store/GatekeeperStoreImpl;)V

    .line 18
    return-object v1
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 68
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c:Z

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->d()V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b:Z

    return v0
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->a:Lcom/facebook/gk/store/GatekeeperStoreImpl;

    const/16 v2, 0x216

    invoke-virtual {v1, v2}, Lcom/facebook/gk/store/GatekeeperStoreImpl;->a(I)Lcom/facebook/common/util/TriState;

    move-result-object v1

    .line 88
    sget-object v2, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-eq v1, v2, :cond_0

    .line 94
    sget-object v2, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->initGcInstrumentation()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->b:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/dalvikgc/DalvikGcInstrumentation;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->getElapsedGcMillis()J

    move-result-wide v0

    .line 47
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
