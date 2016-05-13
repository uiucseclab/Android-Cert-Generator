.class public abstract Lcom/facebook/inject/FbInjector;
.super Ljava/lang/Object;
.source "vd"

# interfaces
.implements Lcom/facebook/inject/InjectorLike;


# static fields
.field private static final a:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Landroid/content/Context;",
            "Lcom/facebook/inject/ContextScopeAwareInjector;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/inject/FbInjectorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/facebook/inject/ContextKeyedLoadingCache;

    new-instance v1, Lcom/facebook/inject/FbInjector$ContextContextScopeAwareInjectorCacheLoader;

    const/4 v2, 0x0

    invoke-direct {v1}, Lcom/facebook/inject/FbInjector$ContextContextScopeAwareInjectorCacheLoader;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/inject/ContextKeyedLoadingCache;-><init>(Lcom/google/common/cache/CacheLoader;)V

    sput-object v0, Lcom/facebook/inject/FbInjector;->a:Lcom/google/common/cache/LoadingCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/facebook/common/process/PrivateProcessName;Z)Lcom/facebook/inject/FbInjector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;",
            "Lcom/facebook/common/process/PrivateProcessName;",
            "Z)",
            "Lcom/facebook/inject/FbInjector;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/facebook/inject/FbInjectorImpl;

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 26
    new-instance v6, Lcom/facebook/inject/ModuleVerificationConfiguration;

    invoke-direct {v6, v7, v7, v8, v8}, Lcom/facebook/inject/ModuleVerificationConfiguration;-><init>(ZZLcom/facebook/inject/ModuleVerificationListener;Lcom/facebook/inject/ModuleVerificationBinderFactory;)V

    move-object v3, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/inject/FbInjectorImpl;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/facebook/inject/ModuleVerificationConfiguration;Lcom/facebook/common/process/PrivateProcessName;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Set;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 196
    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->a(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-static {v0, p1}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 263
    :cond_0
    new-instance v5, Lcom/google/inject/Key;

    sget-object v6, Lcom/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v5, v0, v6}, Lcom/google/inject/Key;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key$AnnotationStrategy;)V

    move-object v0, v5

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0, p1, p1}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 252
    return-void
.end method

.method public static a(Ljava/lang/Class;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 260
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithContext;)V
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

    .prologue
    .line 255
    invoke-interface {p1}, Lcom/facebook/inject/InjectableComponentWithContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method public static final a(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    const-string v0, "FbInjector.injectMe()"

    const v1, 0x62ad1591

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 243
    :try_start_0
    invoke-static {p2}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .line 244
    invoke-virtual {v0, p0, p1}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    const v0, 0x866b381

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    const v1, -0x7cd898f1

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Lcom/facebook/inject/ProvisioningException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid annotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/facebook/inject/FbInjector;->b:Lcom/facebook/inject/FbInjectorProvider;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/facebook/inject/FbInjector;->b:Lcom/facebook/inject/FbInjectorProvider;

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/FbInjectorProvider;

    goto :goto_0
.end method

.method public static final get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/facebook/inject/FbInjector;->a:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p0}, Lcom/google/common/cache/LoadingCache;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/FbInjector;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract c()Lcom/facebook/inject/ScopeAwareInjector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract g()Lcom/facebook/inject/FbInjectorImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract h()Lcom/facebook/inject/InjectorThreadStack;
.end method
