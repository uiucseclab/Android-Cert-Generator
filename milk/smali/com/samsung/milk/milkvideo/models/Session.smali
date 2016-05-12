.class public Lcom/samsung/milk/milkvideo/models/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private firstTime:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "first_time"
    .end annotation
.end field

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Session;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstTime()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/Session;->firstTime:Z

    return v0
.end method

.method public setFirstTime(Z)V
    .locals 0
    .param p1, "firstTime"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/models/Session;->firstTime:Z

    .line 26
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Session;->token:Ljava/lang/String;

    .line 18
    return-void
.end method
