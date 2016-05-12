.class public Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;
.super Ljava/lang/Object;
.source "GooglePlusAuthenticationRequest.java"


# instance fields
.field private googlePlusAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "google_plus_access_token"
    .end annotation
.end field

.field private user:Lcom/samsung/milk/milkvideo/models/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGooglePlusAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;->googlePlusAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/samsung/milk/milkvideo/models/User;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;->user:Lcom/samsung/milk/milkvideo/models/User;

    return-object v0
.end method

.method public setGooglePlusAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "googlePlusAccessToken"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;->googlePlusAccessToken:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;->user:Lcom/samsung/milk/milkvideo/models/User;

    .line 25
    return-void
.end method
