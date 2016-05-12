.class public Lretrofit/client/UrlConnectionClient;
.super Ljava/lang/Object;
.source "UrlConnectionClient.java"

# interfaces
.implements Lretrofit/client/Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/client/UrlConnectionClient$1;,
        Lretrofit/client/UrlConnectionClient$TypedInputStream;
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 2
    .param p1, "request"    # Lretrofit/client/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lretrofit/client/UrlConnectionClient;->openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 37
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p0, v0, p1}, Lretrofit/client/UrlConnectionClient;->prepareRequest(Ljava/net/HttpURLConnection;Lretrofit/client/Request;)V

    .line 38
    invoke-virtual {p0, v0}, Lretrofit/client/UrlConnectionClient;->readResponse(Ljava/net/HttpURLConnection;)Lretrofit/client/Response;

    move-result-object v1

    return-object v1
.end method

.method protected openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "request"    # Lretrofit/client/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/net/URL;

    .line 43
    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 44
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 45
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 46
    return-object v0
.end method

.method prepareRequest(Ljava/net/HttpURLConnection;Lretrofit/client/Request;)V
    .locals 8
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lretrofit/client/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 50
    invoke-virtual {p2}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 53
    invoke-virtual {p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit/client/Header;

    .line 54
    .local v1, "header":Lretrofit/client/Header;
    invoke-virtual {v1}, Lretrofit/client/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lretrofit/client/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1    # "header":Lretrofit/client/Header;
    :cond_0
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    .line 58
    .local v0, "body":Lretrofit/mime/TypedOutput;
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    const-string v4, "Content-Type"

    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v2

    .line 62
    .local v2, "length":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 63
    long-to-int v4, v2

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 64
    const-string v4, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-interface {v0, v4}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 70
    .end local v2    # "length":J
    :cond_1
    return-void

    .line 66
    .restart local v2    # "length":J
    :cond_2
    const/16 v4, 0x1000

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_1
.end method

.method readResponse(Ljava/net/HttpURLConnection;)Lretrofit/client/Response;
    .locals 15
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 74
    .local v7, "status":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "reason":Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, ""

    .line 77
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v9, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 79
    .local v11, "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 80
    .local v13, "name":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 81
    .local v14, "value":Ljava/lang/String;
    new-instance v5, Lretrofit/client/Header;

    invoke-direct {v5, v13, v14}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v11    # "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 88
    .local v12, "length":I
    const/16 v2, 0x190

    if-lt v7, v2, :cond_3

    .line 89
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 93
    .local v4, "stream":Ljava/io/InputStream;
    :goto_1
    new-instance v0, Lretrofit/client/UrlConnectionClient$TypedInputStream;

    int-to-long v2, v12

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lretrofit/client/UrlConnectionClient$TypedInputStream;-><init>(Ljava/lang/String;JLjava/io/InputStream;Lretrofit/client/UrlConnectionClient$1;)V

    .line 94
    .local v0, "responseBody":Lretrofit/mime/TypedInput;
    new-instance v5, Lretrofit/client/Response;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lretrofit/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V

    return-object v5

    .line 91
    .end local v0    # "responseBody":Lretrofit/mime/TypedInput;
    .end local v4    # "stream":Ljava/io/InputStream;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .restart local v4    # "stream":Ljava/io/InputStream;
    goto :goto_1
.end method
