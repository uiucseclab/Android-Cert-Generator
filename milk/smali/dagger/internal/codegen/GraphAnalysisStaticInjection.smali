.class public final Ldagger/internal/codegen/GraphAnalysisStaticInjection;
.super Ldagger/internal/StaticInjection;
.source "GraphAnalysisStaticInjection.java"


# instance fields
.field private final enclosingClass:Ljavax/lang/model/element/Element;


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/Element;)V
    .locals 0
    .param p1, "enclosingClass"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 29
    invoke-direct {p0}, Ldagger/internal/StaticInjection;-><init>()V

    .line 30
    iput-object p1, p0, Ldagger/internal/codegen/GraphAnalysisStaticInjection;->enclosingClass:Ljavax/lang/model/element/Element;

    .line 31
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 34
    iget-object v4, p0, Ldagger/internal/codegen/GraphAnalysisStaticInjection;->enclosingClass:Ljavax/lang/model/element/Element;

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 35
    .local v0, "enclosedElement":Ljavax/lang/model/element/Element;
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Ldagger/internal/codegen/Util;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const-class v4, Ljavax/inject/Inject;

    invoke-interface {v0, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ljavax/inject/Inject;

    .line 37
    .local v2, "injectAnnotation":Ljavax/inject/Inject;
    if-eqz v2, :cond_0

    .line 38
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Ldagger/internal/codegen/GraphAnalysisStaticInjection;->enclosingClass:Ljavax/lang/model/element/Element;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    goto :goto_0

    .line 44
    .end local v0    # "enclosedElement":Ljavax/lang/model/element/Element;
    .end local v2    # "injectAnnotation":Ljavax/inject/Inject;
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public inject()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
