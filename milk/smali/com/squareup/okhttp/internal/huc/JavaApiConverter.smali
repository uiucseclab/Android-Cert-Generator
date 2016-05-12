.class public final Lcom/squareup/okhttp/internal/huc/JavaApiConverter;
.super Ljava/lang/Object;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;,
        Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestHeaderAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static createJavaCacheResponse(Lcom/squareup/okhttp/Response;)Ljava/net/CacheResponse;
    .locals 4
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    .line 182
    .local v2, "headers":Lcom/squareup/okhttp/Headers;
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    .line 183
    .local v0, "body":Lcom/squareup/okhttp/ResponseBody;
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v1

    .line 185
    .local v1, "handshake":Lcom/squareup/okhttp/Handshake;
    new-instance v3, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$1;-><init>(Lcom/squareup/okhttp/Handshake;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ResponseBody;)V

    .line 232
    .end local v1    # "handshake":Lcom/squareup/okhttp/Handshake;
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$2;

    invoke-direct {v3, v2, p0, v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$2;-><init>(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/ResponseBody;)V

    goto :goto_0
.end method

.method static createJavaUrlConnection(Lcom/squareup/okhttp/Response;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "okResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 255
    .local v0, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    new-instance v2, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v2, p0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/squareup/okhttp/Response;)V

    invoke-direct {v1, v2}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;-><init>(Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V

    .line 258
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/squareup/okhttp/Response;)V

    goto :goto_0
.end method

.method private static createOkBody(Lcom/squareup/okhttp/Headers;Ljava/io/InputStream;)Lcom/squareup/okhttp/ResponseBody;
    .locals 2
    .param p0, "okHeaders"    # Lcom/squareup/okhttp/Headers;
    .param p1, "body"    # Ljava/io/InputStream;

    .prologue
    .line 343
    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 344
    .local v0, "source":Lokio/BufferedSource;
    new-instance v1, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;

    invoke-direct {v1, p0, v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$3;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public static createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/Request;
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/squareup/okhttp/Request;"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 169
    .local v0, "builder":Lcom/squareup/okhttp/Request$Builder;
    if-eqz p2, :cond_0

    .line 170
    invoke-static {p2}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 171
    .local v1, "headers":Lcom/squareup/okhttp/Headers;
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    .line 173
    .end local v1    # "headers":Lcom/squareup/okhttp/Headers;
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    return-object v2
.end method

.method static createOkResponse(Lcom/squareup/okhttp/Request;Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Response;
    .locals 10
    .param p0, "request"    # Lcom/squareup/okhttp/Request;
    .param p1, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v6, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v6}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    .line 116
    .local v6, "okResponseBuilder":Lcom/squareup/okhttp/Response$Builder;
    invoke-virtual {v6, p0}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    .line 119
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v8

    .line 120
    .local v8, "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    iget-object v9, v8, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v6, v9}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    .line 121
    iget v9, v8, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v6, v9}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    .line 122
    iget-object v9, v8, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 125
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Headers;

    move-result-object v5

    .line 126
    .local v5, "okHeaders":Lcom/squareup/okhttp/Headers;
    invoke-virtual {v6, v5}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    .line 129
    invoke-virtual {p1}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/squareup/okhttp/Headers;Ljava/io/InputStream;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v4

    .line 130
    .local v4, "okBody":Lcom/squareup/okhttp/ResponseBody;
    invoke-virtual {v6, v4}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    .line 133
    instance-of v9, p1, Ljava/net/SecureCacheResponse;

    if-eqz v9, :cond_1

    move-object v2, p1

    .line 134
    check-cast v2, Ljava/net/SecureCacheResponse;

    .line 139
    .local v2, "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 143
    .local v7, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v3

    .line 144
    .local v3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez v3, :cond_0

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 147
    :cond_0
    invoke-virtual {v2}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7, v3}, Lcom/squareup/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp/Handshake;

    move-result-object v1

    .line 149
    .local v1, "handshake":Lcom/squareup/okhttp/Handshake;
    invoke-virtual {v6, v1}, Lcom/squareup/okhttp/Response$Builder;->handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;

    .line 152
    .end local v1    # "handshake":Lcom/squareup/okhttp/Handshake;
    .end local v2    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    .end local v3    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v7    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v9

    return-object v9

    .line 140
    .restart local v2    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .restart local v7    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_0
.end method

.method public static createOkResponse(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/squareup/okhttp/Response;
    .locals 15
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    move-object/from16 v2, p1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 63
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    new-instance v8, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v8}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    .line 67
    .local v8, "okResponseBuilder":Lcom/squareup/okhttp/Response$Builder;
    const/4 v10, 0x0

    .line 68
    .local v10, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12, v10}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/Request;

    move-result-object v7

    .line 69
    .local v7, "okRequest":Lcom/squareup/okhttp/Request;
    invoke-virtual {v8, v7}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    .line 72
    invoke-static {v2}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v11

    .line 73
    .local v11, "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    iget-object v12, v11, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v8, v12}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    .line 74
    iget v12, v11, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v8, v12}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    .line 75
    iget-object v12, v11, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 78
    invoke-static {v2}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/squareup/okhttp/Headers;

    move-result-object v6

    .line 79
    .local v6, "okHeaders":Lcom/squareup/okhttp/Headers;
    invoke-virtual {v8, v6}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/squareup/okhttp/Headers;Ljava/io/InputStream;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v5

    .line 83
    .local v5, "okBody":Lcom/squareup/okhttp/ResponseBody;
    invoke-virtual {v8, v5}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    .line 86
    instance-of v12, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v12, :cond_0

    move-object v3, v2

    .line 87
    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 91
    .local v3, "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 96
    .local v9, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_0
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 98
    .local v4, "localCertificates":[Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-static {v4}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/squareup/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp/Handshake;

    move-result-object v1

    .line 101
    .local v1, "handshake":Lcom/squareup/okhttp/Handshake;
    invoke-virtual {v8, v1}, Lcom/squareup/okhttp/Response$Builder;->handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;

    .line 104
    .end local v1    # "handshake":Lcom/squareup/okhttp/Handshake;
    .end local v3    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v4    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v9    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {v8}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v12

    return-object v12

    .line 92
    .restart local v3    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v9, 0x0

    .restart local v9    # "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_0
.end method

.method static extractJavaHeaders(Lcom/squareup/okhttp/Request;)Ljava/util/Map;
    .locals 2
    .param p0, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Request;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static extractOkHeaders(Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Headers;
    .locals 2
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 275
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method static extractOkHeaders(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/squareup/okhttp/Headers;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "javaHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v4}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 294
    .local v4, "okHeadersBuilder":Lcom/squareup/okhttp/Headers$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 295
    .local v2, "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 303
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 304
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3, v5}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_0

    .line 307
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v6

    return-object v6
.end method

.method private static extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/squareup/okhttp/Headers;
    .locals 2
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 283
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 284
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method private static extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;
    .locals 2
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 327
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static extractStatusLine(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 332
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 333
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private static nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static throwRequestHeaderAccessException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access request headers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwRequestModificationException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot modify the request."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwRequestSslAccessException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 675
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access SSL internals"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 679
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access the response body."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
