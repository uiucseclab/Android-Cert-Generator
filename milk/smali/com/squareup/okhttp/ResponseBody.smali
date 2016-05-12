.class public abstract Lcom/squareup/okhttp/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 87
    .local v0, "contentType":Lcom/squareup/okhttp/MediaType;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v1

    .line 49
    .local v1, "contentLength":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 50
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot buffer entire body for content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    .line 56
    .local v3, "source":Lokio/BufferedSource;
    :try_start_0
    invoke-interface {v3}, Lokio/BufferedSource;->readByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 58
    .local v0, "bytes":[B
    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    .line 61
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Content-Length and stream length disagree"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 63
    .restart local v0    # "bytes":[B
    :cond_1
    return-object v0
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/squareup/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    .line 73
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_0

    .end local v0    # "r":Ljava/io/Reader;
    :goto_0
    return-object v0

    .restart local v0    # "r":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0    # "r":Ljava/io/Reader;
    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/squareup/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 92
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lcom/squareup/okhttp/MediaType;
.end method

.method public abstract source()Lokio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
