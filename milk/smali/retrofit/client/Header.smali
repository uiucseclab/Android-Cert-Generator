.class public final Lretrofit/client/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lretrofit/client/Header;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lretrofit/client/Header;->value:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 40
    check-cast v0, Lretrofit/client/Header;

    .line 42
    .local v0, "header":Lretrofit/client/Header;
    iget-object v3, p0, Lretrofit/client/Header;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lretrofit/client/Header;->name:Ljava/lang/String;

    iget-object v4, v0, Lretrofit/client/Header;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lretrofit/client/Header;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 43
    :cond_6
    iget-object v3, p0, Lretrofit/client/Header;->value:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lretrofit/client/Header;->value:Ljava/lang/String;

    iget-object v4, v0, Lretrofit/client/Header;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lretrofit/client/Header;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lretrofit/client/Header;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lretrofit/client/Header;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lretrofit/client/Header;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lretrofit/client/Header;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 50
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lretrofit/client/Header;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lretrofit/client/Header;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 51
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lretrofit/client/Header;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lretrofit/client/Header;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lretrofit/client/Header;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lretrofit/client/Header;->value:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
