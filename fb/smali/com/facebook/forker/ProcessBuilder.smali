.class public final Lcom/facebook/forker/ProcessBuilder;
.super Ljava/lang/Object;
.source "timeout"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String; = "fb-ProcessBuilder"


# instance fields
.field private mArgv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvironCache:[B

.field private mEnvironKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvironValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutable:Ljava/lang/String;

.field private mKeepFds:Ljava/util/BitSet;

.field private mStreamDispositions:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mStreamDispositions:[I

    .line 65
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 66
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 67
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 68
    const-string v0, "ANDROID_PROPERTY_WORKSPACE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 71
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 72
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "fb-ProcessBuilder"

    const-string v2, "cannot parse property workspace FD"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 21
    nop

    :array_0
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/facebook/forker/ProcessBuilder;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/facebook/forker/ProcessBuilder;->mExecutable:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method private static buildEnvironBlock(Ljava/util/ArrayList;Ljava/util/ArrayList;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 232
    :goto_0
    if-ge v2, v4, :cond_0

    .line 233
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    .line 232
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 237
    :cond_0
    :try_start_0
    new-instance v2, Lcom/facebook/forker/UnsafeByteArrayOutputStream;

    invoke-direct {v2, v3}, Lcom/facebook/forker/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 238
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 239
    :goto_1
    if-ge v1, v4, :cond_1

    .line 240
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 241
    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 242
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 239
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 246
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 247
    invoke-virtual {v2}, Lcom/facebook/forker/UnsafeByteArrayOutputStream;->getRawBuffer()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static getArrayOfSetBits(Ljava/util/BitSet;)[I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    new-array v3, v1, [I

    .line 262
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    :goto_0
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 263
    add-int/lit8 v1, v0, 0x1

    aput v2, v3, v0

    .line 262
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 265
    :cond_0
    return-object v3
.end method

.method private makeEnvironBlock()[B
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironValues:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/facebook/forker/ProcessBuilder;->buildEnvironBlock(Ljava/util/ArrayList;Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    return-object v0
.end method


# virtual methods
.method public final addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-object p0
.end method

.method public final addArguments(Ljava/lang/Iterable;)Lcom/facebook/forker/ProcessBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/forker/ProcessBuilder;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {p0, v0}, Lcom/facebook/forker/ProcessBuilder;->addArgument(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    goto :goto_0

    .line 125
    :cond_0
    return-object p0
.end method

.method public final varargs addArguments([Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-object p0
.end method

.method public final clearenv()Lcom/facebook/forker/ProcessBuilder;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironValues:Ljava/util/ArrayList;

    .line 143
    :goto_0
    return-object p0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    goto :goto_0
.end method

.method public final clone()Lcom/facebook/forker/ProcessBuilder;
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/forker/ProcessBuilder;->makeEnvironBlock()[B

    .line 44
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/forker/ProcessBuilder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    .line 49
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, v0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    .line 50
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mStreamDispositions:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/facebook/forker/ProcessBuilder;->mStreamDispositions:[I

    .line 51
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    .line 53
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/facebook/forker/ProcessBuilder;->mEnvironValues:Ljava/util/ArrayList;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    .line 58
    :cond_1
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/facebook/forker/ProcessBuilder;->clone()Lcom/facebook/forker/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final create()Lcom/facebook/forker/Process;
    .locals 6

    .prologue
    .line 276
    new-instance v0, Lcom/facebook/forker/Process;

    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mExecutable:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/forker/ProcessBuilder;->mArgv:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/forker/ProcessBuilder;->makeEnvironBlock()[B

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    invoke-static {v4}, Lcom/facebook/forker/ProcessBuilder;->getArrayOfSetBits(Ljava/util/BitSet;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/forker/ProcessBuilder;->mStreamDispositions:[I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/forker/Process;-><init>(Ljava/lang/String;[Ljava/lang/String;[B[I[I)V

    return-object v0
.end method

.method public final freezeEnviron()V
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    iput-object v2, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    .line 161
    iput-object v3, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironValues:Ljava/util/ArrayList;

    .line 163
    :cond_1
    return-void
.end method

.method public final setExecutable(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/forker/ProcessBuilder;->mExecutable:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public final setFdCloseOnExec(IZ)Lcom/facebook/forker/ProcessBuilder;
    .locals 1

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 217
    :goto_0
    return-object p0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mKeepFds:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public final setStream(II)Lcom/facebook/forker/ProcessBuilder;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mStreamDispositions:[I

    aput p2, v0, p1

    .line 222
    return-object p0
.end method

.method public final setenv(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "environment variables cannot contain NUL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "environment variable names cannot contain \'=\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/forker/ProcessBuilder;->unsetenv(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;

    .line 178
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    .line 181
    return-object p0
.end method

.method public final unsetenv(Ljava/lang/String;)Lcom/facebook/forker/ProcessBuilder;
    .locals 5

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/facebook/forker/ProcessBuilder;->freezeEnviron()V

    .line 189
    iget-object v1, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironKeys:Ljava/util/ArrayList;

    .line 190
    iget-object v2, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironValues:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 192
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/forker/ProcessBuilder;->mEnvironCache:[B

    .line 195
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    :cond_0
    return-object p0

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
