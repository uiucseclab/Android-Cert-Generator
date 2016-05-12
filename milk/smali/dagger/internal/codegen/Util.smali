.class final Ldagger/internal/codegen/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/Util$3;,
        Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;
    }
.end annotation


# static fields
.field private static final VALUE_EXTRACTOR:Ljavax/lang/model/element/AnnotationValueVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/lang/model/element/AnnotationValueVisitor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Ldagger/internal/codegen/Util$2;

    invoke-direct {v0}, Ldagger/internal/codegen/Util$2;-><init>()V

    sput-object v0, Ldagger/internal/codegen/Util;->VALUE_EXTRACTOR:Ljavax/lang/model/element/AnnotationValueVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Ljavax/lang/model/type/PrimitiveType;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljavax/lang/model/type/PrimitiveType;

    .prologue
    .line 46
    invoke-static {p0}, Ldagger/internal/codegen/Util;->box(Ljavax/lang/model/type/PrimitiveType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static adapterName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "typeElement"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x24

    invoke-static {v0, p0, v1}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljava/lang/StringBuilder;Ljavax/lang/model/element/TypeElement;C)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static box(Ljavax/lang/model/type/PrimitiveType;)Ljava/lang/Class;
    .locals 2
    .param p0, "primitiveType"    # Ljavax/lang/model/type/PrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 270
    sget-object v0, Ldagger/internal/codegen/Util$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/PrimitiveType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :pswitch_0
    const-class v0, Ljava/lang/Byte;

    .line 288
    :goto_0
    return-object v0

    .line 274
    :pswitch_1
    const-class v0, Ljava/lang/Short;

    goto :goto_0

    .line 276
    :pswitch_2
    const-class v0, Ljava/lang/Integer;

    goto :goto_0

    .line 278
    :pswitch_3
    const-class v0, Ljava/lang/Long;

    goto :goto_0

    .line 280
    :pswitch_4
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 282
    :pswitch_5
    const-class v0, Ljava/lang/Double;

    goto :goto_0

    .line 284
    :pswitch_6
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 286
    :pswitch_7
    const-class v0, Ljava/lang/Character;

    goto :goto_0

    .line 288
    :pswitch_8
    const-class v0, Ljava/lang/Void;

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static className(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .prologue
    .line 330
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static elementToString(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 243
    sget-object v0, Ldagger/internal/codegen/Util$3;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 249
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;
    .locals 15
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 193
    .local v0, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v10

    const/16 v11, 0x24

    invoke-static {v10, v11}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 198
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 199
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 200
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 204
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v10}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/AnnotationValue;

    sget-object v11, Ldagger/internal/codegen/Util;->VALUE_EXTRACTOR:Ljavax/lang/model/element/AnnotationValueVisitor;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 206
    .local v9, "value":Ljava/lang/Object;
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, "defaultValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v9}, Ldagger/internal/codegen/Util;->lenientIsInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 208
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Value of %s.%s is a %s but expected a %s\n    value: %s"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    instance-of v14, v9, [Ljava/lang/Object;

    if-eqz v14, :cond_2

    check-cast v9, [Ljava/lang/Object;

    .end local v9    # "value":Ljava/lang/Object;
    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 213
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    .end local v0    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "defaultValue":Ljava/lang/Object;
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    .end local v5    # "len$":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "value":Ljava/lang/Object;
    :cond_4
    const/4 v8, 0x0

    :cond_5
    return-object v8
.end method

.method public static getApplicationSupertype(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;

    .prologue
    .line 63
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 64
    .local v0, "supertype":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/Keys;->isPlatformType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "supertype":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    return-object v0
.end method

.method public static getNoArgsConstructor(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/ExecutableElement;
    .locals 5
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;

    .prologue
    .line 299
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 300
    .local v1, "enclosed":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v3, v4, :cond_0

    move-object v0, v1

    .line 303
    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 304
    .local v0, "constructor":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    .end local v0    # "constructor":Ljavax/lang/model/element/ExecutableElement;
    .end local v1    # "enclosed":Ljavax/lang/model/element/Element;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 51
    :goto_0
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 52
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_0
    check-cast p0, Ljavax/lang/model/element/PackageElement;

    .end local p0    # "type":Ljavax/lang/model/element/Element;
    return-object p0
.end method

.method public static isCallableConstructor(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 4
    .param p0, "constructor"    # Ljavax/lang/model/element/ExecutableElement;

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 321
    .local v0, "type":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-eq v2, v3, :cond_2

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInterface(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    .line 334
    instance-of v0, p0, Ljavax/lang/model/type/DeclaredType;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/lang/model/type/DeclaredType;

    .end local p0    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isStatic(Ljavax/lang/model/element/Element;)Z
    .locals 3
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 339
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Modifier;

    .line 340
    .local v1, "modifier":Ljavax/lang/model/element/Modifier;
    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v1, v2}, Ljavax/lang/model/element/Modifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    const/4 v2, 0x1

    .line 344
    .end local v1    # "modifier":Ljavax/lang/model/element/Modifier;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static lenientIsInstance(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "expectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 226
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 227
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v7, p1, [Ljava/lang/Object;

    if-nez v7, :cond_1

    .line 237
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 230
    .restart local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 231
    .local v2, "element":Ljava/lang/Object;
    invoke-static {v1, v2}, Ldagger/internal/codegen/Util;->lenientIsInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "element":Ljava/lang/Object;
    :cond_2
    move v6, v5

    .line 233
    goto :goto_0

    .line 234
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    const-class v7, Ljava/lang/Class;

    if-ne p0, v7, :cond_4

    .line 235
    instance-of v6, p1, Ljavax/lang/model/type/TypeMirror;

    goto :goto_0

    .line 237
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne p0, v7, :cond_5

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_2
.end method

.method public static rawTypeToString(Ljavax/lang/model/type/TypeMirror;C)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "innerClassSeparator"    # C

    .prologue
    .line 84
    instance-of v2, p0, Ljavax/lang/model/type/DeclaredType;

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v0, p0

    .line 88
    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 89
    .local v0, "declaredType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    invoke-static {v1, v2, p1}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljava/lang/StringBuilder;Ljavax/lang/model/element/TypeElement;C)V

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static rawTypeToString(Ljava/lang/StringBuilder;Ljavax/lang/model/element/TypeElement;C)V
    .locals 4
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "innerClassSeparator"    # C

    .prologue
    const/16 v3, 0x2e

    .line 257
    invoke-static {p1}, Ldagger/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "qualifiedName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static typeToString(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "result":Ljava/lang/StringBuilder;
    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "innerClassSeparator"    # C

    .prologue
    .line 104
    new-instance v0, Ldagger/internal/codegen/Util$1;

    invoke-direct {v0, p1, p2, p0}, Ldagger/internal/codegen/Util$1;-><init>(Ljava/lang/StringBuilder;CLjavax/lang/model/type/TypeMirror;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method
