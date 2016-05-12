.class public final Ldagger/internal/codegen/ValidationProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "ValidationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/ValidationProcessor$1;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 121
    return-void
.end method

.method private addAllEnclosed(Ljavax/lang/model/element/Element;Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    .local p3, "parametersToTheirMethods":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 176
    .local v0, "enclosed":Ljavax/lang/model/element/Element;
    invoke-direct {p0, v0, p2, p3}, Ldagger/internal/codegen/ValidationProcessor;->addAllEnclosed(Ljavax/lang/model/element/Element;Ljava/util/List;Ljava/util/Map;)V

    .line 177
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v4, v5, :cond_1

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v4, v5, :cond_0

    :cond_1
    move-object v4, v0

    .line 178
    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 179
    .local v3, "parameter":Ljavax/lang/model/element/Element;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {p3, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    .end local v0    # "enclosed":Ljavax/lang/model/element/Element;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "parameter":Ljavax/lang/model/element/Element;
    :cond_2
    return-void
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 210
    iget-object v0, p0, Ldagger/internal/codegen/ValidationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 211
    return-void
.end method

.method private getAllElements(Ljavax/annotation/processing/RoundEnvironment;Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .param p1, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    .local p3, "parametersToTheirMethods":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;>;"
    invoke-interface {p1}, Ljavax/annotation/processing/RoundEnvironment;->getRootElements()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 168
    .local v0, "element":Ljavax/lang/model/element/Element;
    invoke-direct {p0, v0, p2, p3}, Ldagger/internal/codegen/ValidationProcessor;->addAllEnclosed(Ljavax/lang/model/element/Element;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 170
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    :cond_0
    return-void
.end method

.method private isInjectableConstructorParameter(Ljavax/lang/model/element/Element;Ljava/util/Map;)Z
    .locals 2
    .param p1, "parameter"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, "parametersToTheirMethods":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    const-class v1, Ljavax/inject/Inject;

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProvidesMethod(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 187
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    const-class v0, Ldagger/Provides;

    invoke-interface {p1, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProvidesMethodParameter(Ljavax/lang/model/element/Element;Ljava/util/Map;)Z
    .locals 2
    .param p1, "parameter"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "parametersToTheirMethods":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    const-class v1, Ldagger/Provides;

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateProvides(Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 80
    const-class v0, Ldagger/Provides;

    invoke-interface {p1, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Ldagger/Module;

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-static {v0, v1}, Ldagger/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Provides methods must be declared in modules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ldagger/internal/codegen/ValidationProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 84
    :cond_0
    return-void
.end method

.method private validateQualifiers(Ljavax/lang/model/element/Element;Ljava/util/Map;)V
    .locals 7
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "parametersToTheirMethods":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;>;"
    const/4 v5, 0x1

    .line 87
    const-class v4, Ljava/lang/SuppressWarnings;

    invoke-interface {p1, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_1

    const-class v4, Ljava/lang/SuppressWarnings;

    invoke-interface {p1, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ljava/lang/SuppressWarnings;

    invoke-interface {v4}, Ljava/lang/SuppressWarnings;->value()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, "qualifiers"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    .line 90
    .local v3, "suppressWarnings":Z
    :goto_0
    const/4 v2, 0x0

    .line 91
    .local v2, "numberOfQualifiersOnElement":I
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 92
    .local v0, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    const-class v6, Ljavax/inject/Qualifier;

    invoke-interface {v4, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 95
    sget-object v4, Ldagger/internal/codegen/ValidationProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Qualifier annotations are only allowed on fields, methods, and parameters: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Ldagger/internal/codegen/ValidationProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 87
    .end local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "numberOfQualifiersOnElement":I
    .end local v3    # "suppressWarnings":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 97
    .restart local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "numberOfQualifiersOnElement":I
    .restart local v3    # "suppressWarnings":Z
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 98
    const-class v4, Ljavax/inject/Inject;

    invoke-interface {p1, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dagger will ignore qualifier annotations on fields that are not annotated with @Inject: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Ldagger/internal/codegen/ValidationProcessor;->warning(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 104
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 105
    invoke-direct {p0, p1}, Ldagger/internal/codegen/ValidationProcessor;->isProvidesMethod(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dagger will ignore qualifier annotations on methods that are not @Provides methods: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Ldagger/internal/codegen/ValidationProcessor;->warning(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_1

    .line 111
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    .line 112
    invoke-direct {p0, p1, p2}, Ldagger/internal/codegen/ValidationProcessor;->isInjectableConstructorParameter(Ljavax/lang/model/element/Element;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1, p2}, Ldagger/internal/codegen/ValidationProcessor;->isProvidesMethodParameter(Ljavax/lang/model/element/Element;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dagger will ignore qualifier annotations on parameters that are not @Inject constructor parameters or @Provides method parameters: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Ldagger/internal/codegen/ValidationProcessor;->warning(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_1

    .line 125
    .end local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    if-le v2, v5, :cond_3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only one qualifier annotation is allowed per element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Ldagger/internal/codegen/ValidationProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 129
    :cond_3
    return-void

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validateScoping(Ljavax/lang/model/element/Element;)V
    .locals 7
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    const/4 v5, 0x1

    .line 132
    const-class v4, Ljava/lang/SuppressWarnings;

    invoke-interface {p1, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_2

    const-class v4, Ljava/lang/SuppressWarnings;

    invoke-interface {p1, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ljava/lang/SuppressWarnings;

    invoke-interface {v4}, Ljava/lang/SuppressWarnings;->value()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, "scoping"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v5

    .line 135
    .local v3, "suppressWarnings":Z
    :goto_0
    const/4 v2, 0x0

    .line 136
    .local v2, "numberOfScopingAnnotationsOnElement":I
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 137
    .local v0, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    const-class v6, Ljavax/inject/Scope;

    invoke-interface {v4, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 140
    sget-object v4, Ldagger/internal/codegen/ValidationProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 155
    :cond_1
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scoping annotations are only allowed on concrete types and @Provides methods: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Ldagger/internal/codegen/ValidationProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 132
    .end local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "numberOfScopingAnnotationsOnElement":I
    .end local v3    # "suppressWarnings":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 142
    .restart local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "numberOfScopingAnnotationsOnElement":I
    .restart local v3    # "suppressWarnings":Z
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 143
    invoke-direct {p0, p1}, Ldagger/internal/codegen/ValidationProcessor;->isProvidesMethod(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dagger will ignore scoping annotations on methods that are not @Provides methods: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Ldagger/internal/codegen/ValidationProcessor;->warning(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 149
    :pswitch_2
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v4

    sget-object v6, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    goto :goto_1

    .line 159
    .end local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    if-le v2, v5, :cond_4

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only one scoping annotation is allowed per element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Ldagger/internal/codegen/ValidationProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 163
    :cond_4
    return-void

    .line 140
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private warning(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 214
    iget-object v0, p0, Ldagger/internal/codegen/ValidationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 215
    return-void
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 6
    .param p2, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "allElements":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .local v4, "parametersToTheirMethods":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;>;"
    invoke-direct {p0, p2, v0, v4}, Ldagger/internal/codegen/ValidationProcessor;->getAllElements(Ljavax/annotation/processing/RoundEnvironment;Ljava/util/List;Ljava/util/Map;)V

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    .line 69
    .local v2, "element":Ljavax/lang/model/element/Element;
    :try_start_0
    invoke-direct {p0, v2}, Ldagger/internal/codegen/ValidationProcessor;->validateProvides(Ljavax/lang/model/element/Element;)V
    :try_end_0
    .catch Ldagger/internal/codegen/Util$CodeGenerationIncompleteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-direct {p0, v2}, Ldagger/internal/codegen/ValidationProcessor;->validateScoping(Ljavax/lang/model/element/Element;)V

    .line 74
    invoke-direct {p0, v2, v4}, Ldagger/internal/codegen/ValidationProcessor;->validateQualifiers(Ljavax/lang/model/element/Element;Ljava/util/Map;)V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;
    goto :goto_0

    .line 76
    .end local v1    # "e":Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;
    .end local v2    # "element":Ljavax/lang/model/element/Element;
    :cond_0
    const/4 v5, 0x0

    return v5
.end method
