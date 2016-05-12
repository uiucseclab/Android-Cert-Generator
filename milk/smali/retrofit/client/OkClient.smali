.class public Lretrofit/client/OkClient;
.super Lretrofit/client/UrlConnectionClient;
.source "OkClient.java"


# instance fields
.field private final okUrlFactory:Lcom/squareup/okhttp/OkUrlFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lretrofit/client/OkClient;->generateDefaultOkHttp()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 40
    invoke-direct {p0}, Lretrofit/client/UrlConnectionClient;-><init>()V

    .line 41
    new-instance v0, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-direct {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    iput-object v0, p0, Lretrofit/client/OkClient;->okUrlFactory:Lcom/squareup/okhttp/OkUrlFactory;

    .line 42
    return-void
.end method

.method private static generateDefaultOkHttp()Lcom/squareup/okhttp/OkHttpClient;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 29
    .local v0, "client":Lcom/squareup/okhttp/OkHttpClient;
    const-wide/16 v1, 0x3a98

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 30
    const-wide/16 v1, 0x4e20

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method protected openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "request"    # Lretrofit/client/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lretrofit/client/OkClient;->okUrlFactory:Lcom/squareup/okhttp/OkUrlFactory;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
