.class Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;
.super Ldagger/internal/ProvidesBinding;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/codegen/GraphAnalysisProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProviderMethodBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final method:Ljavax/lang/model/element/ExecutableElement;

.field private final parameters:[Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;Z)V
    .locals 3
    .param p1, "provideKey"    # Ljava/lang/String;
    .param p2, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "library"    # Z

    .prologue
    .line 334
    const-class v0, Ljavax/inject/Singleton;

    invoke-interface {p2, v0}, Ljavax/lang/model/element/ExecutableElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2}, Ldagger/internal/codegen/Util;->className(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 336
    iput-object p2, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 337
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldagger/internal/Binding;

    iput-object v0, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->parameters:[Ldagger/internal/Binding;

    .line 338
    invoke-virtual {p0, p3}, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->setLibrary(Z)V

    .line 339
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 343
    iget-object v3, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 344
    .local v1, "parameter":Ljavax/lang/model/element/VariableElement;
    invoke-static {v1}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "parameterKey":Ljava/lang/String;
    iget-object v3, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->parameters:[Ldagger/internal/Binding;

    iget-object v4, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v2, v4, v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v4

    aput-object v4, v3, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "parameter":Ljavax/lang/model/element/VariableElement;
    .end local v2    # "parameterKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Compile-time binding should never be called to inject."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "get":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembers":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->parameters:[Ldagger/internal/Binding;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 355
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Compile-time binding should never be called to inject."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvidesBinding[key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->provideKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->moduleClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
