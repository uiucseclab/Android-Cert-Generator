.class public final Ldagger/internal/codegen/GraphAnalysisProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/codegen/GraphAnalysisProcessor$3;,
        Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;,
        Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "dagger.Module"
    }
.end annotation


# static fields
.field private static final ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delayedModuleNames:Ljava/util/Set;
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
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.sun.tools.javac.code.Symbol$CompletionFailure"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ldagger/internal/codegen/GraphAnalysisProcessor;->ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 75
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    .line 380
    return-void
.end method

.method private elements()Ljavax/lang/model/util/Elements;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    return-object v0
.end method

.method private error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 160
    iget-object v0, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 161
    return-void
.end method

.method private processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;
    .locals 38
    .param p1, "rootModule"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "ignoreCompletenessErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 166
    .local v10, "allModules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/lang/model/element/TypeElement;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v5}, Ldagger/internal/codegen/GraphAnalysisProcessor;->collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V

    .line 167
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v37, "staticInjections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldagger/internal/codegen/GraphAnalysisStaticInjection;>;"
    if-eqz p2, :cond_1

    sget-object v17, Ldagger/internal/Linker$ErrorHandler;->NULL:Ldagger/internal/Linker$ErrorHandler;

    .line 172
    .local v17, "errorHandler":Ldagger/internal/Linker$ErrorHandler;
    :goto_0
    new-instance v3, Ldagger/internal/Linker;

    const/4 v5, 0x0

    new-instance v6, Ldagger/internal/codegen/GraphAnalysisLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v6, v7}, Ldagger/internal/codegen/GraphAnalysisLoader;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    move-object/from16 v0, v17

    invoke-direct {v3, v5, v6, v0}, Ldagger/internal/Linker;-><init>(Ldagger/internal/Linker;Ldagger/internal/Loader;Ldagger/internal/Linker$ErrorHandler;)V

    .line 176
    .local v3, "linker":Ldagger/internal/Linker;
    monitor-enter v3

    .line 177
    :try_start_0
    new-instance v13, Ldagger/internal/codegen/GraphAnalysisProcessor$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ldagger/internal/codegen/GraphAnalysisProcessor$1;-><init>(Ldagger/internal/codegen/GraphAnalysisProcessor;)V

    .line 182
    .local v13, "baseBindings":Ldagger/internal/BindingsGroup;
    new-instance v28, Ldagger/internal/codegen/GraphAnalysisProcessor$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ldagger/internal/codegen/GraphAnalysisProcessor$2;-><init>(Ldagger/internal/codegen/GraphAnalysisProcessor;)V

    .line 187
    .local v28, "overrideBindings":Ldagger/internal/BindingsGroup;
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljavax/lang/model/element/TypeElement;

    .line 188
    .local v27, "module":Ljavax/lang/model/element/TypeElement;
    const-class v5, Ldagger/Module;

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Ldagger/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v11

    .line 189
    .local v11, "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "overrides"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    .line 190
    .local v29, "overrides":Z
    const-string v5, "library"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    .line 191
    .local v25, "library":Z
    if-eqz v29, :cond_2

    move-object/from16 v9, v28

    .line 194
    .local v9, "addTo":Ldagger/internal/BindingsGroup;
    :goto_1
    new-instance v22, Ljava/util/LinkedHashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashSet;-><init>()V

    .line 195
    .local v22, "injectsProvisionKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "injects"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v12, v0

    .local v12, "arr$":[Ljava/lang/Object;
    array-length v0, v12

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    aget-object v21, v12, v19

    .line 196
    .local v21, "injectableTypeObject":Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    move-object/from16 v20, v0

    .line 197
    .local v20, "injectableType":Ljavax/lang/model/type/TypeMirror;
    invoke-static/range {v20 .. v20}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v31

    .line 198
    .local v31, "providerKey":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static/range {v20 .. v20}, Ldagger/internal/codegen/Util;->isInterface(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v4, v31

    .line 202
    .local v4, "key":Ljava/lang/String;
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 170
    .end local v3    # "linker":Ldagger/internal/Linker;
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "addTo":Ldagger/internal/BindingsGroup;
    .end local v11    # "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "arr$":[Ljava/lang/Object;
    .end local v13    # "baseBindings":Ldagger/internal/BindingsGroup;
    .end local v17    # "errorHandler":Ldagger/internal/Linker$ErrorHandler;
    .end local v19    # "i$":I
    .end local v20    # "injectableType":Ljavax/lang/model/type/TypeMirror;
    .end local v21    # "injectableTypeObject":Ljava/lang/Object;
    .end local v22    # "injectsProvisionKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24    # "len$":I
    .end local v25    # "library":Z
    .end local v27    # "module":Ljavax/lang/model/element/TypeElement;
    .end local v28    # "overrideBindings":Ldagger/internal/BindingsGroup;
    .end local v29    # "overrides":Z
    .end local v31    # "providerKey":Ljava/lang/String;
    :cond_1
    new-instance v17, Ldagger/internal/codegen/GraphAnalysisErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6}, Ldagger/internal/codegen/GraphAnalysisErrorHandler;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3    # "linker":Ldagger/internal/Linker;
    .restart local v11    # "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v13    # "baseBindings":Ldagger/internal/BindingsGroup;
    .restart local v17    # "errorHandler":Ldagger/internal/Linker$ErrorHandler;
    .restart local v25    # "library":Z
    .restart local v27    # "module":Ljavax/lang/model/element/TypeElement;
    .restart local v28    # "overrideBindings":Ldagger/internal/BindingsGroup;
    .restart local v29    # "overrides":Z
    :cond_2
    move-object v9, v13

    .line 191
    goto :goto_1

    .line 199
    .restart local v9    # "addTo":Ldagger/internal/BindingsGroup;
    .restart local v12    # "arr$":[Ljava/lang/Object;
    .restart local v19    # "i$":I
    .restart local v20    # "injectableType":Ljavax/lang/model/type/TypeMirror;
    .restart local v21    # "injectableTypeObject":Ljava/lang/Object;
    .restart local v22    # "injectsProvisionKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "len$":I
    .restart local v31    # "providerKey":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static/range {v20 .. v20}, Ldagger/internal/codegen/GeneratorKeys;->rawMembersKey(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 207
    .end local v20    # "injectableType":Ljavax/lang/model/type/TypeMirror;
    .end local v21    # "injectableTypeObject":Ljava/lang/Object;
    .end local v31    # "providerKey":Ljava/lang/String;
    :cond_4
    const-string v5, "staticInjections"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v12, v0

    array-length v0, v12

    move/from16 v24, v0

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    aget-object v35, v12, v19

    .line 208
    .local v35, "staticInjection":Ljava/lang/Object;
    move-object/from16 v0, v35

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    move-object/from16 v36, v0

    .line 209
    .local v36, "staticInjectionTypeMirror":Ljavax/lang/model/type/TypeMirror;
    move-object/from16 v0, p0

    iget-object v5, v0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v5}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v15

    .line 210
    .local v15, "element":Ljavax/lang/model/element/Element;
    new-instance v5, Ldagger/internal/codegen/GraphAnalysisStaticInjection;

    invoke-direct {v5, v15}, Ldagger/internal/codegen/GraphAnalysisStaticInjection;-><init>(Ljavax/lang/model/element/Element;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 214
    .end local v15    # "element":Ljavax/lang/model/element/Element;
    .end local v35    # "staticInjection":Ljava/lang/Object;
    .end local v36    # "staticInjectionTypeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_5
    invoke-interface/range {v27 .. v27}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavax/lang/model/element/Element;

    .line 215
    .local v16, "enclosed":Ljavax/lang/model/element/Element;
    const-class v5, Ldagger/Provides;

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v33

    check-cast v33, Ldagger/Provides;

    .line 216
    .local v33, "provides":Ldagger/Provides;
    if-eqz v33, :cond_6

    .line 219
    move-object/from16 v0, v16

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    move-object/from16 v32, v0

    .line 220
    .local v32, "providerMethod":Ljavax/lang/model/element/ExecutableElement;
    invoke-static/range {v32 .. v32}, Ldagger/internal/codegen/GeneratorKeys;->get(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .restart local v4    # "key":Ljava/lang/String;
    new-instance v14, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-direct {v14, v4, v0, v1}, Ldagger/internal/codegen/GraphAnalysisProcessor$ProviderMethodBinding;-><init>(Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;Z)V

    .line 223
    .local v14, "binding":Ldagger/internal/ProvidesBinding;, "Ldagger/internal/ProvidesBinding<*>;"
    invoke-virtual {v9, v4}, Ldagger/internal/BindingsGroup;->get(Ljava/lang/String;)Ldagger/internal/Binding;

    move-result-object v30

    .line 224
    .local v30, "previous":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-eqz v30, :cond_8

    .line 225
    invoke-interface/range {v33 .. v33}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v5

    sget-object v6, Ldagger/Provides$Type;->SET:Ldagger/Provides$Type;

    if-eq v5, v6, :cond_7

    invoke-interface/range {v33 .. v33}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v5

    sget-object v6, Ldagger/Provides$Type;->SET_VALUES:Ldagger/Provides$Type;

    if-ne v5, v6, :cond_9

    :cond_7
    move-object/from16 v0, v30

    instance-of v5, v0, Ldagger/internal/SetBinding;

    if-eqz v5, :cond_9

    .line 238
    :cond_8
    :goto_6
    sget-object v5, Ldagger/internal/codegen/GraphAnalysisProcessor$3;->$SwitchMap$dagger$Provides$Type:[I

    invoke-interface/range {v33 .. v33}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v6

    invoke-virtual {v6}, Ldagger/Provides$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 260
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown @Provides type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v33 .. v33}, Ldagger/Provides;->type()Ldagger/Provides$Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 274
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "addTo":Ldagger/internal/BindingsGroup;
    .end local v11    # "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "arr$":[Ljava/lang/Object;
    .end local v13    # "baseBindings":Ldagger/internal/BindingsGroup;
    .end local v14    # "binding":Ldagger/internal/ProvidesBinding;, "Ldagger/internal/ProvidesBinding<*>;"
    .end local v16    # "enclosed":Ljavax/lang/model/element/Element;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "injectsProvisionKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24    # "len$":I
    .end local v25    # "library":Z
    .end local v27    # "module":Ljavax/lang/model/element/TypeElement;
    .end local v28    # "overrideBindings":Ldagger/internal/BindingsGroup;
    .end local v29    # "overrides":Z
    .end local v30    # "previous":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v32    # "providerMethod":Ljavax/lang/model/element/ExecutableElement;
    .end local v33    # "provides":Ldagger/Provides;
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 229
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v9    # "addTo":Ldagger/internal/BindingsGroup;
    .restart local v11    # "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "arr$":[Ljava/lang/Object;
    .restart local v13    # "baseBindings":Ldagger/internal/BindingsGroup;
    .restart local v14    # "binding":Ldagger/internal/ProvidesBinding;, "Ldagger/internal/ProvidesBinding<*>;"
    .restart local v16    # "enclosed":Ljavax/lang/model/element/Element;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v22    # "injectsProvisionKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "len$":I
    .restart local v25    # "library":Z
    .restart local v27    # "module":Ljavax/lang/model/element/TypeElement;
    .restart local v28    # "overrideBindings":Ldagger/internal/BindingsGroup;
    .restart local v29    # "overrides":Z
    .restart local v30    # "previous":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .restart local v32    # "providerMethod":Ljavax/lang/model/element/ExecutableElement;
    .restart local v33    # "provides":Ldagger/Provides;
    :cond_9
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate bindings for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 230
    .local v26, "message":Ljava/lang/String;
    if-eqz v29, :cond_a

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in override module(s) - cannot override an override"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 233
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":\n    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v6, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v14, Ldagger/internal/ProvidesBinding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_6

    .line 240
    .end local v26    # "message":Ljava/lang/String;
    :pswitch_0
    iget-object v5, v14, Ldagger/internal/ProvidesBinding;->provideKey:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 241
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ldagger/internal/ProvidesBinding;->setDependedOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    :cond_b
    :try_start_3
    invoke-virtual {v9, v4, v14}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 245
    :catch_0
    move-exception v23

    .line 246
    .local v23, "ise":Ljava/lang/IllegalStateException;
    :try_start_4
    new-instance v5, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-direct {v5, v6, v0}, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw v5

    .line 251
    .end local v23    # "ise":Ljava/lang/IllegalStateException;
    :pswitch_1
    invoke-static/range {v32 .. v32}, Ldagger/internal/codegen/GeneratorKeys;->getSetKey(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v34

    .line 252
    .local v34, "setKey":Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-static {v9, v0, v14}, Ldagger/internal/SetBinding;->add(Ldagger/internal/BindingsGroup;Ljava/lang/String;Ldagger/internal/Binding;)V

    goto/16 :goto_5

    .line 256
    .end local v34    # "setKey":Ljava/lang/String;
    :pswitch_2
    invoke-static {v9, v4, v14}, Ldagger/internal/SetBinding;->add(Ldagger/internal/BindingsGroup;Ljava/lang/String;Ldagger/internal/Binding;)V

    goto/16 :goto_5

    .line 265
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "addTo":Ldagger/internal/BindingsGroup;
    .end local v11    # "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "arr$":[Ljava/lang/Object;
    .end local v14    # "binding":Ldagger/internal/ProvidesBinding;, "Ldagger/internal/ProvidesBinding<*>;"
    .end local v16    # "enclosed":Ljavax/lang/model/element/Element;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "injectsProvisionKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24    # "len$":I
    .end local v25    # "library":Z
    .end local v27    # "module":Ljavax/lang/model/element/TypeElement;
    .end local v29    # "overrides":Z
    .end local v30    # "previous":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v32    # "providerMethod":Ljavax/lang/model/element/ExecutableElement;
    .end local v33    # "provides":Ldagger/Provides;
    :cond_c
    invoke-virtual {v3, v13}, Ldagger/internal/Linker;->installBindings(Ldagger/internal/BindingsGroup;)V

    .line 266
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ldagger/internal/Linker;->installBindings(Ldagger/internal/BindingsGroup;)V

    .line 267
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ldagger/internal/codegen/GraphAnalysisStaticInjection;

    .line 268
    .local v35, "staticInjection":Ldagger/internal/codegen/GraphAnalysisStaticInjection;
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ldagger/internal/codegen/GraphAnalysisStaticInjection;->attach(Ldagger/internal/Linker;)V

    goto :goto_7

    .line 273
    .end local v35    # "staticInjection":Ldagger/internal/codegen/GraphAnalysisStaticInjection;
    :cond_d
    invoke-virtual {v3}, Ldagger/internal/Linker;->linkAll()Ljava/util/Map;

    move-result-object v5

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v5

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V
    .locals 18
    .param p1, "module"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/lang/model/element/TypeElement;>;"
    .local p3, "path":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/String;>;"
    const-class v14, Ldagger/Module;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Ldagger/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v3

    .line 284
    .local v3, "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v3, :cond_0

    .line 286
    new-instance v14, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No @Module on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-direct {v14, v15, v0}, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw v14

    .line 290
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 291
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 292
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "Module Inclusion Cycle: "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v10, "message":Ljava/lang/StringBuilder;
    invoke-interface/range {p3 .. p3}, Ljava/util/Deque;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 294
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " includes itself directly."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :goto_0
    new-instance v14, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-direct {v14, v15, v0}, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;-><init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    throw v14

    .line 296
    :cond_1
    const/4 v4, 0x0

    .line 297
    .local v4, "current":Ljava/lang/String;
    move-object v9, v11

    .line 298
    .local v9, "includer":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/Deque;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 299
    move-object v4, v9

    .line 300
    invoke-interface/range {p3 .. p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "includer":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 301
    .restart local v9    # "includer":Ljava/lang/String;
    const-string v14, "\n"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " included by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    :cond_2
    const-string v14, "\n0. "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    .end local v4    # "current":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "includer":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v14}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v13

    .line 312
    .local v13, "types":Ljavax/lang/model/util/Types;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v12, "seedModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v14, "includes"

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    const-string v14, "addsTo"

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const-class v15, Ljava/lang/Void;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "addsTo"

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 316
    .local v7, "include":Ljava/lang/Object;
    instance-of v14, v7, Ljavax/lang/model/type/TypeMirror;

    if-nez v14, :cond_5

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v14}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v14

    sget-object v15, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected value for include: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " in "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v14, v15, v0, v1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_2

    .line 322
    :cond_5
    check-cast v7, Ljavax/lang/model/type/TypeMirror;

    .end local v7    # "include":Ljava/lang/Object;
    invoke-interface {v13, v7}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeElement;

    .line 323
    .local v8, "includedModule":Ljavax/lang/model/element/TypeElement;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v8, v1, v2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->collectIncludesRecursively(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;Ljava/util/Deque;)V

    .line 325
    invoke-interface/range {p3 .. p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 327
    .end local v8    # "includedModule":Ljavax/lang/model/element/TypeElement;
    :cond_6
    return-void
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 13
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
    .line 86
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result v9

    if-nez v9, :cond_2

    .line 89
    const-class v9, Ldagger/Module;

    invoke-interface {p2, v9}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    .line 90
    .local v2, "e":Ljavax/lang/model/element/Element;
    instance-of v9, v2, Ljavax/lang/model/element/TypeElement;

    if-nez v9, :cond_0

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@Module applies to a type, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v2}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v9, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .end local v2    # "e":Ljavax/lang/model/element/Element;
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    const/4 v9, 0x0

    .line 156
    :goto_1
    return v9

    .line 99
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 100
    .local v7, "modules":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Element;>;"
    iget-object v9, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->delayedModuleNames:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 101
    .local v5, "moduleName":Ljava/lang/String;
    invoke-direct {p0}, Ldagger/internal/codegen/GraphAnalysisProcessor;->elements()Ljavax/lang/model/util/Elements;

    move-result-object v9

    invoke-interface {v9, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    .end local v5    # "moduleName":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 105
    .local v3, "element":Ljavax/lang/model/element/Element;
    const/4 v0, 0x0

    .line 107
    .local v0, "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-class v9, Ldagger/Module;

    invoke-static {v9, v3}, Ldagger/internal/codegen/Util;->getAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Ljava/util/Map;
    :try_end_0
    .catch Ldagger/internal/codegen/Util$CodeGenerationIncompleteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v3

    .line 112
    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 113
    .local v6, "moduleType":Ljavax/lang/model/element/TypeElement;
    if-nez v0, :cond_5

    .line 114
    const-string v9, "Missing @Module annotation."

    invoke-direct {p0, v9, v6}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_3

    .line 108
    .end local v6    # "moduleType":Ljavax/lang/model/element/TypeElement;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;
    goto :goto_3

    .line 117
    .end local v2    # "e":Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;
    .restart local v6    # "moduleType":Ljavax/lang/model/element/TypeElement;
    :cond_5
    const-string v9, "complete"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 120
    const/4 v9, 0x0

    :try_start_1
    invoke-direct {p0, v6, v9}, Ldagger/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;

    move-result-object v1

    .line 121
    .local v1, "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    new-instance v9, Ldagger/internal/ProblemDetector;

    invoke-direct {v9}, Ldagger/internal/ProblemDetector;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v9, v10}, Ldagger/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;)V
    :try_end_1
    .catch Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ldagger/internal/Binding$InvalidBindingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 137
    :try_start_2
    invoke-virtual {p0, v6, v1}, Ldagger/internal/codegen/GraphAnalysisProcessor;->writeDotFile(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 147
    .end local v1    # "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    :cond_6
    :goto_4
    const-string v9, "library"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 148
    const/4 v9, 0x1

    invoke-direct {p0, v6, v9}, Ldagger/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;

    move-result-object v1

    .line 150
    .restart local v1    # "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    :try_start_3
    new-instance v9, Ldagger/internal/ProblemDetector;

    invoke-direct {v9}, Ldagger/internal/ProblemDetector;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v9, v10}, Ldagger/internal/ProblemDetector;->detectUnusedBinding(Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 151
    :catch_1
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Graph validation failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto :goto_3

    .line 122
    .end local v1    # "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 123
    .local v2, "e":Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Graph validation failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;->source:Ljavax/lang/model/element/Element;

    invoke-direct {p0, v9, v10}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_3

    .line 125
    .end local v2    # "e":Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;
    :catch_3
    move-exception v2

    .line 126
    .local v2, "e":Ldagger/internal/Binding$InvalidBindingException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Graph validation failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ldagger/internal/Binding$InvalidBindingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Ldagger/internal/codegen/GraphAnalysisProcessor;->elements()Ljavax/lang/model/util/Elements;

    move-result-object v10

    iget-object v11, v2, Ldagger/internal/Binding$InvalidBindingException;->type:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_3

    .line 128
    .end local v2    # "e":Ldagger/internal/Binding$InvalidBindingException;
    :catch_4
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v9, Ldagger/internal/codegen/GraphAnalysisProcessor;->ERROR_NAMES_TO_PROPAGATE:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 130
    throw v2

    .line 132
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " thrown by javac in graph validation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Ldagger/internal/codegen/GraphAnalysisProcessor;->error(Ljava/lang/String;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_3

    .line 138
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    :catch_5
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 140
    .local v8, "sw":Ljava/io/StringWriter;
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v9}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 141
    iget-object v9, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v9}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v9

    sget-object v10, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Graph visualization failed. Please report this as a bug.\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11, v6}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_4

    .line 156
    .end local v0    # "annotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "element":Ljavax/lang/model/element/Element;
    .end local v6    # "moduleType":Ljavax/lang/model/element/TypeElement;
    .end local v8    # "sw":Ljava/io/StringWriter;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method writeDotFile(Ljavax/lang/model/element/TypeElement;Ljava/util/Map;)V
    .locals 9
    .param p1, "module"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    sget-object v2, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    .line 370
    .local v2, "location":Ljavax/tools/JavaFileManager$Location;
    invoke-static {p1}, Ldagger/internal/codegen/Util;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "file":Ljava/lang/String;
    iget-object v6, p0, Ldagger/internal/codegen/GraphAnalysisProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v6}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljavax/lang/model/element/Element;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v6, v2, v3, v1, v7}, Ljavax/annotation/processing/Filer;->createResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;

    move-result-object v4

    .line 374
    .local v4, "resource":Ljavax/tools/FileObject;
    invoke-interface {v4}, Ljavax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object v5

    .line 375
    .local v5, "writer":Ljava/io/Writer;
    new-instance v0, Ldagger/internal/codegen/GraphVizWriter;

    invoke-direct {v0, v5}, Ldagger/internal/codegen/GraphVizWriter;-><init>(Ljava/io/Writer;)V

    .line 376
    .local v0, "dotWriter":Ldagger/internal/codegen/GraphVizWriter;
    new-instance v6, Ldagger/internal/codegen/GraphVisualizer;

    invoke-direct {v6}, Ldagger/internal/codegen/GraphVisualizer;-><init>()V

    invoke-virtual {v6, p2, v0}, Ldagger/internal/codegen/GraphVisualizer;->write(Ljava/util/Map;Ldagger/internal/codegen/GraphVizWriter;)V

    .line 377
    invoke-virtual {v0}, Ldagger/internal/codegen/GraphVizWriter;->close()V

    .line 378
    return-void
.end method
