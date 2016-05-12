.class public abstract Lcom/google/common/collect/ImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;,
        Lcom/google/common/collect/ImmutableSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMapFauxverideShim",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMap:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 70
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedMap;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 437
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "descendingMap":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap:Lcom/google/common/collect/ImmutableSortedMap;

    .line 441
    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .param p0, "x0"    # Ljava/util/Comparator;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .param p0, "x0"    # Ljava/util/Comparator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [Ljava/util/Map$Entry;
    .param p3, "x3"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 189
    .local v0, "naturalOrder":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TK;>;"
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v2, 0x0

    .line 243
    .local v2, "sameComparator":Z
    instance-of v4, p0, Ljava/util/SortedMap;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 244
    check-cast v3, Ljava/util/SortedMap;

    .line 245
    .local v3, "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    invoke-interface {v3}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 246
    .local v0, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    if-nez v0, :cond_2

    sget-object v4, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    .line 251
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .end local v3    # "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    instance-of v4, p0, Lcom/google/common/collect/ImmutableSortedMap;

    if-eqz v4, :cond_3

    move-object v1, p0

    .line 255
    check-cast v1, Lcom/google/common/collect/ImmutableSortedMap;

    .line 256
    .local v1, "kvMap":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v4

    if-nez v4, :cond_3

    .line 260
    .end local v1    # "kvMap":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :goto_1
    return-object v1

    .line 246
    .restart local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .restart local v3    # "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 260
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .end local v3    # "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    goto :goto_1
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 223
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 228
    :cond_0
    instance-of v2, p0, Lcom/google/common/collect/ImmutableSortedMap;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 232
    check-cast v1, Lcom/google/common/collect/ImmutableSortedMap;

    .line 233
    .local v1, "kvMap":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    .end local v1    # "kvMap":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v2, 0x1

    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    goto :goto_0
.end method

.method static emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private static fromEntries(Ljava/util/Comparator;ZLjava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p1, "sameComparator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;Z",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    move-object v0, v1

    check-cast v0, [Ljava/util/Map$Entry;

    .line 275
    .local v0, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v1, v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method private static fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 12
    .param p1, "sameComparator"    # Z
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;Z[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;I)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    packed-switch p3, :pswitch_data_0

    .line 287
    new-array v3, p3, [Ljava/lang/Object;

    .line 288
    .local v3, "keys":[Ljava/lang/Object;
    new-array v7, p3, [Ljava/lang/Object;

    .line 289
    .local v7, "values":[Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 292
    aget-object v8, p2, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 293
    .local v1, "key":Ljava/lang/Object;
    aget-object v8, p2, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 294
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v1, v5}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    aput-object v1, v3, v0

    .line 296
    aput-object v5, v7, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v7    # "values":[Ljava/lang/Object;
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v8

    .line 316
    :goto_1
    return-object v8

    .line 284
    :pswitch_1
    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v8

    goto :goto_1

    .line 300
    .restart local v3    # "keys":[Ljava/lang/Object;
    .restart local v7    # "values":[Ljava/lang/Object;
    :cond_0
    const/4 v8, 0x0

    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v9

    invoke-static {p2, v8, p3, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 302
    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 303
    .local v4, "prevKey":Ljava/lang/Object;, "TK;"
    const/4 v8, 0x0

    aput-object v4, v3, v8

    .line 304
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    .line 305
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p3, :cond_2

    .line 306
    aget-object v8, p2, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 307
    .local v2, "key":Ljava/lang/Object;, "TK;"
    aget-object v8, p2, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 308
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v2, v6}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    aput-object v2, v3, v0

    .line 310
    aput-object v6, v7, v0

    .line 311
    invoke-interface {p0, v4, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_3
    const-string v9, "key"

    add-int/lit8 v10, v0, -0x1

    aget-object v10, p2, v10

    aget-object v11, p2, v0

    invoke-static {v8, v9, v10, v11}, Lcom/google/common/collect/ImmutableSortedMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 313
    move-object v4, v2

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 311
    :cond_1
    const/4 v8, 0x0

    goto :goto_3

    .line 316
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "prevKey":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    new-instance v8, Lcom/google/common/collect/RegularImmutableSortedMap;

    new-instance v9, Lcom/google/common/collect/RegularImmutableSortedSet;

    new-instance v10, Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v10, v3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    invoke-direct {v9, v10, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    new-instance v10, Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v10, v7}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    invoke-direct {v8, v9, v10}, Lcom/google/common/collect/RegularImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_1

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static naturalOrder()Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->ofEntries([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->ofEntries([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Comparable;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p6, p7}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->ofEntries([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Comparable;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Comparable;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p6, p7}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p8, p9}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->ofEntries([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "k1":Ljava/lang/Object;, "TK;"
    .local p2, "v1":Ljava/lang/Object;, "TV;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedMap;

    new-instance v2, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v2, v3, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/RegularImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method private static varargs ofEntries([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "entries":[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v1, p0, v2}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 449
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createDescendingMap()Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public descendingKeySet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->descendingKeySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap:Lcom/google/common/collect/ImmutableSortedMap;

    .line 679
    .local v0, "result":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->createDescendingMap()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .end local v0    # "result":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap:Lcom/google/common/collect/ImmutableSortedMap;

    .line 682
    .restart local v0    # "result":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
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
    .line 461
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 453
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->navigableKeySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 445
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 5
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expected fromKey <= toKey but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 566
    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 564
    goto :goto_0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract values()Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 718
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
