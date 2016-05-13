.class public interface abstract Lcom/facebook/inject/InjectorLike;
.super Ljava/lang/Object;
.source "value"

# interfaces
.implements Lcom/facebook/inject/Injector;


# virtual methods
.method public abstract getApplicationInjector()Lcom/facebook/inject/FbInjector;
.end method

.method public abstract getBinders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;",
            "Lcom/facebook/inject/Binder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInjector()Lcom/facebook/inject/FbInjector;
.end method

.method public abstract getModuleInjector(Ljava/lang/Class;)Lcom/facebook/inject/FbInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;)",
            "Lcom/facebook/inject/FbInjector;"
        }
    .end annotation
.end method

.method public abstract getOnDemandAssistedProviderForStaticDi(Ljava/lang/Class;)Lcom/facebook/inject/AbstractAssistedProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;>;)",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getProcessIdentifier()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
