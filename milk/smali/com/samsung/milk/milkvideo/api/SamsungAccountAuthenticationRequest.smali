.class public Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;
.super Ljava/lang/Object;
.source "SamsungAccountAuthenticationRequest.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "samsung_account_access_token"
    .end annotation
.end field

.field private apiServerUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "samsung_account_api_url"
    .end annotation
.end field

.field private user:Lcom/samsung/milk/milkvideo/models/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "apiServerUrl"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->accessToken:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->apiServerUrl:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getApiServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->apiServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/samsung/milk/milkvideo/models/User;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->user:Lcom/samsung/milk/milkvideo/models/User;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->accessToken:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setApiServerUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiServerUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->apiServerUrl:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/SamsungAccountAuthenticationRequest;->user:Lcom/samsung/milk/milkvideo/models/User;

    .line 42
    return-void
.end method
