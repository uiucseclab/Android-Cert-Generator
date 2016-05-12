.class public Lcom/fasterxml/jackson/databind/PropertyName;
.super Ljava/lang/Object;
.source "PropertyName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

.field public static final USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

.field private static final _NO_NAME:Ljava/lang/String; = "#disabled"

.field private static final _USE_DEFAULT:Ljava/lang/String; = ""

.field private static final serialVersionUID:J = 0x6e0fe282c0ebea86L


# instance fields
.field protected final _namespace:Ljava/lang/String;

.field protected final _simpleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, ""

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 30
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    new-instance v1, Ljava/lang/String;

    const-string v2, "#disabled"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const-string p0, ""

    .line 69
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 72
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    if-ne p1, p0, :cond_1

    move v1, v0

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 146
    check-cast p1, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 147
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 148
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 153
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 153
    goto :goto_1

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public hasNamespace()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSimpleName()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_0
    sget-object p0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 61
    :cond_1
    :goto_0
    return-object p0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    const-string v1, "#disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object p0, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 171
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    .line 95
    if-nez p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 102
    :cond_0
    :goto_0
    return-object p0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string p1, ""

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0
.end method
