.class public Lcom/facebook/rti/orca/MqttLiteInitializer;
.super Lcom/facebook/auth/component/AbstractAuthComponent;
.source "switch_to_full_fb"

# interfaces
.implements Lcom/facebook/common/init/INeedInit;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile r:Lcom/facebook/rti/orca/MqttLiteInitializer;


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

.field public final f:Landroid/content/Context;

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/device_id/UniqueIdForDeviceHolder;

.field public final i:Landroid/content/SharedPreferences;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private final k:Lcom/facebook/config/application/Product;

.field public final l:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

.field private final m:Lcom/facebook/rti/push/client/FbnsClientWrapper;

.field public final n:Lcom/facebook/rti/push/client/FbnsForegroundPinger;

.field public final o:Ljava/lang/Runnable;

.field private p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/facebook/rti/orca/MqttLiteInitializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/base/broadcast/BaseFbBroadcastManager;Ljavax/inject/Provider;Lcom/facebook/device_id/UniqueIdForDeviceHolder;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/facebook/config/application/Product;Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;Lcom/facebook/qe/api/QeAccessor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/base/broadcast/FbBroadcastManager;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/device_id/UniqueIdForDeviceHolder;",
            "Ljava/util/concurrent/ExecutorService;",
            "Landroid/content/Context;",
            "Lcom/facebook/config/application/Product;",
            "Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;",
            "Lcom/facebook/qe/api/QeAccessor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/facebook/auth/component/AbstractAuthComponent;-><init>()V

    .line 77
    new-instance v0, Lcom/facebook/rti/orca/MqttLiteInitializer$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/orca/MqttLiteInitializer$1;-><init>(Lcom/facebook/rti/orca/MqttLiteInitializer;)V

    iput-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->o:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->b:Ljavax/inject/Provider;

    .line 101
    iput-object p2, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->c:Ljavax/inject/Provider;

    .line 102
    iput-object p3, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->d:Ljavax/inject/Provider;

    .line 103
    iput-object p4, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->e:Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

    .line 104
    iput-object p5, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->g:Ljavax/inject/Provider;

    .line 105
    iput-object p6, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->h:Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    .line 106
    iput-object p7, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->j:Ljava/util/concurrent/ExecutorService;

    .line 107
    iput-object p8, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    .line 108
    iput-object p9, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    .line 109
    iput-object p10, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->l:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    .line 110
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    const-string v2, "rti.mqtt.analytics"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->i:Landroid/content/SharedPreferences;

    .line 112
    new-instance v0, Lcom/facebook/rti/push/client/FbnsClientWrapper;

    new-instance v1, Lcom/facebook/rti/orca/MqttLiteInitializer$2;

    invoke-direct {v1, p0, p11}, Lcom/facebook/rti/orca/MqttLiteInitializer$2;-><init>(Lcom/facebook/rti/orca/MqttLiteInitializer;Lcom/facebook/qe/api/QeAccessor;)V

    const/4 v2, -0x1

    invoke-direct {v0, p8, v1, v2}, Lcom/facebook/rti/push/client/FbnsClientWrapper;-><init>(Landroid/content/Context;Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;I)V

    iput-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->m:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    .line 152
    new-instance v0, Lcom/facebook/rti/push/client/FbnsForegroundPinger;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->m:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/client/FbnsForegroundPinger;-><init>(Landroid/content/Context;Lcom/facebook/rti/push/client/FbnsClientWrapper;)V

    iput-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->n:Lcom/facebook/rti/push/client/FbnsForegroundPinger;

    .line 153
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttLiteInitializer;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->r:Lcom/facebook/rti/orca/MqttLiteInitializer;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/rti/orca/MqttLiteInitializer;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->r:Lcom/facebook/rti/orca/MqttLiteInitializer;

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

    invoke-static {v0}, Lcom/facebook/rti/orca/MqttLiteInitializer;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttLiteInitializer;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->r:Lcom/facebook/rti/orca/MqttLiteInitializer;
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
    sget-object v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->r:Lcom/facebook/rti/orca/MqttLiteInitializer;

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

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttLiteInitializer;
    .locals 12

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/rti/orca/MqttLiteInitializer;

    const/16 v1, 0x28a

    invoke-static {p0, v1}, Lcom/facebook/inject/IdBasedDefaultScopeProvider;->a(Lcom/facebook/inject/InjectorLike;I)Ljavax/inject/Provider;

    move-result-object v1

    const/16 v2, 0x13c2

    invoke-static {p0, v2}, Lcom/facebook/inject/IdBasedDefaultScopeProvider;->a(Lcom/facebook/inject/InjectorLike;I)Ljavax/inject/Provider;

    move-result-object v2

    const/16 v3, 0x13c3

    invoke-static {p0, v3}, Lcom/facebook/inject/IdBasedDefaultScopeProvider;->a(Lcom/facebook/inject/InjectorLike;I)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {p0}, Lcom/facebook/base/broadcast/LocalFbBroadcastManager;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/base/broadcast/LocalFbBroadcastManager;

    move-result-object v4

    check-cast v4, Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

    const/16 v5, 0x143e

    invoke-static {p0, v5}, Lcom/facebook/inject/IdBasedDefaultScopeProvider;->a(Lcom/facebook/inject/InjectorLike;I)Ljavax/inject/Provider;

    move-result-object v5

    invoke-static {p0}, Lcom/facebook/device_id/UniqueIdForDeviceHolder;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    move-result-object v6

    check-cast v6, Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    invoke-static {p0}, Lcom/facebook/common/executors/ListeningExecutorService_DefaultExecutorServiceMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ExecutorService;

    const-class v8, Landroid/content/Context;

    invoke-interface {p0, v8}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-static {p0}, Lcom/facebook/config/application/ProductMethodAutoProvider;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/config/application/Product;

    move-result-object v9

    check-cast v9, Lcom/facebook/config/application/Product;

    invoke-static {p0}, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    move-result-object v10

    check-cast v10, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    invoke-static {p0}, Lcom/facebook/qe/module/QeInternalImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/qe/api/impl/QeInternalImpl;

    move-result-object v11

    check-cast v11, Lcom/facebook/qe/api/QeAccessor;

    invoke-direct/range {v0 .. v11}, Lcom/facebook/rti/orca/MqttLiteInitializer;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/base/broadcast/BaseFbBroadcastManager;Ljavax/inject/Provider;Lcom/facebook/device_id/UniqueIdForDeviceHolder;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/facebook/config/application/Product;Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;Lcom/facebook/qe/api/QeAccessor;)V

    .line 28
    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->j:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->o:Ljava/lang/Runnable;

    const v2, 0xdb10dba

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 240
    return-void
.end method

.method public final a(Lcom/facebook/auth/component/AuthenticationResult;)V
    .locals 3
    .param p1    # Lcom/facebook/auth/component/AuthenticationResult;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 217
    sget-object v0, Lcom/facebook/config/application/Product;->MESSENGER:Lcom/facebook/config/application/Product;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rti/orca/MqttLiteInitializer;->n()V

    .line 223
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->j:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->o:Ljava/lang/Runnable;

    const v2, -0x54dcfde

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/orca/MqttLiteInitializer$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/orca/MqttLiteInitializer$5;-><init>(Lcom/facebook/rti/orca/MqttLiteInitializer;Z)V

    const v2, 0x7a52bafc

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->p:Ljava/util/concurrent/Future;

    .line 318
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 228
    sget-object v0, Lcom/facebook/config/application/Product;->MESSENGER:Lcom/facebook/config/application/Product;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->n:Lcom/facebook/rti/push/client/FbnsForegroundPinger;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsForegroundPinger;->b()V

    .line 233
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->m:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->d()V

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/orca/MqttLiteInitializer;->a(Z)V

    .line 235
    .line 340
    iget-object v2, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->i:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "fb_uid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "is_employee"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 344
    goto :goto_0
.end method

.method public final hF_()V
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/facebook/config/application/Product;->MESSENGER:Lcom/facebook/config/application/Product;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/orca/MqttLiteInitializer$3;

    invoke-direct {v1, p0}, Lcom/facebook/rti/orca/MqttLiteInitializer$3;-><init>(Lcom/facebook/rti/orca/MqttLiteInitializer;)V

    const v2, 0x8971b26

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public final j()I
    .locals 4

    .prologue
    const/4 v2, 0x7

    const/4 v1, -0x1

    .line 354
    sget-object v0, Lcom/facebook/config/application/Product;->MESSENGER:Lcom/facebook/config/application/Product;

    iget-object v3, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    iget-object v3, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 371
    :goto_0
    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 359
    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 364
    goto :goto_0

    :cond_2
    move v0, v1

    .line 366
    goto :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->m:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->c()I

    move-result v0

    .line 370
    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    .line 371
    :goto_1
    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    .line 370
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 371
    goto :goto_0
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/orca/MqttLiteInitializer$4;

    invoke-direct {v1, p0}, Lcom/facebook/rti/orca/MqttLiteInitializer$4;-><init>(Lcom/facebook/rti/orca/MqttLiteInitializer;)V

    const v2, 0x36672868

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 213
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/facebook/config/application/Product;->MESSENGER:Lcom/facebook/config/application/Product;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/facebook/config/application/Product;->FB4A:Lcom/facebook/config/application/Product;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->k:Lcom/facebook/config/application/Product;

    if-eq v0, v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->m:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a()V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->m:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b()V

    goto :goto_0
.end method

.method public final n()V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->h:Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    invoke-virtual {v0}, Lcom/facebook/device_id/UniqueIdForDeviceHolder;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/TriState;

    invoke-virtual {v0}, Lcom/facebook/common/util/TriState;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/device/yearclass/YearClass;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "fb_uid"

    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->h:Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    invoke-virtual {v3}, Lcom/facebook/device_id/UniqueIdForDeviceHolder;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "is_employee"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "year_class"

    iget v2, p0, Lcom/facebook/rti/orca/MqttLiteInitializer;->q:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/facebook/rti/orca/MqttLiteInitializer;->j()I

    move-result v0

    .line 348
    if-ltz v0, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
