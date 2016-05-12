.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOAD_FACTOR:D = 1.2

.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient table:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 9
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p2, "theEntries":[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<**>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 56
    const-wide v7, 0x3ff3333333333333L    # 1.2

    invoke-static {p1, v7, v8}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v6

    .line 57
    .local v6, "tableSize":I
    invoke-static {v6}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 58
    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    .line 59
    const/4 v1, 0x0

    .local v1, "entryIndex":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 61
    aget-object v0, p2, v1

    .line 62
    .local v0, "entry":Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<TK;TV;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 63
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v7

    iget v8, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int v5, v7, v8

    .line 64
    .local v5, "tableIndex":I
    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v2, v7, v5

    .line 66
    .local v2, "existing":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    if-nez v2, :cond_0

    move-object v4, v0

    .line 69
    .local v4, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_1
    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aput-object v4, v7, v5

    .line 70
    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aput-object v4, v7, v1

    .line 71
    invoke-static {v3, v4, v2}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_0
    new-instance v4, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;

    invoke-direct {v4, v0, v2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_1

    .line 73
    .end local v0    # "entry":Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<TK;TV;>;"
    .end local v2    # "existing":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "tableIndex":I
    :cond_1
    return-void
.end method

.method varargs constructor <init>([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, "theEntries":[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<**>;"
    array-length v0, p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/RegularImmutableMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    .line 46
    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, "theEntries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<**>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 79
    array-length v5, p1

    .line 80
    .local v5, "size":I
    invoke-static {v5}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 81
    const-wide v9, 0x3ff3333333333333L    # 1.2

    invoke-static {v5, v9, v10}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v7

    .line 82
    .local v7, "tableSize":I
    invoke-static {v7}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 83
    add-int/lit8 v9, v7, -0x1

    iput v9, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    .line 84
    const/4 v1, 0x0

    .local v1, "entryIndex":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 86
    aget-object v0, p1, v1

    .line 87
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 88
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 89
    .local v8, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v3, v8}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v9

    iget v10, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int v6, v9, v10

    .line 91
    .local v6, "tableIndex":I
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v2, v9, v6

    .line 93
    .local v2, "existing":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    if-nez v2, :cond_0

    new-instance v4, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v4, v3, v8}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .local v4, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_1
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    aput-object v4, v9, v6

    .line 97
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aput-object v4, v9, v1

    .line 98
    invoke-static {v3, v4, v2}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v4    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_0
    new-instance v4, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;

    invoke-direct {v4, v3, v8, v2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_1

    .line 100
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "existing":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "tableIndex":I
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    return-void
.end method

.method static checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .param p2    # Lcom/google/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .local p2, "keyBucketHead":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<**>;"
    :goto_0
    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v1, "key"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 104
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p2

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 107
    :cond_1
    return-void
.end method

.method static get(Ljava/lang/Object;[Lcom/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;
    .locals 5
    .param p0, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<*TV;>;I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p1, "keyTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<*TV;>;"
    const/4 v3, 0x0

    .line 148
    if-nez p0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v3

    .line 151
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v4

    and-int v2, v4, p2

    .line 152
    .local v2, "index":I
    aget-object v1, p1, v2

    .line 153
    .local v1, "entry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<*TV;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "candidateKey":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ImmutableMapEntry;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Lcom/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v0, v0

    return v0
.end method
