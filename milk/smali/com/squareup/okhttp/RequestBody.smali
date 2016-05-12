.class public abstract Lcom/squareup/okhttp/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;
    .locals 2
    .param p0, "contentType"    # Lcom/squareup/okhttp/MediaType;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 79
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/RequestBody$2;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/RequestBody$2;-><init>(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;
    .locals 4
    .param p0, "contentType"    # Lcom/squareup/okhttp/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v1, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/squareup/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    sget-object v1, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset=utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object p0

    .line 54
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 55
    .local v0, "bytes":[B
    invoke-static {p0, v0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    return-object v2
.end method

.method public static create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;
    .locals 2
    .param p0, "contentType"    # Lcom/squareup/okhttp/MediaType;
    .param p1, "content"    # [B

    .prologue
    .line 60
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/RequestBody$1;-><init>(Lcom/squareup/okhttp/MediaType;[B)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lcom/squareup/okhttp/MediaType;
.end method

.method public abstract writeTo(Lokio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
