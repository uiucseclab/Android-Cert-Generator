.class public final Ldagger/internal/codegen/InjectAdapterProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "InjectAdapterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/InjectAdapterProcessor$1;,
        Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "javax.inject.Inject"
    }
.end annotation


# instance fields
.field private final remainingTypeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    .line 516
    return-void
.end method

.method private allTypesExist(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/Element;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 120
    .local v0, "element":Ljavax/lang/model/element/Element;
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_0

    .line 121
    const/4 v2, 0x0

    .line 124
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createInjectedClass(Ljava/lang/String;)Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;
    .locals 9
    .param p1, "injectedClassName"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v7, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v7}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v7

    invoke-interface {v7, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 188
    .local v6, "type":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 189
    .local v3, "isAbstract":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v5, "staticFields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    const/4 v0, 0x0

    .line 191
    .local v0, "constructor":Ljavax/lang/model/element/ExecutableElement;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/Element;

    .line 193
    .local v4, "member":Ljavax/lang/model/element/Element;
    const-class v7, Ljavax/inject/Inject;

    invoke-interface {v4, v7}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 197
    sget-object v7, Ldagger/internal/codegen/InjectAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot inject "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 199
    :pswitch_0
    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :pswitch_1
    if-eqz v0, :cond_3

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many injectable constructors on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    :cond_2
    :goto_1
    move-object v0, v4

    .line 214
    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 215
    goto :goto_0

    .line 209
    :cond_3
    if-eqz v3, :cond_2

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Abstract class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must not have an @Inject-annotated constructor."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 223
    .end local v4    # "member":Ljavax/lang/model/element/Element;
    :cond_4
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    .line 224
    invoke-static {v6}, Ldagger/internal/codegen/Util;->getNoArgsConstructor(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_5

    invoke-static {v0}, Ldagger/internal/codegen/Util;->isCallableConstructor(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 226
    const/4 v0, 0x0

    .line 230
    :cond_5
    new-instance v7, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;

    invoke-direct {v7, v6, v5, v0, v1}, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;-><init>(Ljavax/lang/model/element/TypeElement;Ljava/util/List;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V

    return-object v7

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 513
    iget-object v0, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 514
    return-void
.end method

.method private fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "disambiguateFields"    # Z
    .param p2, "field"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "field_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private findImports(ZZZ)Ljava/util/Set;
    .locals 2
    .param p1, "dependent"    # Z
    .param p2, "injectMembers"    # Z
    .param p3, "isProvider"    # Z
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
    .line 477
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 478
    .local v0, "imports":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v1, Ldagger/internal/Binding;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    if-eqz p1, :cond_0

    .line 480
    const-class v1, Ldagger/internal/Linker;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    if-eqz p2, :cond_1

    const-class v1, Ldagger/MembersInjector;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_1
    if-eqz p3, :cond_2

    const-class v1, Ljavax/inject/Provider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_2
    return-object v0
.end method

.method private findInjectedClassNames(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;
    .locals 5
    .param p1, "env"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    .local v2, "injectedTypeNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v3, Ljavax/inject/Inject;

    invoke-interface {p1, v3}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 131
    .local v0, "element":Ljavax/lang/model/element/Element;
    invoke-direct {p0, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->validateInjectable(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    :cond_1
    return-object v2
.end method

.method private generateInjectAdapter(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V
    .locals 29
    .param p1, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "constructor"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    invoke-static/range {p1 .. p1}, Ldagger/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    .line 242
    .local v27, "packageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v5, v1}, Ldagger/internal/codegen/InjectAdapterProcessor;->strippedTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "strippedTypeName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ldagger/internal/codegen/Util;->getApplicationSupertype(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v16

    .line 245
    .local v16, "supertype":Ljavax/lang/model/type/TypeMirror;
    const-string v5, "$$InjectAdapter"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Ldagger/internal/codegen/Util;->adapterName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "adapterName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v5}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/lang/model/element/Element;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v5, v4, v6}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v28

    .line 247
    .local v28, "sourceFile":Ljavax/tools/JavaFileObject;
    new-instance v3, Lcom/squareup/javawriter/JavaWriter;

    invoke-interface/range {v28 .. v28}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/squareup/javawriter/JavaWriter;-><init>(Ljava/io/Writer;)V

    .line 248
    .local v3, "writer":Lcom/squareup/javawriter/JavaWriter;
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    .line 249
    .local v26, "isAbstract":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v16, :cond_7

    :cond_0
    const/16 v25, 0x1

    .line 250
    .local v25, "injectMembers":Z
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v14, 0x1

    .line 253
    .local v14, "disambiguateFields":Z
    :goto_1
    if-nez v25, :cond_1

    if-eqz p2, :cond_9

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_1
    const/16 v24, 0x1

    .line 256
    .local v24, "dependent":Z
    :goto_2
    const-string v5, "Code generated by dagger-compiler.  Do not edit."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 257
    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/squareup/javawriter/JavaWriter;->emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 258
    if-eqz p2, :cond_a

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v5}, Ldagger/internal/codegen/InjectAdapterProcessor;->findImports(ZZZ)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    .line 259
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 260
    move/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v9, v0, v1, v2}, Ldagger/internal/codegen/AdapterJavadocs;->bindingTypeDocs(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 261
    const-string v5, "class"

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const-class v7, Ldagger/internal/Binding;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_b

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v9, v1, v8}, Ldagger/internal/codegen/InjectAdapterProcessor;->implementedInterfaces(Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 264
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1, v14}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeMemberBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Z)V

    .line 265
    if-eqz p2, :cond_2

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1, v14}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeParameterBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Z)V

    .line 268
    :cond_2
    if-eqz v16, :cond_3

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeSupertypeInjectorField(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/type/TypeMirror;)V

    .line 271
    :cond_3
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    move-object/from16 v5, p0

    move-object v6, v3

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object v10, v4

    .line 272
    invoke-direct/range {v5 .. v10}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeInjectAdapterConstructor(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v24, :cond_4

    .line 274
    const/16 v17, 0x1

    move-object/from16 v10, p0

    move-object v11, v3

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object v15, v9

    invoke-direct/range {v10 .. v17}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeAttachMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;Z)V

    .line 276
    const/16 v23, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, v3

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v21, v14

    move-object/from16 v22, v16

    invoke-direct/range {v17 .. v23}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeGetDependenciesMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjavax/lang/model/type/TypeMirror;Z)V

    .line 278
    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v17, p0

    move-object/from16 v18, v3

    move-object/from16 v19, p2

    move/from16 v20, v14

    move/from16 v21, v25

    move-object/from16 v22, v9

    .line 279
    invoke-direct/range {v17 .. v22}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeGetMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;ZZLjava/lang/String;)V

    .line 281
    :cond_5
    if-eqz v25, :cond_6

    move-object/from16 v11, p0

    move-object v12, v3

    move-object/from16 v13, p3

    move-object v15, v9

    .line 282
    invoke-direct/range {v11 .. v16}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeMembersInjectMethod(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;)V

    .line 284
    :cond_6
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 285
    invoke-virtual {v3}, Lcom/squareup/javawriter/JavaWriter;->close()V

    .line 286
    return-void

    .line 249
    .end local v14    # "disambiguateFields":Z
    .end local v24    # "dependent":Z
    .end local v25    # "injectMembers":Z
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 250
    .restart local v25    # "injectMembers":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 253
    .restart local v14    # "disambiguateFields":Z
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 258
    .restart local v24    # "dependent":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 261
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method private generateInjectionsForClass(Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;)V
    .locals 3
    .param p1, "injectedClass"    # Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    if-nez v0, :cond_0

    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    iget-object v1, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    iget-object v2, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->generateInjectAdapter(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;)V

    .line 109
    :cond_1
    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    iget-object v1, p1, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Ldagger/internal/codegen/InjectAdapterProcessor;->generateStaticInjection(Ljavax/lang/model/element/TypeElement;Ljava/util/List;)V

    .line 112
    :cond_2
    return-void
.end method

.method private generateStaticInjection(Ljavax/lang/model/element/TypeElement;Ljava/util/List;)V
    .locals 12
    .param p1, "type"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 292
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "typeName":Ljava/lang/String;
    const-string v2, "$$StaticInjection"

    invoke-static {p1, v2}, Ldagger/internal/codegen/Util;->adapterName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "adapterName":Ljava/lang/String;
    iget-object v2, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v2

    new-array v3, v9, [Ljavax/lang/model/element/Element;

    aput-object p1, v3, v6

    invoke-interface {v2, v1, v3}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v10

    .line 296
    .local v10, "sourceFile":Ljavax/tools/JavaFileObject;
    new-instance v0, Lcom/squareup/javawriter/JavaWriter;

    invoke-interface {v10}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/squareup/javawriter/JavaWriter;-><init>(Ljava/io/Writer;)V

    .line 298
    .local v0, "writer":Lcom/squareup/javawriter/JavaWriter;
    const-string v2, "Code generated by dagger-compiler.  Do not edit."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 299
    invoke-static {p1}, Ldagger/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 300
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-class v3, Ldagger/internal/StaticInjection;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-class v3, Ldagger/internal/Binding;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-class v4, Ldagger/internal/Linker;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    .line 304
    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 305
    const-string v2, "A manager for {@code %s}\'s injections into static fields."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 306
    const-string v2, "class"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-class v4, Ldagger/internal/StaticInjection;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 308
    invoke-direct {p0, v0, p2, v6}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeMemberBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Z)V

    .line 309
    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    move-object v2, p0

    move-object v3, v0

    move-object v4, v11

    move-object v5, p2

    move-object v8, v11

    .line 310
    invoke-direct/range {v2 .. v9}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeAttachMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;Z)V

    .line 311
    invoke-direct {p0, v0, p2, v7}, Ldagger/internal/codegen/InjectAdapterProcessor;->writeStaticInjectMethod(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 313
    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->close()V

    .line 314
    return-void
.end method

.method private implementedInterfaces(Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 5
    .param p1, "strippedTypeName"    # Ljava/lang/String;
    .param p2, "hasFields"    # Z
    .param p3, "isProvider"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 492
    const-class v1, Ljavax/inject/Provider;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_0
    if-eqz p2, :cond_1

    .line 495
    const-class v1, Ldagger/MembersInjector;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "disambiguateFields"    # Z
    .param p2, "parameter"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "parameter_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private strippedTypeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private validateInjectable(Ljavax/lang/model/element/Element;)Z
    .locals 8
    .param p1, "injectable"    # Ljavax/lang/model/element/Element;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 142
    .local v1, "injectableType":Ljavax/lang/model/element/Element;
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-ne v6, v7, :cond_0

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@Inject is not valid on a class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    .line 180
    :goto_0
    return v4

    .line 147
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v6, v7, :cond_1

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method injection is not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v6, v7, :cond_2

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t inject a final field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v6, v7, :cond_3

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t inject a private field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .line 164
    :cond_3
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v6, v7, :cond_4

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t inject a private constructor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .line 170
    :cond_4
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 171
    .local v0, "elementKind":Ljavax/lang/model/element/ElementKind;
    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move v2, v5

    .line 172
    .local v2, "isClassOrInterface":Z
    :goto_1
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 174
    .local v3, "isStatic":Z
    if-eqz v2, :cond_7

    if-nez v3, :cond_7

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t inject a non-static inner class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ldagger/internal/codegen/Util;->elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .end local v2    # "isClassOrInterface":Z
    .end local v3    # "isStatic":Z
    :cond_6
    move v2, v4

    .line 171
    goto :goto_1

    .restart local v2    # "isClassOrInterface":Z
    .restart local v3    # "isStatic":Z
    :cond_7
    move v4, v5

    .line 180
    goto/16 :goto_0
.end method

.method private writeAttachMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;Z)V
    .locals 11
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p2, "constructor"    # Ljavax/lang/model/element/ExecutableElement;
    .param p4, "disambiguateFields"    # Z
    .param p5, "typeName"    # Ljava/lang/String;
    .param p6, "supertype"    # Ljavax/lang/model/type/TypeMirror;
    .param p7, "extendsBinding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    const-string v4, "Used internally to link bindings/providers together at run time\naccording to their dependency graph."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 358
    if-eqz p7, :cond_0

    .line 359
    const-class v4, Ljava/lang/Override;

    invoke-virtual {p1, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 361
    :cond_0
    const-class v4, Ljava/lang/SuppressWarnings;

    const-string v5, "unchecked"

    invoke-static {v5}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 362
    const-string v4, "void"

    const-string v5, "attach"

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-class v9, Ldagger/internal/Linker;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "linker"

    aput-object v9, v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 364
    if-eqz p2, :cond_1

    .line 365
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 366
    .local v3, "parameter":Ljavax/lang/model/element/VariableElement;
    const-string v4, "%s = (%s) linker.requestBinding(%s, %s.class, getClass().getClassLoader())"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, p4, v3}, Ldagger/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ldagger/internal/Binding;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    invoke-static {v10}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v3}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 373
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "parameter":Ljavax/lang/model/element/VariableElement;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 374
    .local v1, "field":Ljavax/lang/model/element/Element;
    const-string v4, "%s = (%s) linker.requestBinding(%s, %s.class, getClass().getClassLoader())"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, p4, v1}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ldagger/internal/Binding;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    invoke-static {v10}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .end local v1    # "field":Ljavax/lang/model/element/Element;
    invoke-static {v1}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 380
    :cond_2
    if-eqz p6, :cond_3

    .line 381
    const-string v4, "%s = (%s) linker.requestBinding(%s, %s.class, getClass().getClassLoader(), false, true)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "supertype"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ldagger/internal/Binding;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x2e

    move-object/from16 v0, p6

    invoke-static {v0, v10}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p6 .. p6}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 388
    :cond_3
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 389
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 390
    return-void
.end method

.method private writeGetDependenciesMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljava/util/List;ZLjavax/lang/model/type/TypeMirror;Z)V
    .locals 10
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p2, "constructor"    # Ljavax/lang/model/element/ExecutableElement;
    .param p4, "disambiguateFields"    # Z
    .param p5, "supertype"    # Ljavax/lang/model/type/TypeMirror;
    .param p6, "extendsBinding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Ljavax/lang/model/type/TypeMirror;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    const-string v4, "Used internally obtain dependency information, such as for cyclical\ngraph detection."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 396
    if-eqz p6, :cond_0

    .line 397
    const-class v4, Ljava/lang/Override;

    invoke-virtual {p1, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 399
    :cond_0
    const-class v4, Ljava/util/Set;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Binding<?>"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "setOfBindings":Ljava/lang/String;
    const-string v4, "void"

    const-string v5, "getDependencies"

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "getBindings"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    const-string v9, "injectMembersBindings"

    aput-object v9, v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 402
    if-eqz p2, :cond_1

    .line 403
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    .line 404
    .local v2, "parameter":Ljavax/lang/model/element/Element;
    const-string v4, "getBindings.add(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, p4, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 407
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "parameter":Ljavax/lang/model/element/Element;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 408
    .local v0, "field":Ljavax/lang/model/element/Element;
    const-string v4, "injectMembersBindings.add(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, p4, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 410
    .end local v0    # "field":Ljavax/lang/model/element/Element;
    :cond_2
    if-eqz p5, :cond_3

    .line 411
    const-string v4, "injectMembersBindings.add(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "supertype"

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 413
    :cond_3
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 414
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 415
    return-void
.end method

.method private writeGetMethod(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p2, "constructor"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "disambiguateFields"    # Z
    .param p4, "injectMembers"    # Z
    .param p5, "strippedTypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 420
    const-string v4, "Returns the fully provisioned instance satisfying the contract for\n{@code Provider<%s>}."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p5, v5, v7

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 421
    const-class v4, Ljava/lang/Override;

    invoke-virtual {p1, v4}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 422
    const-string v4, "get"

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {p1, p5, v4, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v2, "newInstance":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result = new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    const/4 v0, 0x1

    .line 427
    .local v0, "first":Z
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 428
    .local v3, "parameter":Ljavax/lang/model/element/VariableElement;
    if-nez v0, :cond_0

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :goto_1
    invoke-direct {p0, p3, v3}, Ldagger/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".get()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 432
    .end local v3    # "parameter":Ljavax/lang/model/element/VariableElement;
    :cond_1
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 434
    if-eqz p4, :cond_2

    .line 435
    const-string v4, "injectMembers(result)"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 437
    :cond_2
    const-string v4, "return result"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 438
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 439
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 440
    return-void
.end method

.method private writeInjectAdapterConstructor(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p2, "constructor"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p4, "strippedTypeName"    # Ljava/lang/String;
    .param p5, "adapterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 342
    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {p1, v0, p5, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 343
    if-eqz p2, :cond_0

    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "key":Ljava/lang/String;
    :cond_0
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/javawriter/JavaWriter;->stringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "membersKey":Ljava/lang/String;
    const-class v5, Ljavax/inject/Singleton;

    invoke-interface {p3, v5}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 348
    .local v2, "singleton":Z
    :goto_0
    const-string v5, "super(%s, %s, %s, %s.class)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    aput-object v1, v6, v3

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    const-string v3, "IS_SINGLETON"

    :goto_1
    aput-object v3, v6, v4

    const/4 v3, 0x3

    aput-object p4, v6, v3

    invoke-virtual {p1, v5, v6}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 350
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 351
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 352
    return-void

    .end local v2    # "singleton":Z
    :cond_1
    move v2, v4

    .line 347
    goto :goto_0

    .line 348
    .restart local v2    # "singleton":Z
    :cond_2
    const-string v3, "NOT_SINGLETON"

    goto :goto_1
.end method

.method private writeMemberBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Z)V
    .locals 6
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p3, "disambiguateFields"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 319
    .local v0, "field":Ljavax/lang/model/element/Element;
    const-class v2, Ldagger/internal/Binding;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 322
    .end local v0    # "field":Ljavax/lang/model/element/Element;
    :cond_0
    return-void
.end method

.method private writeMembersInjectMethod(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;ZLjava/lang/String;Ljavax/lang/model/type/TypeMirror;)V
    .locals 10
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p3, "disambiguateFields"    # Z
    .param p4, "strippedTypeName"    # Ljava/lang/String;
    .param p5, "supertype"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 445
    const-string v2, "Injects any {@code @Inject} annotated fields in the given instance,\nsatisfying the contract for {@code Provider<%s>}."

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p4, v3, v7

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 446
    const-class v2, Ljava/lang/Override;

    invoke-virtual {p1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 447
    const-string v2, "void"

    const-string v3, "injectMembers"

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    aput-object p4, v5, v7

    const-string v6, "object"

    aput-object v6, v5, v8

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 448
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 449
    .local v0, "field":Ljavax/lang/model/element/Element;
    const-string v2, "object.%s = %s.get()"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-direct {p0, p3, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 453
    .end local v0    # "field":Ljavax/lang/model/element/Element;
    :cond_0
    if-eqz p5, :cond_1

    .line 454
    const-string v2, "supertype.injectMembers(object)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 456
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 457
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 458
    return-void
.end method

.method private writeParameterBindingsFields(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/element/ExecutableElement;Z)V
    .locals 6
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p2, "constructor"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "disambiguateFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 328
    .local v1, "parameter":Ljavax/lang/model/element/VariableElement;
    const-class v2, Ldagger/internal/Binding;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v1}, Ldagger/internal/codegen/InjectAdapterProcessor;->parameterName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 332
    .end local v1    # "parameter":Ljavax/lang/model/element/VariableElement;
    :cond_0
    return-void
.end method

.method private writeStaticInjectMethod(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/Element;>;"
    const/4 v6, 0x0

    .line 462
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 463
    const-string v2, "Performs the injections of dependencies into static fields when requested by\nthe {@code dagger.ObjectGraph}."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 464
    const-class v2, Ljava/lang/Override;

    invoke-virtual {p1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;

    .line 465
    const-string v2, "void"

    const-string v3, "inject"

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 466
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 467
    .local v0, "field":Ljavax/lang/model/element/Element;
    const-string v2, "%s.%s = %s.get()"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p3}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0, v6, v0}, Ldagger/internal/codegen/InjectAdapterProcessor;->fieldName(ZLjavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 472
    .end local v0    # "field":Ljavax/lang/model/element/Element;
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    .line 473
    invoke-virtual {p1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 474
    return-void
.end method

.method private writeSupertypeInjectorField(Lcom/squareup/javawriter/JavaWriter;Ljavax/lang/model/type/TypeMirror;)V
    .locals 4
    .param p1, "writer"    # Lcom/squareup/javawriter/JavaWriter;
    .param p2, "supertype"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    const-class v0, Ldagger/internal/Binding;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-static {p2, v3}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "supertype"

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    .line 338
    return-void
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 9
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
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    const/4 v5, 0x0

    .line 80
    iget-object v4, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-direct {p0, p2}, Ldagger/internal/codegen/InjectAdapterProcessor;->findInjectedClassNames(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v4, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Ldagger/internal/codegen/InjectAdapterProcessor;->createInjectedClass(Ljava/lang/String;)Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;

    move-result-object v2

    .line 84
    .local v2, "injectedClass":Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;
    iget-object v4, v2, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->fields:Ljava/util/List;

    invoke-direct {p0, v4}, Ldagger/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    if-eqz v4, :cond_1

    iget-object v4, v2, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->constructor:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Ldagger/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v2, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->staticFields:Ljava/util/List;

    invoke-direct {p0, v4}, Ldagger/internal/codegen/InjectAdapterProcessor;->allTypesExist(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v3, 0x1

    .line 89
    .local v3, "missingDependentClasses":Z
    :goto_1
    if-nez v3, :cond_0

    .line 91
    :try_start_0
    invoke-direct {p0, v2}, Ldagger/internal/codegen/InjectAdapterProcessor;->generateInjectionsForClass(Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v3    # "missingDependentClasses":Z
    :cond_3
    move v3, v5

    .line 84
    goto :goto_1

    .line 92
    .restart local v3    # "missingDependentClasses":Z
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Code gen failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v2, Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;->type:Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, v4, v6}, Ldagger/internal/codegen/InjectAdapterProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_2

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "injectedClass":Ldagger/internal/codegen/InjectAdapterProcessor$InjectedClass;
    .end local v3    # "missingDependentClasses":Z
    :cond_4
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 99
    iget-object v4, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v4}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v4

    sget-object v6, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find injection type required by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ldagger/internal/codegen/InjectAdapterProcessor;->remainingTypeNames:Ljava/util/Set;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 102
    :cond_5
    return v5
.end method
