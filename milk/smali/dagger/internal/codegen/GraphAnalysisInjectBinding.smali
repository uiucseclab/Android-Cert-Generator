.class final Ldagger/internal/codegen/GraphAnalysisInjectBinding;
.super Ldagger/internal/Binding;
.source "GraphAnalysisInjectBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/GraphAnalysisInjectBinding$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final bindings:[Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeKey:Ljava/lang/String;

.field private final type:Ljavax/lang/model/element/TypeElement;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "provideKey"    # Ljava/lang/String;
    .param p2, "membersKey"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p5, "supertypeKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p4, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Ljavax/inject/Singleton;

    invoke-interface {p3, v0}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 48
    iput-object p3, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->type:Ljavax/lang/model/element/TypeElement;

    .line 49
    iput-object p4, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->keys:Ljava/util/List;

    .line 50
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldagger/internal/Binding;

    iput-object v0, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->bindings:[Ldagger/internal/Binding;

    .line 51
    iput-object p5, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->supertypeKey:Ljava/lang/String;

    .line 52
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static create(Ljavax/lang/model/element/TypeElement;Z)Ldagger/internal/codegen/GraphAnalysisInjectBinding;
    .locals 16
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "mustHaveInjections"    # Z

    .prologue
    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v4, "requiredKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 57
    .local v8, "hasInjectConstructor":Z
    const/4 v9, 0x0

    .line 59
    .local v9, "hasNoArgsConstructor":Z
    invoke-interface/range {p0 .. p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/Element;

    .line 60
    .local v7, "enclosed":Ljavax/lang/model/element/Element;
    sget-object v0, Ldagger/internal/codegen/GraphAnalysisInjectBinding$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v7}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-static {v7}, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->hasAtInject(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected @Inject annotation on "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_0
    invoke-static {v7}, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->hasAtInject(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    check-cast v7, Ljavax/lang/model/element/VariableElement;

    .end local v7    # "enclosed":Ljavax/lang/model/element/Element;
    invoke-static {v7}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v7    # "enclosed":Ljavax/lang/model/element/Element;
    :pswitch_1
    move-object v6, v7

    .line 69
    check-cast v6, Ljavax/lang/model/element/ExecutableElement;

    .line 70
    .local v6, "constructor":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v6}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v13

    .line 71
    .local v13, "parameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-static {v7}, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->hasAtInject(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-static {v7}, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->hasAtSingleton(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Singleton annotations have no effect on constructors. Did you mean to annotate the class? "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    if-eqz v8, :cond_2

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Too many injectable constructors on "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    const/4 v8, 0x1

    .line 82
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/lang/model/element/VariableElement;

    .line 83
    .local v12, "parameter":Ljavax/lang/model/element/VariableElement;
    invoke-static {v12}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "parameter":Ljavax/lang/model/element/VariableElement;
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 97
    .end local v6    # "constructor":Ljavax/lang/model/element/ExecutableElement;
    .end local v7    # "enclosed":Ljavax/lang/model/element/Element;
    .end local v13    # "parameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    :cond_4
    if-nez v8, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No injectable members on "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ". Do you want to add an injectable constructor?"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_5
    invoke-static/range {p0 .. p0}, Ldagger/internal/codegen/Util;->getApplicationSupertype(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v14

    .line 104
    .local v14, "supertype":Ljavax/lang/model/type/TypeMirror;
    if-eqz v14, :cond_7

    invoke-static {v14}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "supertypeKey":Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_6

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-interface/range {p0 .. p0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "provideKey":Ljava/lang/String;
    :goto_3
    invoke-interface/range {p0 .. p0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "membersKey":Ljava/lang/String;
    new-instance v0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Ldagger/internal/codegen/GraphAnalysisInjectBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 104
    .end local v1    # "provideKey":Ljava/lang/String;
    .end local v2    # "membersKey":Ljava/lang/String;
    .end local v5    # "supertypeKey":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 108
    .restart local v5    # "supertypeKey":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static hasAtInject(Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p0, "enclosed"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 116
    const-class v0, Ljavax/inject/Inject;

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasAtSingleton(Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p0, "enclosed"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 120
    const-class v0, Ljavax/inject/Singleton;

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 124
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->type:Ljavax/lang/model/element/TypeElement;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "requiredBy":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 126
    iget-object v1, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->bindings:[Ldagger/internal/Binding;

    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->keys:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    aput-object v0, v1, v6

    .line 125
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->supertypeKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->supertypeKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    .line 133
    :cond_1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 136
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
    .line 144
    .local p1, "get":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembers":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->bindings:[Ldagger/internal/Binding;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Compile-time binding should never be called to inject."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
