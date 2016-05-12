.class public Lcom/facebook/acra/util/HttpUtils;
.super Ljava/lang/Object;
.source "readProcFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "application/x-www-form-urlencoded"

    .line 63
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/acra/util/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/net/Proxy;)V

    .line 64
    .line 52
    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/net/Proxy;)V
    .locals 7
    .param p3    # Ljava/net/Proxy;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/net/Proxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    const-string v0, "application/json"

    if-ne p2, v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/facebook/acra/util/HttpUtils;->encodeParametersJson(Ljava/util/Map;)Lcom/facebook/acra/util/HttpRequest$PostEntity;

    move-result-object v2

    .line 90
    :goto_0
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/BaseCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->checkSSLCertsOnCrashReport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Lcom/facebook/acra/util/SSLConnectionProvider;

    invoke-direct {v0, p3}, Lcom/facebook/acra/util/SSLConnectionProvider;-><init>(Ljava/net/Proxy;)V

    move-object v1, v0

    .line 96
    :goto_1
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/BaseCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 97
    new-instance v0, Lcom/facebook/acra/util/HttpRequest;

    invoke-direct {v0, v1}, Lcom/facebook/acra/util/HttpRequest;-><init>(Lcom/facebook/acra/util/HttpConnectionProvider;)V

    .line 98
    new-instance v3, Lcom/facebook/acra/util/ACRAResponse;

    invoke-direct {v3}, Lcom/facebook/acra/util/ACRAResponse;-><init>()V

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/acra/util/HttpRequest;->sendPost(Ljava/net/URL;Lcom/facebook/acra/util/HttpRequest$PostEntity;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 86
    .line 103
    :cond_0
    new-instance v6, Lcom/facebook/acra/util/HttpUtils$1;

    invoke-direct {v6, p0}, Lcom/facebook/acra/util/HttpUtils$1;-><init>(Ljava/util/Map;)V

    move-object v2, v6

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lcom/facebook/acra/util/UnsafeConnectionProvider;

    invoke-direct {v0, p3}, Lcom/facebook/acra/util/UnsafeConnectionProvider;-><init>(Ljava/net/Proxy;)V

    move-object v1, v0

    goto :goto_1
.end method

.method public static encodeParametersJson(Ljava/util/Map;)Lcom/facebook/acra/util/HttpRequest$PostEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/facebook/acra/util/HttpRequest$PostEntity;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 130
    new-instance v1, Lcom/facebook/acra/util/HttpRequest$StringPostEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/acra/util/HttpRequest$StringPostEntity;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
