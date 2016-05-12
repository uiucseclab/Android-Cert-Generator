.class public final Lcom/squareup/okhttp/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Headers$1;,
        Lcom/squareup/okhttp/Headers$Builder;
    }
.end annotation


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Headers$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/squareup/okhttp/Headers$Builder;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    # getter for: Lcom/squareup/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/squareup/okhttp/Headers$Builder;->access$000(Lcom/squareup/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/squareup/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/squareup/okhttp/Headers$Builder;->access$000(Lcom/squareup/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Headers$Builder;Lcom/squareup/okhttp/Headers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/Headers$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/Headers$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Headers;-><init>(Lcom/squareup/okhttp/Headers$Builder;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "namesAndValues"    # [Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "namesAndValues"    # [Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    array-length v1, p0

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 135
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    .line 139
    :goto_1
    return-object v1

    .line 134
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 139
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;
    .locals 6
    .param p0, "namesAndValues"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 148
    if-eqz p0, :cond_0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expected alternating header names and values"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_1
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "namesAndValues":[Ljava/lang/String;
    check-cast p0, [Ljava/lang/String;

    .line 154
    .restart local p0    # "namesAndValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 155
    aget-object v3, p0, v0

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Headers cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_2
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_6

    .line 161
    aget-object v1, p0, v0

    .line 162
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p0, v3

    .line 163
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 164
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 168
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    new-instance v3, Lcom/squareup/okhttp/Headers;

    invoke-direct {v3, p0}, Lcom/squareup/okhttp/Headers;-><init>([Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 80
    mul-int/lit8 v0, p1, 0x2

    .line 81
    .local v0, "nameIndex":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public names()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 99
    .local v1, "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public newBuilder()Lcom/squareup/okhttp/Headers$Builder;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 121
    .local v0, "result":Lcom/squareup/okhttp/Headers$Builder;
    # getter for: Lcom/squareup/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {v0}, Lcom/squareup/okhttp/Headers$Builder;->access$000(Lcom/squareup/okhttp/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public value(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 89
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 90
    .local v0, "valueIndex":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 109
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method
