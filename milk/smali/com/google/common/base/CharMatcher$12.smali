.class final Lcom/google/common/base/CharMatcher$12;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->isNot(C)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 480
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$12;->val$match:C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 486
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    .end local p1    # "other":Lcom/google/common/base/CharMatcher;
    :cond_0
    return-object p1
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 482
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 501
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher$12;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 490
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/base/CharMatcher$12;->ANY:Lcom/google/common/base/CharMatcher;

    .end local p0    # "this":Lcom/google/common/base/CharMatcher$12;
    :cond_0
    return-object p0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 496
    const/4 v0, 0x0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$12;->val$match:C

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 497
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 498
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.isNot(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$12;->val$match:C

    # invokes: Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->access$000(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
