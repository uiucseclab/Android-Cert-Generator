.class public Lcom/samsung/milk/milkvideo/models/CustomVideoData;
.super Ljava/lang/Object;
.source "CustomVideoData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    value = {}
.end annotation


# instance fields
.field private additionalProperties:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    if-ne p0, p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    if-eqz p1, :cond_2

    const-class v3, Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 35
    check-cast v0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;

    .line 37
    .local v0, "that":Lcom/samsung/milk/milkvideo/models/CustomVideoData;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    iget-object v4, v0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 38
    goto :goto_0

    .line 37
    :cond_4
    iget-object v3, v0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAdditionalProperties()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnyGetter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/CustomVideoData;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method
