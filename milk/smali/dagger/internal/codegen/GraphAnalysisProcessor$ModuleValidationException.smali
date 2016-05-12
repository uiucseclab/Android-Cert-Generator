.class Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;
.super Ljava/lang/IllegalStateException;
.source "GraphAnalysisProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/codegen/GraphAnalysisProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModuleValidationException"
.end annotation


# instance fields
.field final source:Ljavax/lang/model/element/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 384
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 385
    iput-object p2, p0, Ldagger/internal/codegen/GraphAnalysisProcessor$ModuleValidationException;->source:Ljavax/lang/model/element/Element;

    .line 386
    return-void
.end method
