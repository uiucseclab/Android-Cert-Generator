.class public Lretrofit/appengine/UrlFetchClient;
.super Ljava/lang/Object;
.source "UrlFetchClient.java"

# interfaces
.implements Lretrofit/client/Client;


# instance fields
.field private final urlFetchService:Lcom/google/appengine/api/urlfetch/URLFetchService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/appengine/api/urlfetch/URLFetchServiceFactory;->getURLFetchService()Lcom/google/appengine/api/urlfetch/URLFetchService;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit/appengine/UrlFetchClient;-><init>(Lcom/google/appengine/api/urlfetch/URLFetchService;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/appengine/api/urlfetch/URLFetchService;)V
    .locals 0
    .param p1, "urlFetchService"    # Lcom/google/appengine/api/urlfetch/URLFetchService;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lretrofit/appengine/UrlFetchClient;->urlFetchService:Lcom/google/appengine/api/urlfetch/URLFetchService;

    .line 49
    return-void
.end method

.method static createRequest(Lretrofit/client/Request;)Lcom/google/appengine/api/urlfetch/HTTPRequest;
    .locals 10
    .param p0, "request"    # Lretrofit/client/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lretrofit/appengine/UrlFetchClient;->getHttpMethod(Ljava/lang/String;)Lcom/google/appengine/api/urlfetch/HTTPMethod;

    move-result-object v4

    .line 65
    .local v4, "httpMethod":Lcom/google/appengine/api/urlfetch/HTTPMethod;
    new-instance v5, Ljava/net/URL;

    invoke-virtual {p0}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "url":Ljava/net/URL;
    new-instance v2, Lcom/google/appengine/api/urlfetch/HTTPRequest;

    invoke-direct {v2, v5, v4}, Lcom/google/appengine/api/urlfetch/HTTPRequest;-><init>(Ljava/net/URL;Lcom/google/appengine/api/urlfetch/HTTPMethod;)V

    .line 68
    .local v2, "fetchRequest":Lcom/google/appengine/api/urlfetch/HTTPRequest;
    invoke-virtual {p0}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit/client/Header;

    .line 69
    .local v3, "header":Lretrofit/client/Header;
    new-instance v7, Lcom/google/appengine/api/urlfetch/HTTPHeader;

    invoke-virtual {v3}, Lretrofit/client/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lretrofit/client/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/appengine/api/urlfetch/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/google/appengine/api/urlfetch/HTTPRequest;->addHeader(Lcom/google/appengine/api/urlfetch/HTTPHeader;)V

    goto :goto_0

    .line 72
    .end local v3    # "header":Lretrofit/client/Header;
    :cond_0
    invoke-virtual {p0}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v1

    .line 73
    .local v1, "body":Lretrofit/mime/TypedOutput;
    if-eqz v1, :cond_1

    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v1, v0}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/appengine/api/urlfetch/HTTPRequest;->setPayload([B)V

    .line 79
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    return-object v2
.end method

.method private static getHttpMethod(Ljava/lang/String;)Lcom/google/appengine/api/urlfetch/HTTPMethod;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "GET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->GET:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    .line 35
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "POST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->POST:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "PATCH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->PATCH:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    goto :goto_0

    .line 30
    :cond_2
    const-string v0, "PUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->PUT:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    goto :goto_0

    .line 32
    :cond_3
    const-string v0, "DELETE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->DELETE:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    goto :goto_0

    .line 34
    :cond_4
    const-string v0, "HEAD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->HEAD:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    goto :goto_0

    .line 37
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal HTTP method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parseResponse(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lretrofit/client/Response;
    .locals 12
    .param p0, "response"    # Lcom/google/appengine/api/urlfetch/HTTPResponse;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getFinalUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getResponseCode()I

    move-result v2

    .line 86
    .local v2, "status":I
    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getHeaders()Ljava/util/List;

    move-result-object v9

    .line 87
    .local v9, "fetchHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/google/appengine/api/urlfetch/HTTPHeader;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v4, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    const-string v6, "application/octet-stream"

    .line 89
    .local v6, "contentType":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appengine/api/urlfetch/HTTPHeader;

    .line 90
    .local v8, "fetchHeader":Lcom/google/appengine/api/urlfetch/HTTPHeader;
    invoke-virtual {v8}, Lcom/google/appengine/api/urlfetch/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/google/appengine/api/urlfetch/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, "value":Ljava/lang/String;
    const-string v3, "Content-Type"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    move-object v6, v11

    .line 95
    :cond_0
    new-instance v3, Lretrofit/client/Header;

    invoke-direct {v3, v10, v11}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v8    # "fetchHeader":Lcom/google/appengine/api/urlfetch/HTTPHeader;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 99
    .local v5, "body":Lretrofit/mime/TypedByteArray;
    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getContent()[B

    move-result-object v7

    .line 100
    .local v7, "fetchBody":[B
    if-eqz v7, :cond_2

    .line 101
    new-instance v5, Lretrofit/mime/TypedByteArray;

    .end local v5    # "body":Lretrofit/mime/TypedByteArray;
    invoke-direct {v5, v6, v7}, Lretrofit/mime/TypedByteArray;-><init>(Ljava/lang/String;[B)V

    .line 104
    .restart local v5    # "body":Lretrofit/mime/TypedByteArray;
    :cond_2
    new-instance v0, Lretrofit/client/Response;

    const-string v3, ""

    invoke-direct/range {v0 .. v5}, Lretrofit/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V

    return-object v0
.end method


# virtual methods
.method protected execute(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;)Lcom/google/appengine/api/urlfetch/HTTPResponse;
    .locals 1
    .param p1, "urlFetchService"    # Lcom/google/appengine/api/urlfetch/URLFetchService;
    .param p2, "request"    # Lcom/google/appengine/api/urlfetch/HTTPRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p1, p2}, Lcom/google/appengine/api/urlfetch/URLFetchService;->fetch(Lcom/google/appengine/api/urlfetch/HTTPRequest;)Lcom/google/appengine/api/urlfetch/HTTPResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 3
    .param p1, "request"    # Lretrofit/client/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lretrofit/appengine/UrlFetchClient;->createRequest(Lretrofit/client/Request;)Lcom/google/appengine/api/urlfetch/HTTPRequest;

    move-result-object v0

    .line 53
    .local v0, "fetchRequest":Lcom/google/appengine/api/urlfetch/HTTPRequest;
    iget-object v2, p0, Lretrofit/appengine/UrlFetchClient;->urlFetchService:Lcom/google/appengine/api/urlfetch/URLFetchService;

    invoke-virtual {p0, v2, v0}, Lretrofit/appengine/UrlFetchClient;->execute(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;)Lcom/google/appengine/api/urlfetch/HTTPResponse;

    move-result-object v1

    .line 54
    .local v1, "fetchResponse":Lcom/google/appengine/api/urlfetch/HTTPResponse;
    invoke-static {v1}, Lretrofit/appengine/UrlFetchClient;->parseResponse(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lretrofit/client/Response;

    move-result-object v2

    return-object v2
.end method
