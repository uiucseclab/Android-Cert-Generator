.class public Lcom/facebook/acra/util/HttpRequest;
.super Ljava/lang/Object;
.source "reason"


# static fields
.field public static final POST_CONTENT_TYPE_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final POST_CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"


# instance fields
.field private mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;


# direct methods
.method public constructor <init>(Lcom/facebook/acra/util/HttpConnectionProvider;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/acra/util/HttpRequest;->mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;

    .line 24
    return-void
.end method


# virtual methods
.method public sendPost(Ljava/net/URL;Lcom/facebook/acra/util/HttpRequest$PostEntity;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/acra/util/HttpRequest;->mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;

    invoke-interface {v0, p1}, Lcom/facebook/acra/util/HttpConnectionProvider;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 44
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 45
    const-string v0, "User-Agent"

    invoke-virtual {v1, v0, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "Content-Type"

    invoke-virtual {v1, v0, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 51
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    invoke-interface {p2, v0}, Lcom/facebook/acra/util/HttpRequest$PostEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 54
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 55
    invoke-virtual {p3, v0}, Lcom/facebook/acra/util/ACRAResponse;->setStatusCode(I)V

    .line 56
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method
