.class public Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;
.super Ljava/lang/Object;
.source "user_timeline"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile b:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/systrace/mainlooper/MainLooperTracer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/systrace/mainlooper/MainLooperTracer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->a:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->b:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->b:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

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

    invoke-static {v0}, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    move-result-object v0

    sput-object v0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->b:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;
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
    sget-object v0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->b:Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

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

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;

    const/16 v1, 0x269a

    invoke-static {p0, v1}, Lcom/facebook/inject/IdBasedSingletonScopeProvider;->a(Lcom/facebook/inject/InjectorLike;I)Ljavax/inject/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;-><init>(Ljavax/inject/Provider;)V

    .line 18
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/systrace/mainlooper/MainLooperTracer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracerFactory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/systrace/mainlooper/MainLooperTracer;

    return-object v0
.end method
