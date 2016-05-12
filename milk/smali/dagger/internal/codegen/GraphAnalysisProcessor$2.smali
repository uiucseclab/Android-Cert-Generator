.class Ldagger/internal/codegen/GraphAnalysisProcessor$2;
.super Ldagger/internal/BindingsGroup;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/codegen/GraphAnalysisProcessor;->processCompleteModule(Ljavax/lang/model/element/TypeElement;Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldagger/internal/codegen/GraphAnalysisProcessor;


# direct methods
.method constructor <init>(Ldagger/internal/codegen/GraphAnalysisProcessor;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$2;->this$0:Ldagger/internal/codegen/GraphAnalysisProcessor;

    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public contributeSetBinding(Ljava/lang/String;Ldagger/internal/SetBinding;)Ldagger/internal/Binding;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldagger/internal/SetBinding",
            "<*>;)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "value":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module overrides cannot contribute set bindings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
