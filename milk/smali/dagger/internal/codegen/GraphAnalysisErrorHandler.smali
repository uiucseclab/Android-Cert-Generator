.class final Ldagger/internal/codegen/GraphAnalysisErrorHandler;
.super Ljava/lang/Object;
.source "GraphAnalysisErrorHandler.java"

# interfaces
.implements Ldagger/internal/Linker$ErrorHandler;


# instance fields
.field private final moduleName:Ljava/lang/String;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;)V
    .locals 0
    .param p1, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ldagger/internal/codegen/GraphAnalysisErrorHandler;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 34
    iput-object p2, p0, Ldagger/internal/codegen/GraphAnalysisErrorHandler;->moduleName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public handleErrors(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Ldagger/internal/codegen/GraphAnalysisErrorHandler;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v3

    iget-object v4, p0, Ldagger/internal/codegen/GraphAnalysisErrorHandler;->moduleName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 39
    .local v2, "module":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Ldagger/internal/codegen/GraphAnalysisErrorHandler;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v3

    sget-object v4, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ldagger/internal/codegen/GraphAnalysisErrorHandler;->moduleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 43
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method
