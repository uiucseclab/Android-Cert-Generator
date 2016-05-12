.class public Lcom/samsung/milk/milkvideo/api/AuthenticationRequest;
.super Ljava/lang/Object;
.source "AuthenticationRequest.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
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

.field private credentials:Lcom/samsung/milk/milkvideo/models/Credentials;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/api/AuthenticationRequest;->additionalProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/samsung/milk/milkvideo/models/Credentials;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/AuthenticationRequest;->credentials:Lcom/samsung/milk/milkvideo/models/Credentials;

    return-object v0
.end method

.method public setCredentials(Lcom/samsung/milk/milkvideo/models/Credentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/samsung/milk/milkvideo/models/Credentials;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/AuthenticationRequest;->credentials:Lcom/samsung/milk/milkvideo/models/Credentials;

    .line 26
    return-void
.end method
