.class final Ldagger/internal/codegen/Util$2;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/codegen/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor6",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$2;->defaultAction(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected defaultAction(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 174
    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$2;->visitArray(Ljava/util/List;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray(Ljava/util/List;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4
    .param p2, "v"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 178
    .local v1, "result":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 179
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationValue;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-object v1
.end method

.method public bridge synthetic visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$2;->visitString(Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitString(Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/Void;

    .prologue
    .line 163
    const-string v0, "<error>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;

    const-string v1, "Unknown type returned as <error>."

    invoke-direct {v0, v1}, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    const-string v0, "<any>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;

    const-string v1, "Unknown type returned as <any>."

    invoke-direct {v0, v1}, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    return-object p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$2;->visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .param p1, "t"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "p"    # Ljava/lang/Void;

    .prologue
    .line 171
    return-object p1
.end method
