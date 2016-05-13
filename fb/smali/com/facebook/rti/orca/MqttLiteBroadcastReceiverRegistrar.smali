.class public Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;
.super Ljava/lang/Object;
.source "switch_to_dialtone"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile e:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

.field public final d:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    sput-object v0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/base/broadcast/BaseFbBroadcastManager;Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->b:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->c:Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

    .line 41
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->d:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 42
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->e:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->e:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

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

    invoke-static {v0}, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->e:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;
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
    sget-object v0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->e:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

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

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;
    .locals 3

    .prologue
    .line 16
    new-instance v2, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    invoke-static {p0}, Lcom/facebook/base/broadcast/GlobalFbBroadcastManager;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/base/broadcast/GlobalFbBroadcastManager;

    move-result-object v0

    check-cast v0, Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v0, v1}, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;-><init>(Lcom/facebook/base/broadcast/BaseFbBroadcastManager;Landroid/content/Context;)V

    .line 19
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->c:Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

    invoke-virtual {v0}, Lcom/facebook/base/broadcast/BaseFbBroadcastManager;->a()Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v0

    const-string v1, "com.facebook.rti.intent.ACTION_FBNS_STARTED"

    new-instance v2, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$2;

    invoke-direct {v2, p0, p1}, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$2;-><init>(Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a(Ljava/lang/String;Lcom/facebook/content/ActionReceiver;)Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v0

    const-string v1, "com.facebook.rti.intent.ACTION_FBNS_STOPPED"

    new-instance v2, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$1;-><init>(Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a(Ljava/lang/String;Lcom/facebook/content/ActionReceiver;)Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a()Lcom/facebook/base/broadcast/BaseFbBroadcastManager$SelfRegistrableReceiverImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/broadcast/BaseFbBroadcastManager$SelfRegistrableReceiverImpl;->b()V

    .line 75
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 77
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 79
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->c:Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

    invoke-virtual {v2}, Lcom/facebook/base/broadcast/BaseFbBroadcastManager;->a()Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v2

    new-instance v3, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$3;

    invoke-direct {v3, p0, p1}, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$3;-><init>(Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;Ljava/lang/Runnable;)V

    invoke-interface {v2, v0, v3}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a(Ljava/lang/String;Lcom/facebook/content/ActionReceiver;)Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a(Landroid/content/IntentFilter;)Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a()Lcom/facebook/base/broadcast/BaseFbBroadcastManager$SelfRegistrableReceiverImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/broadcast/BaseFbBroadcastManager$SelfRegistrableReceiverImpl;->b()V

    .line 98
    return-void
.end method
