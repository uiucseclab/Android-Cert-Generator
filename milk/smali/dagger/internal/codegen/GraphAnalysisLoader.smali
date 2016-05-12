.class public final Ldagger/internal/codegen/GraphAnalysisLoader;
.super Ldagger/internal/Loader;
.source "GraphAnalysisLoader.java"


# instance fields
.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0
    .param p1, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .prologue
    .line 36
    invoke-direct {p0}, Ldagger/internal/Loader;-><init>()V

    .line 37
    iput-object p1, p0, Ldagger/internal/codegen/GraphAnalysisLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 38
    return-void
.end method


# virtual methods
.method public getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mustHaveInjections"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    const/16 v3, 0x24

    const/16 v4, 0x2e

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "sourceClassName":Ljava/lang/String;
    iget-object v3, p0, Ldagger/internal/codegen/GraphAnalysisLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v3

    invoke-interface {v3, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 44
    .local v1, "type":Ljavax/lang/model/element/TypeElement;
    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v2

    .line 51
    :cond_1
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-eq v3, v4, :cond_0

    .line 54
    invoke-static {v1, p4}, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->create(Ljavax/lang/model/element/TypeElement;Z)Ldagger/internal/codegen/GraphAnalysisInjectBinding;

    move-result-object v2

    goto :goto_0
.end method

.method public getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ldagger/internal/ModuleAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getStaticInjection(Ljava/lang/Class;)Ldagger/internal/StaticInjection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ldagger/internal/StaticInjection;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "injectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
