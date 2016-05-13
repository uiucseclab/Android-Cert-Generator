.class public Lcom/facebook/breakpad/BreakpadFlagsController;
.super Ljava/lang/Object;
.source "status"

# interfaces
.implements Lcom/facebook/common/init/INeedInit;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile d:Lcom/facebook/breakpad/BreakpadFlagsController;


# instance fields
.field private final a:Lcom/facebook/gk/store/GatekeeperStoreImpl;

.field private final b:Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

.field private c:Lcom/facebook/common/util/TriState;


# direct methods
.method public constructor <init>(Lcom/facebook/gk/store/GatekeeperStoreImpl;Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->c:Lcom/facebook/common/util/TriState;

    .line 39
    iput-object p1, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->a:Lcom/facebook/gk/store/GatekeeperStoreImpl;

    .line 40
    iput-object p2, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->b:Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

    .line 41
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/breakpad/BreakpadFlagsController;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/breakpad/BreakpadFlagsController;->d:Lcom/facebook/breakpad/BreakpadFlagsController;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/breakpad/BreakpadFlagsController;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/breakpad/BreakpadFlagsController;->d:Lcom/facebook/breakpad/BreakpadFlagsController;

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

    invoke-static {v0}, Lcom/facebook/breakpad/BreakpadFlagsController;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/breakpad/BreakpadFlagsController;

    move-result-object v0

    sput-object v0, Lcom/facebook/breakpad/BreakpadFlagsController;->d:Lcom/facebook/breakpad/BreakpadFlagsController;
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
    sget-object v0, Lcom/facebook/breakpad/BreakpadFlagsController;->d:Lcom/facebook/breakpad/BreakpadFlagsController;

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

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/breakpad/BreakpadFlagsController;
    .locals 3

    .prologue
    .line 16
    new-instance v2, Lcom/facebook/breakpad/BreakpadFlagsController;

    invoke-static {p0}, Lcom/facebook/gk/GatekeeperStoreImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/store/GatekeeperStoreImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/gk/store/GatekeeperStoreImpl;

    invoke-static {p0}, Lcom/facebook/gk/listeners/GatekeeperListenersImplMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

    move-result-object v1

    check-cast v1, Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

    invoke-direct {v2, v0, v1}, Lcom/facebook/breakpad/BreakpadFlagsController;-><init>(Lcom/facebook/gk/store/GatekeeperStoreImpl;Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;)V

    .line 19
    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->c:Lcom/facebook/common/util/TriState;

    .line 70
    iget-object v1, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->a:Lcom/facebook/gk/store/GatekeeperStoreImpl;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lcom/facebook/gk/store/GatekeeperStoreImpl;->a(I)Lcom/facebook/common/util/TriState;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->c:Lcom/facebook/common/util/TriState;

    .line 71
    iget-object v1, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->c:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->getMinidumpFlags()J

    move-result-wide v0

    .line 78
    iget-object v2, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->c:Lcom/facebook/common/util/TriState;

    sget-object v3, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v2, v3, :cond_2

    .line 79
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 80
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/facebook/dalvik/DalvikInternals;->enableDalvikInfoStream(Z)V

    .line 86
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Lcom/facebook/breakpad/BreakpadManager;->setMinidumpFlags(J)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->c:Lcom/facebook/common/util/TriState;

    sget-object v3, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    if-ne v2, v3, :cond_1

    .line 82
    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    .line 83
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/facebook/dalvik/DalvikInternals;->enableDalvikInfoStream(Z)V

    goto :goto_1
.end method

.method public final hF_()V
    .locals 3

    .prologue
    .line 47
    const-string v0, ""

    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 49
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    :goto_1
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/breakpad/BreakpadFlagsController;->a()V

    .line 54
    new-instance v0, Lcom/facebook/breakpad/BreakpadFlagsController$1;

    invoke-direct {v0, p0}, Lcom/facebook/breakpad/BreakpadFlagsController$1;-><init>(Lcom/facebook/breakpad/BreakpadFlagsController;)V

    .line 63
    iget-object v1, p0, Lcom/facebook/breakpad/BreakpadFlagsController;->b:Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;

    const/16 v2, 0x22

    invoke-virtual {v1, v0, v2}, Lcom/facebook/gk/store/internal/GatekeeperListenersImpl;->a(Lcom/facebook/gk/store/OnGatekeeperChangeListener;I)V

    goto :goto_1
.end method
