.class public final Ldagger/internal/codegen/ModuleAdapterProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "ModuleAdapterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/ModuleAdapterProcessor$1;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation


# static fields
.field private static final BINDINGS_MAP:Ljava/lang/String;

.field private static final INVALID_RETURN_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final remainingTypes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    const-class v0, Ldagger/internal/BindingsGroup;

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor;->BINDINGS_MAP:Ljava/lang/String;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Ljavax/inject/Provider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v2, Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor;->INVALID_RETURN_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private bindingClassName(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p1, "providerMethod"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 411
    .local p2, "methodToClassName":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;>;"
    .local p3, "methodNameToNextId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 427
    .end local v0    # "className":Ljava/lang/String;
    .local v1, "className":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 414
    .end local v1    # "className":Ljava/lang/String;
    .restart local v0    # "className":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "methodName":Ljava/lang/String;
    const-string v4, ""

    .line 416
    .local v4, "suffix":Ljava/lang/String;
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 417
    .local v2, "id":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v2, :cond_1

    .line 418
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p3, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "uppercaseMethodName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ProvidesAdapter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 427
    .end local v0    # "className":Ljava/lang/String;
    .restart local v1    # "className":Ljava/lang/String;
    goto :goto_0

    .line 420
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "uppercaseMethodName":Ljava/lang/String;
    .restart local v0    # "className":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1
.end method

.method private checkForDependencies(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "providerMethods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 391
    .local v0, "element":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    const/4 v2, 0x1

    .line 395
    .end local v0    # "element":Ljavax/lang/model/element/ExecutableElement;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkForMultibindings(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "providerMethods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 400
    .local v0, "element":Ljavax/lang/model/element/ExecutableElement;
    const-class v3, Ldagger/Provides;

    invoke-interface {v0, v3}, Ljavax/lang/model/element/ExecutableElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ldagger/Provides;

    invoke-interface {v3}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v2

    .line 401
    .local v2, "providesType":Ldagger/Provides$Type;
    sget-object v3, Ldagger/Provides$Type;->SET:Ldagger/Provides$Type;

    if-eq v2, v3, :cond_1

    sget-object v3, Ldagger/Provides$Type;->SET_VALUES:Ldagger/Provides$Type;

    if-ne v2, v3, :cond_0

    .line 402
    :cond_1
    const/4 v3, 0x1

    .line 405
    .end local v0    # "element":Ljavax/lang/model/element/ExecutableElement;
    .end local v2    # "providesType":Ldagger/Provides$Type;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 132
    iget-object v0, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 133
    return-void
.end method

.method private findImports(ZZZ)Ljava/util/Set;
    .locals 2
    .param p1, "multibindings"    # Z
    .param p2, "providers"    # Z
    .param p3, "dependencies"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 372
    .local v0, "imports":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v1, Ldagger/internal/ModuleAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    if-eqz p2, :cond_0

    .line 374
    const-class v1, Ldagger/internal/BindingsGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    const-class v1, Ljavax/inject/Provider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    const-class v1, Ldagger/internal/ProvidesBinding;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_0
    if-eqz p3, :cond_1

    .line 379
    const-class v1, Ldagger/internal/Linker;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    const-class v1, Ldagger/internal/Binding;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_1
    if-eqz p1, :cond_2

    .line 384
    const-class v1, Ldagger/internal/SetBinding;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_2
    return-object v0
.end method

.method private findProvidesMethods(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 229
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Element;>;"
    const-class v1, Ldagger/Provides;

    invoke-interface {p1, v1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 230
    return-object v0
.end method

.method private generateModuleAdapter(Ljava/io/Writer;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/List;)V
    .locals 35
    .param p1, "ioWriter"    # Ljava/io/Writer;
    .param p2, "adapterName"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    .local p4, "module":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "providerMethods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    if-nez p4, :cond_0

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has @Provides methods but no @Module annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 368
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v4, "staticInjections"

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v27, v4

    check-cast v27, [Ljava/lang/Object;

    .line 245
    .local v27, "staticInjections":[Ljava/lang/Object;
    const-string v4, "injects"

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, [Ljava/lang/Object;

    .line 246
    .local v17, "injects":[Ljava/lang/Object;
    const-string v4, "includes"

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, [Ljava/lang/Object;

    .line 248
    .local v14, "includes":[Ljava/lang/Object;
    const-string v4, "overrides"

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 249
    .local v23, "overrides":Z
    const-string v4, "complete"

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 250
    .local v11, "complete":Z
    const-string v4, "library"

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 252
    .local v9, "library":Z
    new-instance v3, Lcom/squareup/javawriter/JavaWriter;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/squareup/javawriter/JavaWriter;-><init>(Ljava/io/Writer;)V

    .line 254
    .local v3, "writer":Lcom/squareup/javawriter/JavaWriter;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ldagger/internal/codegen/ModuleAdapterProcessor;->checkForMultibindings(Ljava/util/List;)Z

    move-result v21

    .line 255
    .local v21, "multibindings":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ldagger/internal/codegen/ModuleAdapterProcessor;->checkForDependencies(Ljava/util/List;)Z

    move-result v24

    .line 257
    .local v24, "providerMethodDependencies":Z
    const-string v4, "Code generated by dagger-compiler.  Do not edit."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 258
    invoke-static/range {p3 .. p3}, Ldagger/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 259
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Ldagger/internal/codegen/ModuleAdapterProcessor;->findImports(ZZZ)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    .line 262
    invoke-interface/range {p3 .. p3}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 263
    .local v30, "typeName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 264
    const-string v4, "A manager of modules and provides adapters allowing for proper linking and\ninstance provision of types served by {@code @Provides} methods."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 265
    const-string v5, "class"

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v31, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const-class v4, Ldagger/internal/ModuleAdapter;

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v30, v31, v32

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/String;

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 269
    .local v18, "injectsField":Ljava/lang/StringBuilder;
    move-object/from16 v10, v17

    .local v10, "arr$":[Ljava/lang/Object;
    array-length v0, v10

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    aget-object v16, v10, v12

    .local v16, "injectableType":Ljava/lang/Object;
    move-object/from16 v29, v16

    .line 270
    check-cast v29, Ljavax/lang/model/type/TypeMirror;

    .line 271
    .local v29, "typeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-static/range {v29 .. v29}, Ldagger/internal/codegen/Util;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static/range {v29 .. v29}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v19

    .line 274
    .local v19, "key":Ljava/lang/String;
    :goto_3
    invoke-static/range {v19 .. v19}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 259
    .end local v10    # "arr$":[Ljava/lang/Object;
    .end local v12    # "i$":I
    .end local v16    # "injectableType":Ljava/lang/Object;
    .end local v18    # "injectsField":Ljava/lang/StringBuilder;
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "len$":I
    .end local v29    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    .end local v30    # "typeName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 271
    .restart local v10    # "arr$":[Ljava/lang/Object;
    .restart local v12    # "i$":I
    .restart local v16    # "injectableType":Ljava/lang/Object;
    .restart local v18    # "injectsField":Ljava/lang/StringBuilder;
    .restart local v20    # "len$":I
    .restart local v29    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    .restart local v30    # "typeName":Ljava/lang/String;
    :cond_2
    invoke-static/range {v29 .. v29}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 276
    .end local v16    # "injectableType":Ljava/lang/Object;
    .end local v29    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_3
    const-string v4, "}"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v4, "String[]"

    const-string v5, "INJECTS"

    sget-object v31, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    sget-object v32, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v33, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static/range {v31 .. v33}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 281
    .local v28, "staticInjectionsField":Ljava/lang/StringBuilder;
    move-object/from16 v10, v27

    array-length v0, v10

    move/from16 v20, v0

    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v12, v0, :cond_4

    aget-object v26, v10, v12

    .local v26, "staticInjection":Ljava/lang/Object;
    move-object/from16 v29, v26

    .line 282
    check-cast v29, Ljavax/lang/model/type/TypeMirror;

    .line 283
    .restart local v29    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-static/range {v29 .. v29}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 285
    .end local v26    # "staticInjection":Ljava/lang/Object;
    .end local v29    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_4
    const-string v4, "}"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v4, "Class<?>[]"

    const-string v5, "STATIC_INJECTIONS"

    sget-object v31, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    sget-object v32, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v33, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static/range {v31 .. v33}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 290
    .local v15, "includesField":Ljava/lang/StringBuilder;
    move-object v10, v14

    array-length v0, v10

    move/from16 v20, v0

    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v12, v0, :cond_6

    aget-object v13, v10, v12

    .line 291
    .local v13, "include":Ljava/lang/Object;
    instance-of v4, v13, Ljavax/lang/model/type/TypeMirror;

    if-nez v4, :cond_5

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Ldagger/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v4}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v4

    sget-object v5, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unexpected value: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " in includes of "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-interface {v4, v5, v0, v1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 290
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v29, v13

    .line 297
    check-cast v29, Ljavax/lang/model/type/TypeMirror;

    .line 298
    .restart local v29    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-static/range {v29 .. v29}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 300
    .end local v13    # "include":Ljava/lang/Object;
    .end local v29    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_6
    const-string v4, "}"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v4, "Class<?>[]"

    const-string v5, "INCLUDES"

    sget-object v31, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    sget-object v32, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v33, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static/range {v31 .. v33}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v31

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 304
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 305
    const/4 v4, 0x0

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 306
    const-string v4, "super(%s.class, INJECTS, STATIC_INJECTIONS, %s /*overrides*/, INCLUDES, %s /*complete*/, %s /*library*/)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v31, 0x0

    aput-object v30, v5, v31

    const/16 v31, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v5, v31

    const/16 v31, 0x2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v5, v31

    const/16 v31, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v5, v31

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 308
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 310
    invoke-static/range {p3 .. p3}, Ldagger/internal/codegen/Util;->getNoArgsConstructor(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v22

    .line 311
    .local v22, "noArgsConstructor":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v22, :cond_7

    invoke-static/range {v22 .. v22}, Ldagger/internal/codegen/Util;->isCallableConstructor(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 312
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 313
    const-class v4, Ljava/lang/Override;

    invoke-virtual {v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 314
    const-string v4, "newModule"

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 315
    const-string v4, "return new %s()"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v31, 0x0

    aput-object v30, v5, v31

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 316
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 319
    :cond_7
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 321
    .local v7, "methodToClassName":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 323
    .local v8, "methodNameToNextId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 324
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 325
    const-string v4, "Used internally obtain dependency information, such as for cyclical\ngraph detection."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 326
    const-class v4, Ljava/lang/Override;

    invoke-virtual {v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 327
    const-string v4, "void"

    const-string v5, "getBindings"

    sget-object v31, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static/range {v31 .. v31}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v31

    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    sget-object v34, Ldagger/internal/codegen/ModuleAdapterProcessor;->BINDINGS_MAP:Ljava/lang/String;

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const-string v34, "bindings"

    aput-object v34, v32, v33

    const/16 v33, 0x2

    aput-object v30, v32, v33

    const/16 v33, 0x3

    const-string v34, "module"

    aput-object v34, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 330
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/ExecutableElement;

    .line 331
    .local v6, "providerMethod":Ljavax/lang/model/element/ExecutableElement;
    const-class v4, Ldagger/Provides;

    invoke-interface {v6, v4}, Ljavax/lang/model/element/ExecutableElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v25

    check-cast v25, Ldagger/Provides;

    .line 332
    .local v25, "provides":Ldagger/Provides;
    sget-object v4, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    invoke-interface/range {v25 .. v25}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v5

    invoke-virtual {v5}, Ldagger/Provides$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 355
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unknown @Provides type "

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v25 .. v25}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 334
    :pswitch_0
    invoke-static {v6}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v19

    .line 335
    .restart local v19    # "key":Ljava/lang/String;
    const-string v4, "bindings.contributeProvidesBinding(%s, new %s(module))"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v31, 0x0

    invoke-static/range {v19 .. v19}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Ldagger/internal/codegen/ModuleAdapterProcessor;->bindingClassName(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v31

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_7

    .line 341
    .end local v19    # "key":Ljava/lang/String;
    :pswitch_1
    invoke-static {v6}, Ldagger/internal/codegen/GeneratorKeys;->getSetKey(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v19

    .line 342
    .restart local v19    # "key":Ljava/lang/String;
    const-string v4, "SetBinding.add(bindings, %s, new %s(module))"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v31, 0x0

    invoke-static/range {v19 .. v19}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Ldagger/internal/codegen/ModuleAdapterProcessor;->bindingClassName(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v31

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_7

    .line 348
    .end local v19    # "key":Ljava/lang/String;
    :pswitch_2
    invoke-static {v6}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v19

    .line 349
    .restart local v19    # "key":Ljava/lang/String;
    const-string v4, "SetBinding.add(bindings, %s, new %s(module))"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v31, 0x0

    invoke-static/range {v19 .. v19}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Ldagger/internal/codegen/ModuleAdapterProcessor;->bindingClassName(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v31

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_7

    .line 358
    .end local v6    # "providerMethod":Ljavax/lang/model/element/ExecutableElement;
    .end local v19    # "key":Ljava/lang/String;
    .end local v25    # "provides":Ldagger/Provides;
    :cond_8
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 361
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/ExecutableElement;

    .restart local v6    # "providerMethod":Ljavax/lang/model/element/ExecutableElement;
    move-object/from16 v4, p0

    move-object v5, v3

    .line 362
    invoke-direct/range {v4 .. v9}, Ldagger/internal/codegen/ModuleAdapterProcessor;->generateProvidesAdapter(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_8

    .line 366
    .end local v6    # "providerMethod":Ljavax/lang/model/element/ExecutableElement;
    :cond_a
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 367
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->close()V

    goto/16 :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private generateProvidesAdapter(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 27
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p2, "providerMethod"    # Ljavax/lang/model/element/ExecutableElement;
    .param p5, "library"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/Map",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    .local p3, "methodToClassName":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;>;"
    .local p4, "methodNameToNextId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 435
    .local v15, "methodName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v16

    .line 436
    .local v16, "moduleType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Ldagger/internal/codegen/ModuleAdapterProcessor;->bindingClassName(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "className":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v21

    .line 439
    .local v21, "returnType":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v20

    .line 440
    .local v20, "parameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v11, 0x1

    .line 442
    .local v11, "dependent":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 443
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v4, v6, v11}, Ldagger/internal/codegen/AdapterJavadocs;->bindingTypeDocs(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 444
    const-string v6, "class"

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v8, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v4, v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const-class v4, Ldagger/internal/ProvidesBinding;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v21, v8, v9

    invoke-static {v4, v8}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-class v24, Ljavax/inject/Provider;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v21, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v9, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 447
    const-string v4, "module"

    sget-object v6, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    .line 448
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/lang/model/element/Element;

    .line 449
    .local v17, "parameter":Ljavax/lang/model/element/Element;
    invoke-interface/range {v17 .. v17}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v19

    .line 450
    .local v19, "parameterType":Ljavax/lang/model/type/TypeMirror;
    const-class v4, Ldagger/internal/Binding;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v19 .. v19}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ldagger/internal/codegen/ModuleAdapterProcessor;->parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 440
    .end local v11    # "dependent":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "parameter":Ljavax/lang/model/element/Element;
    .end local v19    # "parameterType":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 454
    .restart local v11    # "dependent":Z
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 455
    const/4 v4, 0x0

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    const-string v9, "module"

    aput-object v9, v7, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 456
    const-class v4, Ljavax/inject/Singleton;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/lang/model/element/ExecutableElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v23, 0x1

    .line 457
    .local v23, "singleton":Z
    :goto_2
    invoke-static/range {p2 .. p2}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 458
    .local v14, "key":Ljava/lang/String;
    const-string v6, "super(%s, %s, %s, %s)"

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v7, v4

    const/4 v8, 0x1

    if-eqz v23, :cond_3

    const-string v4, "IS_SINGLETON"

    :goto_3
    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-static/range {v16 .. v16}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    invoke-static {v15}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 462
    const-string v4, "this.module = module"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 463
    const-string v4, "setLibrary(%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 466
    if-eqz v11, :cond_6

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 468
    const-string v4, "Used internally to link bindings/providers together at run time\naccording to their dependency graph."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 469
    const-class v4, Ljava/lang/Override;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 470
    const-class v4, Ljava/lang/SuppressWarnings;

    const-string v6, "unchecked"

    invoke-static {v6}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 471
    const-string v4, "void"

    const-string v6, "attach"

    sget-object v7, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-class v24, Ldagger/internal/Linker;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v8, v9

    const/4 v9, 0x1

    const-string v24, "linker"

    aput-object v24, v8, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 473
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/lang/model/element/VariableElement;

    .line 474
    .local v17, "parameter":Ljavax/lang/model/element/VariableElement;
    invoke-static/range {v17 .. v17}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v18

    .line 475
    .local v18, "parameterKey":Ljava/lang/String;
    const-string v4, "%s = (%s) linker.requestBinding(%s, %s.class, getClass().getClassLoader())"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ldagger/internal/codegen/ModuleAdapterProcessor;->parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ldagger/internal/Binding;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/16 v24, 0x0

    invoke-interface/range {v17 .. v17}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v24

    invoke-static {v8, v9}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v18 .. v18}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_4

    .line 456
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "parameter":Ljavax/lang/model/element/VariableElement;
    .end local v18    # "parameterKey":Ljava/lang/String;
    .end local v23    # "singleton":Z
    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 458
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v23    # "singleton":Z
    :cond_3
    const-string v4, "NOT_SINGLETON"

    goto/16 :goto_3

    .line 482
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 485
    const-string v4, "Used internally obtain dependency information, such as for cyclical\ngraph detection."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 486
    const-class v4, Ljava/lang/Override;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 487
    const-class v4, Ljava/util/Set;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Binding<?>"

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 488
    .local v22, "setOfBindings":Ljava/lang/String;
    const-string v4, "void"

    const-string v6, "getDependencies"

    sget-object v7, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v22, v8, v9

    const/4 v9, 0x1

    const-string v24, "getBindings"

    aput-object v24, v8, v9

    const/4 v9, 0x2

    aput-object v22, v8, v9

    const/4 v9, 0x3

    const-string v24, "injectMembersBindings"

    aput-object v24, v8, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 490
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/lang/model/element/Element;

    .line 491
    .local v17, "parameter":Ljavax/lang/model/element/Element;
    const-string v4, "getBindings.add(%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ldagger/internal/codegen/ModuleAdapterProcessor;->parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_5

    .line 493
    .end local v17    # "parameter":Ljavax/lang/model/element/Element;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 496
    .end local v22    # "setOfBindings":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 497
    const-string v4, "Returns the fully provisioned instance satisfying the contract for\n{@code Provider<%s>}."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 498
    const-class v4, Ljava/lang/Override;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 499
    const-string v4, "get"

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 500
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v10, "args":Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    .line 502
    .local v12, "first":Z
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/lang/model/element/Element;

    .line 503
    .restart local v17    # "parameter":Ljavax/lang/model/element/Element;
    if-nez v12, :cond_7

    const-string v4, ", "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :goto_7
    const-string v4, "%s.get()"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ldagger/internal/codegen/ModuleAdapterProcessor;->parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 504
    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    .line 507
    .end local v17    # "parameter":Ljavax/lang/model/element/Element;
    :cond_8
    const-string v4, "return module.%s(%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 511
    return-void
.end method

.method private parameterName(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "parameter"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 514
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "module"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private providerMethodsByClass(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;
    .locals 25
    .param p1, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Ldagger/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v3

    .line 140
    .local v3, "elementUtils":Ljavax/lang/model/util/Elements;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldagger/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v20

    .line 142
    .local v20, "types":Ljavax/lang/model/util/Types;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v16, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;>;"
    invoke-direct/range {p0 .. p1}, Ldagger/internal/codegen/ModuleAdapterProcessor;->findProvidesMethods(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/lang/model/element/Element;

    .line 146
    .local v14, "providerMethod":Ljavax/lang/model/element/Element;
    sget-object v21, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v14}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 151
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unexpected @Provides on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v14}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-interface {v14}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v18

    check-cast v18, Ljavax/lang/model/element/TypeElement;

    .line 155
    .local v18, "type":Ljavax/lang/model/element/TypeElement;
    invoke-interface/range {v18 .. v18}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v19

    .line 156
    .local v19, "typeModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    sget-object v21, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    sget-object v21, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 158
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Classes declaring @Provides methods must not be private or abstract: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v18 .. v18}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-interface {v14}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v8

    .line 164
    .local v8, "methodModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    sget-object v21, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    sget-object v21, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    sget-object v21, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 167
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "@Provides methods must not be private, abstract or static: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v18 .. v18}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    :cond_3
    move-object v15, v14

    .line 172
    check-cast v15, Ljavax/lang/model/element/ExecutableElement;

    .line 173
    .local v15, "providerMethodAsExecutable":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v15}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    .line 174
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "@Provides methods must not have a throws clause: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v18 .. v18}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .line 180
    :cond_4
    invoke-interface {v15}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v17

    .line 181
    .local v17, "returnType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface/range {v17 .. v17}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v21

    sget-object v22, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual/range {v21 .. v22}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 184
    sget-object v21, Ldagger/internal/codegen/ModuleAdapterProcessor;->INVALID_RETURN_TYPES:Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 185
    .local v7, "invalidTypeName":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 186
    .local v6, "invalidTypeElement":Ljavax/lang/model/element/TypeElement;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 188
    const-string v21, "@Provides method must not return %s directly: %s.%s"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v6, v22, v23

    const/16 v23, 0x1

    invoke-interface/range {v18 .. v18}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    aput-object v14, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .line 195
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "invalidTypeElement":Ljavax/lang/model/element/TypeElement;
    .end local v7    # "invalidTypeName":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 196
    .local v9, "methods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    if-nez v9, :cond_7

    .line 197
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "methods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .restart local v9    # "methods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface/range {v18 .. v18}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_7
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 203
    .end local v8    # "methodModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    .end local v9    # "methods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v14    # "providerMethod":Ljavax/lang/model/element/Element;
    .end local v15    # "providerMethodAsExecutable":Ljavax/lang/model/element/ExecutableElement;
    .end local v17    # "returnType":Ljavax/lang/model/type/TypeMirror;
    .end local v18    # "type":Ljavax/lang/model/element/TypeElement;
    .end local v19    # "typeModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    :cond_8
    const-string v21, "java.lang.Object"

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v13

    .line 207
    .local v13, "objectType":Ljavax/lang/model/type/TypeMirror;
    const-class v21, Ldagger/Module;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/Element;

    .line 208
    .local v10, "module":Ljavax/lang/model/element/Element;
    invoke-interface {v10}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v21

    sget-object v22, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    invoke-virtual/range {v21 .. v22}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 209
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Modules must be classes: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v10}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    :cond_a
    move-object v12, v10

    .line 213
    check-cast v12, Ljavax/lang/model/element/TypeElement;

    .line 216
    .local v12, "moduleType":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljavax/lang/model/type/TypeMirror;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 217
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Modules must not extend from other classes: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v10}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 220
    :cond_b
    invoke-interface {v12}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 221
    .local v11, "moduleName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 222
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 224
    .end local v10    # "module":Ljavax/lang/model/element/Element;
    .end local v11    # "moduleName":Ljava/lang/String;
    .end local v12    # "moduleType":Ljavax/lang/model/element/TypeElement;
    :cond_c
    return-object v16

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 15
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
    .line 98
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    iget-object v1, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Ldagger/internal/codegen/ModuleAdapterProcessor;->providerMethodsByClass(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 99
    iget-object v1, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 101
    .local v11, "typeName":Ljava/lang/String;
    iget-object v1, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    invoke-interface {v1, v11}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v4

    .line 102
    .local v4, "type":Ljavax/lang/model/element/TypeElement;
    iget-object v1, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 107
    .local v6, "providesTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    :try_start_0
    const-class v1, Ldagger/Module;

    invoke-static {v1, v4}, Ldagger/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v5

    .line 110
    .local v5, "parsedAnnotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 111
    .local v2, "stringWriter":Ljava/io/StringWriter;
    const-string v1, "$$ModuleAdapter"

    invoke-static {v4, v1}, Ldagger/internal/codegen/Util;->adapterName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "adapterName":Ljava/lang/String;
    move-object v1, p0

    .line 112
    invoke-direct/range {v1 .. v6}, Ldagger/internal/codegen/ModuleAdapterProcessor;->generateModuleAdapter(Ljava/io/Writer;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/List;)V

    .line 113
    iget-object v1, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v1

    const/4 v12, 0x1

    new-array v12, v12, [Ljavax/lang/model/element/Element;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-interface {v1, v3, v12}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v9

    .line 114
    .local v9, "sourceFile":Ljavax/tools/JavaFileObject;
    invoke-interface {v9}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v10

    .line 115
    .local v10, "sourceWriter":Ljava/io/Writer;
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 116
    invoke-virtual {v10}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ldagger/internal/codegen/Util$CodeGenerationIncompleteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v2    # "stringWriter":Ljava/io/StringWriter;
    .end local v3    # "adapterName":Ljava/lang/String;
    .end local v5    # "parsedAnnotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "sourceFile":Ljavax/tools/JavaFileObject;
    .end local v10    # "sourceWriter":Ljava/io/Writer;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v7

    .line 118
    .local v7, "e":Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;
    goto :goto_0

    .line 119
    .end local v7    # "e":Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;
    :catch_1
    move-exception v7

    .line 120
    .local v7, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Code gen failed: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Ldagger/internal/codegen/ModuleAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 124
    .end local v4    # "type":Ljavax/lang/model/element/TypeElement;
    .end local v6    # "providesTypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "typeName":Ljava/lang/String;
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 125
    iget-object v1, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    sget-object v12, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not find types required by provides methods for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ldagger/internal/codegen/ModuleAdapterProcessor;->remainingTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 128
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
