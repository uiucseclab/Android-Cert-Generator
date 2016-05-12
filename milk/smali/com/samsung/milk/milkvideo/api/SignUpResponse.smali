.class public Lcom/samsung/milk/milkvideo/api/SignUpResponse;
.super Ljava/lang/Object;
.source "SignUpResponse.java"


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

.field private session:Lcom/samsung/milk/milkvideo/models/Session;

.field private user:Lcom/samsung/milk/milkvideo/models/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/api/SignUpResponse;->additionalProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSession()Lcom/samsung/milk/milkvideo/models/Session;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SignUpResponse;->session:Lcom/samsung/milk/milkvideo/models/Session;

    return-object v0
.end method

.method public getUser()Lcom/samsung/milk/milkvideo/models/User;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SignUpResponse;->user:Lcom/samsung/milk/milkvideo/models/User;

    return-object v0
.end method

.method public setSession(Lcom/samsung/milk/milkvideo/models/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/samsung/milk/milkvideo/models/Session;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SignUpResponse;->session:Lcom/samsung/milk/milkvideo/models/Session;

    .line 24
    return-void
.end method

.method public setUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SignUpResponse;->user:Lcom/samsung/milk/milkvideo/models/User;

    .line 32
    return-void
.end method
