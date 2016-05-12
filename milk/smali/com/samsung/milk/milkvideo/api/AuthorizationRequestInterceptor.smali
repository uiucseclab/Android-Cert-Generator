.class public Lcom/samsung/milk/milkvideo/api/AuthorizationRequestInterceptor;
.super Ljava/lang/Object;
.source "AuthorizationRequestInterceptor.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# instance fields
.field private final authenticator:Lcom/samsung/milk/milkvideo/services/LoginState;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/services/LoginState;)V
    .locals 0
    .param p1, "authenticator"    # Lcom/samsung/milk/milkvideo/services/LoginState;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/AuthorizationRequestInterceptor;->authenticator:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 12
    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2
    .param p1, "requestFacade"    # Lretrofit/RequestInterceptor$RequestFacade;

    .prologue
    .line 16
    const-string v0, "Authorization"

    const-string v1, "Token token=\"foo1\""

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "Auth-Token"

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/AuthorizationRequestInterceptor;->authenticator:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "Auth-Identifier"

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/AuthorizationRequestInterceptor;->authenticator:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "Auth-Google-Account"

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/api/AuthorizationRequestInterceptor;->authenticator:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getGoogleAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
