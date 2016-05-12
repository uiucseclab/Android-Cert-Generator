.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$1;,
        Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;,
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse;,
        Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final MAX_LOAD_FACTOR:D = 1.2


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

.field private final transient hashCode:I

.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient keyTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lcom/google/common/collect/ImmutableMapEntry;
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
    .locals 21
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p2, "entriesToAdd":[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<**>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 58
    const-wide v19, 0x3ff3333333333333L    # 1.2

    move/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v14

    .line 59
    .local v14, "tableSize":I
    add-int/lit8 v19, v14, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 60
    invoke-static {v14}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    .line 61
    .local v10, "keyTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v14}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v18

    .line 62
    .local v18, "valueTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v3

    .line 63
    .local v3, "entries":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    const/4 v5, 0x0

    .line 65
    .local v5, "hashCode":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v6, v0, :cond_1

    .line 67
    aget-object v4, p2, v6

    .line 68
    .local v4, "entry":Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<TK;TV;>;"
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 69
    .local v7, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 71
    .local v15, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 72
    .local v9, "keyHash":I
    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v17

    .line 73
    .local v17, "valueHash":I
    invoke-static {v9}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v20, v0

    and-int v8, v19, v20

    .line 74
    .local v8, "keyBucket":I
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v20, v0

    and-int v16, v19, v20

    .line 76
    .local v16, "valueBucket":I
    aget-object v12, v10, v8

    .line 77
    .local v12, "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v7, v4, v12}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 78
    aget-object v13, v18, v16

    .line 79
    .local v13, "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v15, v4, v13}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 80
    if-nez v12, :cond_0

    if-nez v13, :cond_0

    move-object v11, v4

    .line 84
    .local v11, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_1
    aput-object v11, v10, v8

    .line 85
    aput-object v11, v18, v16

    .line 86
    aput-object v11, v3, v6

    .line 87
    xor-int v19, v9, v17

    add-int v5, v5, v19

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    .end local v11    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_0
    new-instance v11, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v11, v4, v12, v13}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_1

    .line 90
    .end local v4    # "entry":Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<TK;TV;>;"
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "keyBucket":I
    .end local v9    # "keyHash":I
    .end local v12    # "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v13    # "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v15    # "value":Ljava/lang/Object;, "TV;"
    .end local v16    # "valueBucket":I
    .end local v17    # "valueHash":I
    :cond_1
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 91
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 92
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 93
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 94
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
    .line 48
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, "entriesToAdd":[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;, "[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<**>;"
    array-length v0, p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    .line 49
    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, "entriesToAdd":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<**>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 100
    move-object/from16 v0, p1

    array-length v10, v0

    .line 101
    .local v10, "n":I
    const-wide v19, 0x3ff3333333333333L    # 1.2

    move-wide/from16 v0, v19

    invoke-static {v10, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v14

    .line 102
    .local v14, "tableSize":I
    add-int/lit8 v19, v14, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 103
    invoke-static {v14}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v9

    .line 104
    .local v9, "keyTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v14}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v18

    .line 105
    .local v18, "valueTable":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v10}, Lcom/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    .line 106
    .local v2, "entries":[Lcom/google/common/collect/ImmutableMapEntry;, "[Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    const/4 v4, 0x0

    .line 108
    .local v4, "hashCode":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v10, :cond_1

    .line 110
    aget-object v3, p1, v5

    .line 111
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 112
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 113
    .local v15, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v6, v15}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 115
    .local v8, "keyHash":I
    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v17

    .line 116
    .local v17, "valueHash":I
    invoke-static {v8}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v20, v0

    and-int v7, v19, v20

    .line 117
    .local v7, "keyBucket":I
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v20, v0

    and-int v16, v19, v20

    .line 119
    .local v16, "valueBucket":I
    aget-object v12, v9, v7

    .line 120
    .local v12, "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v6, v3, v12}, Lcom/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 121
    aget-object v13, v18, v16

    .line 122
    .local v13, "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-static {v15, v3, v13}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 123
    if-nez v12, :cond_0

    if-nez v13, :cond_0

    new-instance v11, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v11, v6, v15}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .local v11, "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :goto_1
    aput-object v11, v9, v7

    .line 128
    aput-object v11, v18, v16

    .line 129
    aput-object v11, v2, v5

    .line 130
    xor-int v19, v8, v17

    add-int v4, v4, v19

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .end local v11    # "newEntry":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    :cond_0
    new-instance v11, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v11, v6, v15, v12, v13}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_1

    .line 133
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "keyBucket":I
    .end local v8    # "keyHash":I
    .end local v12    # "nextInKeyBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v13    # "nextInValueBucket":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .end local v15    # "value":Ljava/lang/Object;, "TV;"
    .end local v16    # "valueBucket":I
    .end local v17    # "valueHash":I
    :cond_1
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 134
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 135
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 136
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method private static checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
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
    .line 143
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .local p2, "valueBucketHead":Lcom/google/common/collect/ImmutableMapEntry;, "Lcom/google/common/collect/ImmutableMapEntry<**>;"
    :goto_0
    if-eqz p2, :cond_1

    .line 144
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v1, "value"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 143
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p2

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 146
    :cond_1
    return-void
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
    .line 188
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Lcom/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 216
    .local v0, "result":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    .end local v0    # "result":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v0, v0

    return v0
.end method
