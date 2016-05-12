.class public Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;
.super Ljava/lang/Object;
.source "t"

# interfaces
.implements Lcom/facebook/common/init/INeedInit;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:[I

.field private static volatile k:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;


# instance fields
.field private final c:Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

.field private final d:Lcom/facebook/gk/store/GatekeeperStoreImpl;

.field public final e:Lcom/facebook/gk/store/GatekeeperStoreConfig;

.field private final f:Lcom/facebook/qe/api/QeAccessor;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/facebook/config/application/Product;

.field public final i:Lcom/facebook/rti/config/ConfigProxyClient;

.field private final j:Lcom/facebook/gk/store/OnGatekeeperChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-class v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->a:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x32

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->b:[I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;Lcom/facebook/gk/store/GatekeeperStoreImpl;Lcom/facebook/gk/store/GatekeeperStoreConfig;Lcom/facebook/qe/api/QeAccessor;Landroid/content/Context;Lcom/facebook/config/application/Product;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->c:Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

    .line 68
    iput-object p2, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->d:Lcom/facebook/gk/store/GatekeeperStoreImpl;

    .line 69
    iput-object p3, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->e:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    .line 70
    iput-object p4, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->f:Lcom/facebook/qe/api/QeAccessor;

    .line 71
    iput-object p5, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->g:Landroid/content/Context;

    .line 72
    iput-object p6, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->h:Lcom/facebook/config/application/Product;

    .line 74
    new-instance v0, Lcom/facebook/rti/config/ConfigProxyClient;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/rti/config/ConfigProxyClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->i:Lcom/facebook/rti/config/ConfigProxyClient;

    .line 75
    new-instance v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher$1;-><init>(Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;)V

    iput-object v0, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->j:Lcom/facebook/gk/store/OnGatekeeperChangeListener;

    .line 89
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->k:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->k:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

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

    invoke-static {v0}, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->k:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;
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
    sget-object v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->k:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

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

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;
    .locals 7

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

    invoke-static {p0}, Lcom/facebook/gk/listeners/GatekeeperListenersImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

    move-result-object v1

    check-cast v1, Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

    invoke-static {p0}, Lcom/facebook/gk/GatekeeperStoreImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/store/GatekeeperStoreImpl;

    move-result-object v2

    check-cast v2, Lcom/facebook/gk/store/GatekeeperStoreImpl;

    invoke-static {p0}, Lcom/facebook/gk/GatekeeperStoreConfigMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/store/GatekeeperStoreConfig;

    move-result-object v3

    check-cast v3, Lcom/facebook/gk/store/GatekeeperStoreConfig;

    invoke-static {p0}, Lcom/facebook/qe/module/QeInternalImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/qe/api/impl/QeInternalImpl;

    move-result-object v4

    check-cast v4, Lcom/facebook/qe/api/QeAccessor;

    const-class v5, Landroid/content/Context;

    invoke-interface {p0, v5}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {p0}, Lcom/facebook/config/application/ProductMethodAutoProvider;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/config/application/Product;

    move-result-object v6

    check-cast v6, Lcom/facebook/config/application/Product;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;-><init>(Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;Lcom/facebook/gk/store/GatekeeperStoreImpl;Lcom/facebook/gk/store/GatekeeperStoreConfig;Lcom/facebook/qe/api/QeAccessor;Landroid/content/Context;Lcom/facebook/config/application/Product;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public final hF_()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 93
    sget-object v1, Lcom/facebook/config/application/Product;->MESSENGER:Lcom/facebook/config/application/Product;

    iget-object v2, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->h:Lcom/facebook/config/application/Product;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    iget-object v2, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->h:Lcom/facebook/config/application/Product;

    if-eq v1, v2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->f:Lcom/facebook/qe/api/QeAccessor;

    sget-object v2, Lcom/facebook/qe/api/Liveness;->Live:Lcom/facebook/qe/api/Liveness;

    sget-object v3, Lcom/facebook/qe/api/ExposureLogging;->Off:Lcom/facebook/qe/api/ExposureLogging;

    sget v4, Lcom/facebook/rti/orca/abtest/ExperimentsForFbnsSharedExperimentModule;->a:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/facebook/qe/api/QeAccessor;->a(Lcom/facebook/qe/api/Liveness;Lcom/facebook/qe/api/ExposureLogging;II)I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->g:Landroid/content/Context;

    const-class v2, Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/util/PackageInfoUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->g:Landroid/content/Context;

    const-class v2, Lcom/facebook/rti/config/ConfigProxyService;

    invoke-static {v1, v2, v0}, Lcom/facebook/rti/orca/MqttLiteQEUtil;->b(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->g:Landroid/content/Context;

    const-class v2, Lcom/facebook/rti/config/ConfigProxyService;

    invoke-static {v1, v2, v7}, Lcom/facebook/rti/orca/MqttLiteQEUtil;->b(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 117
    iget-object v1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->c:Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

    iget-object v2, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->j:Lcom/facebook/gk/store/OnGatekeeperChangeListener;

    sget-object v3, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->b:[I

    invoke-virtual {v1, v2, v3}, Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;->a(Lcom/facebook/gk/store/OnGatekeeperChangeListener;[I)V

    .line 119
    iget-object v1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->i:Lcom/facebook/rti/config/ConfigProxyClient;

    const-string v2, "rti.mqtt.gk"

    invoke-virtual {v1, v2}, Lcom/facebook/rti/config/ConfigProxyClient;->a(Ljava/lang/String;)Lcom/facebook/rti/config/ConfigProxyClient$Editor;

    move-result-object v2

    .line 120
    sget-object v3, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->b:[I

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_4

    aget v5, v3, v1

    .line 121
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->e:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    invoke-interface {v0}, Lcom/facebook/gk/store/GatekeeperStoreConfig;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-object v6, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->d:Lcom/facebook/gk/store/GatekeeperStoreImpl;

    invoke-virtual {v6, v5}, Lcom/facebook/gk/store/GatekeeperStoreImpl;->a(I)Lcom/facebook/common/util/TriState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/common/util/TriState;->name()Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-virtual {v2, v0, v6}, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/config/ConfigProxyClient$Editor;

    .line 124
    const/16 v0, 0x32

    if-ne v0, v5, :cond_3

    .line 125
    const-string v0, "BROADCAST_CONFIG_CHANGED"

    invoke-virtual {v2, v0, v7}, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a(Ljava/lang/String;Z)Lcom/facebook/rti/config/ConfigProxyClient$Editor;

    .line 120
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a()Z

    goto :goto_0
.end method
