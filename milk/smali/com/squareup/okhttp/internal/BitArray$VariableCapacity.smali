.class public final Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/BitArray;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/BitArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VariableCapacity"
.end annotation


# instance fields
.field data:[J

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;)V
    .locals 4
    .param p1, "small"    # Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->data:J

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;Lcom/squareup/okhttp/internal/BitArray$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/BitArray$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;-><init>(Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;)V

    return-void
.end method

.method private static checkInput(I)I
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 171
    if-gez p0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input must be a positive number: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return p0
.end method

.method private growToSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 95
    new-array v0, p1, [J

    .line 96
    .local v0, "newData":[J
    iget-object v1, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    iget-object v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :cond_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    .line 100
    return-void
.end method

.method private offsetOf(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 103
    iget v1, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    add-int/2addr p1, v1

    .line 104
    div-int/lit8 v0, p1, 0x40

    .line 105
    .local v0, "offset":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 106
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->growToSize(I)V

    .line 108
    :cond_0
    return v0
.end method

.method private shiftOf(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 112
    iget v0, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x40

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 117
    return-void
.end method

.method public get(I)Z
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 132
    invoke-static {p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->checkInput(I)I

    .line 133
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->offsetOf(I)I

    move-result v0

    .line 134
    .local v0, "offset":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x1

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->shiftOf(I)I

    move-result v5

    shl-long/2addr v3, v5

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 120
    invoke-static {p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->checkInput(I)I

    .line 121
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->offsetOf(I)I

    move-result v0

    .line 122
    .local v0, "offset":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->shiftOf(I)I

    move-result v6

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 123
    return-void
.end method

.method public shiftLeft(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 138
    iget v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    invoke-static {p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->checkInput(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    .line 139
    iget v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    if-gez v2, :cond_0

    .line 140
    iget v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    div-int/lit8 v2, v2, -0x40

    add-int/lit8 v0, v2, 0x1

    .line 141
    .local v0, "arrayShift":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    array-length v2, v2

    add-int/2addr v2, v0

    new-array v1, v2, [J

    .line 142
    .local v1, "newData":[J
    iget-object v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    array-length v4, v4

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iput-object v1, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    .line 144
    iget v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    rem-int/lit8 v2, v2, 0x40

    add-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    .line 146
    .end local v0    # "arrayShift":I
    .end local v1    # "newData":[J
    :cond_0
    return-void
.end method

.method toIntegerList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, "ints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x40

    iget v4, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->start:I

    sub-int v0, v3, v4

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 163
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->toIntegerList()Ljava/util/List;

    move-result-object v3

    .line 151
    .local v3, "ints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 152
    if-lez v2, :cond_0

    .line 153
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toggle(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 126
    invoke-static {p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->checkInput(I)I

    .line 127
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->offsetOf(I)I

    move-result v0

    .line 128
    .local v0, "offset":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->data:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/BitArray$VariableCapacity;->shiftOf(I)I

    move-result v6

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 129
    return-void
.end method
