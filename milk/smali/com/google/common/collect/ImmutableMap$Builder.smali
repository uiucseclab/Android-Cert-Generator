.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 183
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 186
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-array v0, p1, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    .line 189
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "minCapacity"    # I

    .prologue
    .line 192
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    const/4 v2, 0x0

    .line 246
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 204
    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v0

    .line 206
    .local v0, "entry":Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    aput-object v0, v1, v2

    .line 207
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 229
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 232
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-object p0
.end method
