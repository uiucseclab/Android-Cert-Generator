.class public Lcom/facebook/acra/util/SSLConnectionProvider;
.super Ljava/lang/Object;
.source "rc"

# interfaces
.implements Lcom/facebook/acra/util/HttpConnectionProvider;


# instance fields
.field private mProxy:Ljava/net/Proxy;
    .annotation build Lcom/facebook/acra/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/acra/util/SSLConnectionProvider;->mProxy:Ljava/net/Proxy;

    .line 23
    return-void
.end method


# virtual methods
.method public getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/acra/util/SSLConnectionProvider;->mProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/acra/util/SSLConnectionProvider;->mProxy:Ljava/net/Proxy;

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 30
    invoke-virtual {p0, v0}, Lcom/facebook/acra/util/SSLConnectionProvider;->initializeConnectionParameters(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public initializeConnectionParameters(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/BaseCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->socketTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/BaseCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->socketTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    return-object p1
.end method
