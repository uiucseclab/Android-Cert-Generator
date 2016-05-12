.class public final Lcom/squareup/okhttp/internal/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpConnection$1;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final FINAL_CHUNK:[B

.field private static final HEX_DIGITS:[B

.field private static final ON_IDLE_CLOSE:I = 0x2

.field private static final ON_IDLE_HOLD:I = 0x0

.field private static final ON_IDLE_POOL:I = 0x1

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final connection:Lcom/squareup/okhttp/Connection;

.field private onIdle:I

.field private final pool:Lcom/squareup/okhttp/ConnectionPool;

.field private final sink:Lokio/BufferedSink;

.field private final socket:Ljava/net/Socket;

.field private final source:Lokio/BufferedSource;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpConnection;->HEX_DIGITS:[B

    .line 323
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpConnection;->FINAL_CHUNK:[B

    return-void

    .line 320
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    .line 323
    :array_1
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V
    .locals 1
    .param p1, "pool"    # Lcom/squareup/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 82
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 86
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    .line 87
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    .line 88
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 89
    invoke-static {p3}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    .line 90
    invoke-static {p3}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    .line 91
    return-void
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 62
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return v0
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return p1
.end method

.method static synthetic access$400()[B
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpConnection;->FINAL_CHUNK:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpConnection;->HEX_DIGITS:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/http/HttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 62
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    return v0
.end method

.method static synthetic access$602(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    return p1
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/ConnectionPool;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    return-object v0
.end method


# virtual methods
.method public bufferSize()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public closeOnIdle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 124
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 128
    :cond_0
    return-void
.end method

.method public discard(Lokio/Source;I)Z
    .locals 4
    .param p1, "in"    # Lokio/Source;
    .param p2, "timeoutMillis"    # I

    .prologue
    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 225
    .local v1, "socketTimeout":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :try_start_1
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/Util;->skipAll(Lokio/Source;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 229
    :try_start_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 232
    .end local v1    # "socketTimeout":I
    :goto_0
    return v2

    .line 229
    .restart local v1    # "socketTimeout":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    .end local v1    # "socketTimeout":I
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public emptyResponseBody()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/http/HttpConnection;->newFixedLengthSource(Ljava/net/CacheRequest;J)Lokio/Source;

    .line 267
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 141
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 151
    :try_start_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 153
    .local v2, "readTimeout":I
    :try_start_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 154
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    :try_start_2
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 164
    .end local v2    # "readTimeout":I
    :goto_0
    return v3

    .line 159
    .restart local v2    # "readTimeout":I
    :cond_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v5
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .end local v2    # "readTimeout":I
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/net/SocketTimeoutException;
    move v3, v4

    .line 162
    goto :goto_0

    .line 163
    .end local v1    # "ignored":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public newChunkedSink()Lokio/Sink;
    .locals 3

    .prologue
    .line 237
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 239
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newChunkedSource(Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/HttpEngine;)Lokio/Source;
    .locals 3
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p2, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 273
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lokio/Sink;
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 243
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 245
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;JLcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(Ljava/net/CacheRequest;J)Lokio/Source;
    .locals 3
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 258
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;J)V

    return-object v0
.end method

.method public newUnknownLengthSource(Ljava/net/CacheRequest;)Lokio/Source;
    .locals 3
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 279
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Ljava/net/CacheRequest;)V

    return-object v0
.end method

.method public poolOnIdle()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 110
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 112
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/Internal;->recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V

    .line 114
    :cond_0
    return-void
.end method

.method public readHeaders(Lcom/squareup/okhttp/Headers$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/squareup/okhttp/Headers$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/okhttp/internal/Internal;->addLine(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method public readResponse()Lcom/squareup/okhttp/Response$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 185
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v2

    .line 191
    .local v2, "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    new-instance v3, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v4, v2, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget v4, v2, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    .line 196
    .local v1, "responseBuilder":Lcom/squareup/okhttp/Response$Builder;
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 197
    .local v0, "headersBuilder":Lcom/squareup/okhttp/Headers$Builder;
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/squareup/okhttp/Headers$Builder;)V

    .line 198
    sget-object v3, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    iget-object v4, v2, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 199
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    .line 201
    iget v3, v2, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    .line 202
    const/4 v3, 0x4

    iput v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 203
    return-object v1
.end method

.method public setTimeouts(II)V
    .locals 4
    .param p1, "readTimeoutMillis"    # I
    .param p2, "writeTimeoutMillis"    # I

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 97
    :cond_0
    if-eqz p2, :cond_1

    .line 98
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v1, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 100
    :cond_1
    return-void
.end method

.method public writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V
    .locals 4
    .param p1, "headers"    # Lcom/squareup/okhttp/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const-string v2, ": "

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    const-string v2, "\r\n"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 179
    const/4 v1, 0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 180
    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V
    .locals 3
    .param p1, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 251
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RetryableSink;->writeToSocket(Lokio/BufferedSink;)V

    .line 252
    return-void
.end method
