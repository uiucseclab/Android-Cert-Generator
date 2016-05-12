.class final Ldagger/internal/codegen/GeneratorKeys;
.super Ljava/lang/Object;
.source "GeneratorKeys.java"


# static fields
.field private static final SET_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/codegen/GeneratorKeys;->SET_PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 4
    .param p0, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/codegen/GeneratorKeys;->getQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 61
    .local v0, "qualifier":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0, v1}, Ldagger/internal/codegen/GeneratorKeys;->qualifierToString(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)V

    .line 64
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    const/16 v3, 0x24

    invoke-static {v2, v1, v3}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 4
    .param p0, "variable"    # Ljavax/lang/model/element/VariableElement;

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/codegen/GeneratorKeys;->getQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 85
    .local v0, "qualifier":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 86
    invoke-static {v0, v1}, Ldagger/internal/codegen/GeneratorKeys;->qualifierToString(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)V

    .line 88
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    const/16 v3, 0x24

    invoke-static {v2, v1, v3}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "result":Ljava/lang/StringBuilder;
    const/16 v1, 0x24

    invoke-static {p0, v0, v1}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v2, 0x0

    .line 110
    .local v2, "qualifier":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 111
    .local v0, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    const-class v4, Ljavax/inject/Qualifier;

    invoke-interface {v3, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 114
    move-object v2, v0

    .line 115
    goto :goto_0

    .line 116
    .end local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    return-object v2
.end method

.method public static getSetKey(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 4
    .param p0, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/codegen/GeneratorKeys;->getQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 72
    .local v0, "qualifier":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 73
    invoke-static {v0, v1}, Ldagger/internal/codegen/GeneratorKeys;->qualifierToString(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)V

    .line 75
    :cond_0
    sget-object v2, Ldagger/internal/codegen/GeneratorKeys;->SET_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    const/16 v3, 0x24

    invoke-static {v2, v1, v3}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    .line 77
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static qualifierToString(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "qualifier"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 94
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    const/16 v3, 0x24

    invoke-static {v2, p1, v3}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    .line 96
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 100
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 103
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    :cond_0
    const-string v2, ")/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    return-void
.end method

.method public static rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "members/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {p0, v1}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
