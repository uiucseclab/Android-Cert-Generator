.class public final Lcom/squareup/okhttp/internal/http/SpdyTransport;
.super Ljava/lang/Object;
.source "SpdyTransport.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;
    }
.end annotation


# static fields
.field private static final HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private final spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field private stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V
    .locals 0
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .param p2, "spdyConnection"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 78
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 79
    return-void
.end method

.method private static isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z
    .locals 1
    .param p0, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .param p1, "name"    # Lokio/ByteString;

    .prologue
    .line 234
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    .line 235
    sget-object v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 237
    :goto_0
    return v0

    .line 236
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_1

    .line 237
    sget-object v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readNameValueBlock(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;
    .locals 12
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/squareup/okhttp/Protocol;",
            ")",
            "Lcom/squareup/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v5, 0x0

    .line 179
    .local v5, "status":Ljava/lang/String;
    const-string v9, "HTTP/1.1"

    .line 181
    .local v9, "version":Ljava/lang/String;
    new-instance v1, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 182
    .local v1, "headersBuilder":Lcom/squareup/okhttp/Headers$Builder;
    sget-object v10, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/squareup/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 183
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 184
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v3, v10, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    .line 185
    .local v3, "name":Lokio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v10, v10, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    invoke-virtual {v10}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "values":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "start":I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 187
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 188
    .local v0, "end":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_0

    .line 189
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 191
    :cond_0
    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "value":Ljava/lang/String;
    sget-object v10, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v3, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 193
    move-object v5, v7

    .line 199
    :cond_1
    :goto_2
    add-int/lit8 v4, v0, 0x1

    .line 200
    goto :goto_1

    .line 194
    :cond_2
    sget-object v10, Lcom/squareup/okhttp/internal/spdy/Header;->VERSION:Lokio/ByteString;

    invoke-virtual {v3, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 195
    move-object v9, v7

    goto :goto_2

    .line 196
    :cond_3
    invoke-static {p1, v3}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 197
    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v7}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_2

    .line 183
    .end local v0    # "end":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "name":Lokio/ByteString;
    .end local v4    # "start":I
    .end local v8    # "values":Ljava/lang/String;
    :cond_5
    if-nez v5, :cond_6

    new-instance v10, Ljava/net/ProtocolException;

    const-string v11, "Expected \':status\' header not present"

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 203
    :cond_6
    if-nez v9, :cond_7

    new-instance v10, Ljava/net/ProtocolException;

    const-string v11, "Expected \':version\' header not present"

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 205
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v6

    .line 206
    .local v6, "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    new-instance v10, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v10}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v11, v6, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v10, v11}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v10

    iget v11, v6, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v10, v11}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v10

    iget-object v11, v6, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v10

    return-object v10
.end method

.method public static writeNameValueBlock(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "request"    # Lcom/squareup/okhttp/Request;
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Request;",
            "Lcom/squareup/okhttp/Protocol;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 120
    .local v1, "headers":Lcom/squareup/okhttp/Headers;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    new-instance v9, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v9, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v11

    invoke-static {v11}, Lcom/squareup/okhttp/internal/http/RequestLine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hostHeader(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "host":Ljava/lang/String;
    sget-object v9, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v9, p1, :cond_1

    .line 125
    new-instance v9, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/Header;->VERSION:Lokio/ByteString;

    invoke-direct {v9, v10, p2}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v9, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_HOST:Lokio/ByteString;

    invoke-direct {v9, v10, v2}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_0
    new-instance v9, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 135
    .local v6, "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 137
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    .line 138
    .local v5, "name":Lokio/ByteString;
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "value":Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->isProhibitedHeader(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    .end local v3    # "i":I
    .end local v5    # "name":Lokio/ByteString;
    .end local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    sget-object v9, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v9, p1, :cond_2

    .line 128
    new-instance v9, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v10, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-direct {v9, v10, v2}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 144
    .restart local v3    # "i":I
    .restart local v5    # "name":Lokio/ByteString;
    .restart local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    sget-object v9, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {v5, v9}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {v5, v9}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {v5, v9}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-virtual {v5, v9}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_HOST:Lokio/ByteString;

    invoke-virtual {v5, v9}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/squareup/okhttp/internal/spdy/Header;->VERSION:Lokio/ByteString;

    invoke-virtual {v5, v9}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 154
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 155
    new-instance v9, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v9, v5, v8}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 161
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v9, v9, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    invoke-virtual {v9, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 162
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v9, v9, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v9, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v9, v5, v0}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v7, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 160
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 168
    .end local v4    # "j":I
    .end local v5    # "name":Lokio/ByteString;
    .end local v8    # "value":Ljava/lang/String;
    :cond_6
    return-object v7
.end method


# virtual methods
.method public canReuseConnection()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public createRequestBody(Lcom/squareup/okhttp/Request;)Lokio/Sink;
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->writeRequestHeaders(Lcom/squareup/okhttp/Request;)V

    .line 84
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getSink()Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/squareup/okhttp/internal/http/HttpEngine;)V
    .locals 2
    .param p1, "engine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 226
    return-void
.end method

.method public emptyTransferStream()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getSink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 106
    return-void
.end method

.method public getTransferStream(Ljava/net/CacheRequest;)Lokio/Source;
    .locals 2
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-direct {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;Ljava/net/CacheRequest;)V

    return-object v0
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->readNameValueBlock(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnectionOnIdle()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public writeRequestHeaders(Lcom/squareup/okhttp/Request;)V
    .locals 7
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    if-eqz v3, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 91
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    .line 92
    .local v0, "hasRequestBody":Z
    const/4 v1, 0x1

    .line 93
    .local v1, "hasResponseBody":Z
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Connection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/http/RequestLine;->version(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/squareup/okhttp/internal/http/SpdyTransport;->writeNameValueBlock(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->newStream(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 97
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto :goto_0
.end method
