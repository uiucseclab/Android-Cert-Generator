.class public final Lcom/squareup/okhttp/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_SINK:Lcom/squareup/okhttp/internal/http/RetryableSink;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    new-array v0, v1, [B

    sput-object v0, Lcom/squareup/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/squareup/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 49
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 52
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 231
    new-instance v0, Lcom/squareup/okhttp/internal/http/RetryableSink;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/RetryableSink;-><init>(I)V

    sput-object v0, Lcom/squareup/okhttp/internal/Util;->EMPTY_SINK:Lcom/squareup/okhttp/internal/http/RetryableSink;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 4
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .prologue
    .line 76
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 79
    :cond_1
    return-void
.end method

.method public static closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 3
    .param p0, "a"    # Ljava/io/Closeable;
    .param p1, "b"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 145
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_1

    .line 148
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/io/IOException;

    .end local v1    # "thrown":Ljava/lang/Throwable;
    throw v1

    .line 149
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "thrown":Ljava/lang/Throwable;
    throw v1

    .line 150
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :cond_3
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Error;

    .end local v1    # "thrown":Ljava/lang/Throwable;
    throw v1

    .line 151
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    .line 93
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 96
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 2
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 126
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 106
    if-eqz p0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 111
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 8
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 160
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 161
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a readable directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :cond_0
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 164
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->deleteContents(Ljava/io/File;)V

    .line 167
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 168
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to delete file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method public static emptySink()Lcom/squareup/okhttp/internal/http/RetryableSink;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/squareup/okhttp/internal/Util;->EMPTY_SINK:Lcom/squareup/okhttp/internal/http/RetryableSink;

    return-object v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 83
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "protocol"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getEffectivePort(Ljava/lang/String;I)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "specifiedPort"    # I

    .prologue
    .line 66
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .end local p1    # "specifiedPort":I
    :goto_0
    return p1

    .restart local p1    # "specifiedPort":I
    :cond_0
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result p1

    goto :goto_0
.end method

.method public static getEffectivePort(Ljava/net/URI;)I
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEffectivePort(Ljava/net/URL;)I
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 190
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 191
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->hex()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 192
    .end local v1    # "md5bytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 194
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static varargs headerEntries([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "elements"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 222
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 224
    :cond_0
    return-object v1
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
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
    .line 206
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static skipAll(Lokio/Source;I)Z
    .locals 9
    .param p0, "in"    # Lokio/Source;
    .param p1, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 177
    .local v3, "startNanos":J
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 178
    .local v2, "skipBuffer":Lokio/Buffer;
    :goto_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    int-to-long v7, p1

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 179
    const-wide/16 v5, 0x800

    invoke-interface {p0, v2, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 180
    .local v0, "read":J
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 183
    .end local v0    # "read":J
    :goto_1
    return v5

    .line 181
    .restart local v0    # "read":J
    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->clear()V

    goto :goto_0

    .line 183
    .end local v0    # "read":J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .prologue
    .line 210
    new-instance v0, Lcom/squareup/okhttp/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
