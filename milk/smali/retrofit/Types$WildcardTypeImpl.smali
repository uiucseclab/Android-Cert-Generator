.class final Lretrofit/Types$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 3
    .param p1, "upperBounds"    # [Ljava/lang/reflect/Type;
    .param p2, "lowerBounds"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    array-length v0, p2

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 375
    :cond_0
    array-length v0, p1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 377
    :cond_1
    array-length v0, p2

    if-ne v0, v1, :cond_4

    .line 378
    aget-object v0, p2, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 379
    :cond_2
    aget-object v0, p2, v2

    # invokes: Lretrofit/Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V
    invoke-static {v0}, Lretrofit/Types;->access$000(Ljava/lang/reflect/Type;)V

    .line 380
    aget-object v0, p1, v2

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 381
    :cond_3
    aget-object v0, p2, v2

    iput-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 382
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_4
    aget-object v0, p1, v2

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 385
    :cond_5
    aget-object v0, p1, v2

    # invokes: Lretrofit/Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V
    invoke-static {v0}, Lretrofit/Types;->access$000(Ljava/lang/reflect/Type;)V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 387
    aget-object v0, p1, v2

    iput-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 400
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p0, p1}, Lretrofit/Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lretrofit/Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    # getter for: Lretrofit/Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;
    invoke-static {}, Lretrofit/Types;->access$200()[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 392
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lretrofit/Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :goto_0
    iget-object v1, p0, Lretrofit/Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lretrofit/Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lretrofit/Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lretrofit/Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string v0, "?"

    goto :goto_0

    .line 411
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lretrofit/Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lretrofit/Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
