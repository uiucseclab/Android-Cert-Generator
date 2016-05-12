.class final Ldagger/internal/codegen/Util$1;
.super Ljavax/lang/model/util/SimpleTypeVisitor6;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor6",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$innerClassSeparator:C

.field final synthetic val$result:Ljava/lang/StringBuilder;

.field final synthetic val$type:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;CLjavax/lang/model/type/TypeMirror;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iput-char p2, p0, Ldagger/internal/codegen/Util$1;->val$innerClassSeparator:C

    iput-object p3, p0, Ldagger/internal/codegen/Util$1;->val$type:Ljavax/lang/model/type/TypeMirror;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TypeKind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/lang/model/type/ArrayType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arrayType"    # Ljavax/lang/model/type/ArrayType;
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 126
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 127
    .local v0, "type":Ljavax/lang/model/type/TypeMirror;
    instance-of v1, v0, Ljavax/lang/model/type/PrimitiveType;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :goto_0
    iget-object v1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v1, 0x0

    return-object v1

    .line 130
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    iget-object v2, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iget-char v3, p0, Ldagger/internal/codegen/Util$1;->val$innerClassSeparator:C

    invoke-static {v1, v2, v3}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    goto :goto_0
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/lang/model/type/DeclaredType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "declaredType"    # Ljavax/lang/model/type/DeclaredType;
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 106
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 107
    .local v2, "typeElement":Ljavax/lang/model/element/TypeElement;
    iget-object v3, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iget-char v4, p0, Ldagger/internal/codegen/Util$1;->val$innerClassSeparator:C

    invoke-static {v3, v2, v4}, Ldagger/internal/codegen/Util;->rawTypeToString(Ljava/lang/StringBuilder;Ljavax/lang/model/element/TypeElement;C)V

    .line 108
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "typeArguments":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    iget-object v3, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v3, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    iget-object v4, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iget-char v5, p0, Ldagger/internal/codegen/Util$1;->val$innerClassSeparator:C

    invoke-static {v3, v4, v5}, Ldagger/internal/codegen/Util;->typeToString(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;C)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v3, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .end local v0    # "i":I
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/lang/model/type/ErrorType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "errorType"    # Ljavax/lang/model/type/ErrorType;
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 145
    const-string v0, "<any>"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;

    const-string v1, "Type reported as <any> is likely a not-yet generated parameterized type."

    invoke-direct {v0, v1}, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/lang/model/type/PrimitiveType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "primitiveType"    # Ljavax/lang/model/type/PrimitiveType;
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 122
    iget-object v1, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldagger/internal/codegen/Util$1;->val$type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/PrimitiveType;

    # invokes: Ldagger/internal/codegen/Util;->box(Ljavax/lang/model/type/PrimitiveType;)Ljava/lang/Class;
    invoke-static {v0}, Ldagger/internal/codegen/Util;->access$000(Ljavax/lang/model/type/PrimitiveType;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$1;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "typeVariable"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 136
    iget-object v0, p0, Ldagger/internal/codegen/Util$1;->val$result:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method
