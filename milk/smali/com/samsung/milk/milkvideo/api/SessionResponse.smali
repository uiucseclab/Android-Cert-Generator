.class public Lcom/samsung/milk/milkvideo/api/SessionResponse;
.super Ljava/lang/Object;
.source "SessionResponse.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private session:Lcom/samsung/milk/milkvideo/models/Session;

.field private user:Lcom/samsung/milk/milkvideo/models/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Lcom/samsung/milk/milkvideo/models/Session;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SessionResponse;->session:Lcom/samsung/milk/milkvideo/models/Session;

    return-object v0
.end method

.method public getUser()Lcom/samsung/milk/milkvideo/models/User;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SessionResponse;->user:Lcom/samsung/milk/milkvideo/models/User;

    return-object v0
.end method

.method public setSession(Lcom/samsung/milk/milkvideo/models/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/samsung/milk/milkvideo/models/Session;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SessionResponse;->session:Lcom/samsung/milk/milkvideo/models/Session;

    .line 18
    return-void
.end method

.method public setUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SessionResponse;->user:Lcom/samsung/milk/milkvideo/models/User;

    .line 26
    return-void
.end method
