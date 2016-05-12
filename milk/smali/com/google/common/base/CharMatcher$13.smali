.class final Lcom/google/common/base/CharMatcher$13;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chars:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$13;->val$chars:[C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 528
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$13;->val$chars:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 4
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$13;->val$chars:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 537
    .local v1, "c":C
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "c":C
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "CharMatcher.anyOf(\""

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .local v2, "description":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$13;->val$chars:[C

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 544
    .local v1, "c":C
    # invokes: Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->access$000(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    .end local v1    # "c":C
    :cond_0
    const-string v5, "\")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
