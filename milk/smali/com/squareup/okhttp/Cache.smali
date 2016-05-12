.class public final Lcom/squareup/okhttp/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Cache$CacheResponseBody;,
        Lcom/squareup/okhttp/Cache$Entry;,
        Lcom/squareup/okhttp/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/squareup/okhttp/internal/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lcom/squareup/okhttp/internal/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/squareup/okhttp/Cache$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/Cache$1;-><init>(Lcom/squareup/okhttp/Cache;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Cache;->internalCache:Lcom/squareup/okhttp/internal/InternalCache;

    .line 146
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lcom/squareup/okhttp/internal/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/squareup/okhttp/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 147
    return-void
.end method

.method private abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;)Ljava/net/CacheRequest;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache;
    .param p1, "x1"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->put(Lcom/squareup/okhttp/Response;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache;
    .param p1, "x1"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->remove(Lcom/squareup/okhttp/Request;)V

    return-void
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache;
    .param p1, "x1"    # Lcom/squareup/okhttp/Response;
    .param p2, "x2"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/Cache;->update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/Cache;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/squareup/okhttp/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/http/CacheStrategy;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Cache;->trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method static synthetic access$708(Lcom/squareup/okhttp/Cache;)I
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache;

    .prologue
    .line 108
    iget v0, p0, Lcom/squareup/okhttp/Cache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/Cache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$808(Lcom/squareup/okhttp/Cache;)I
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache;

    .prologue
    .line 108
    iget v0, p0, Lcom/squareup/okhttp/Cache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/Cache;->writeAbortCount:I

    return v0
.end method

.method static synthetic access$900(Lokio/BufferedSource;)I
    .locals 1
    .param p0, "x0"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0}, Lcom/squareup/okhttp/Cache;->readInt(Lokio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method private put(Lcom/squareup/okhttp/Response;)Ljava/net/CacheRequest;
    .locals 7
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/Cache;->remove(Lcom/squareup/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    :cond_0
    :goto_0
    return-object v4

    .line 195
    :cond_1
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/squareup/okhttp/Response;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    new-instance v2, Lcom/squareup/okhttp/Cache$Entry;

    invoke-direct {v2, p1}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Lcom/squareup/okhttp/Response;)V

    .line 207
    .local v2, "entry":Lcom/squareup/okhttp/Cache$Entry;
    const/4 v1, 0x0

    .line 209
    .local v1, "editor":Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    :try_start_1
    iget-object v5, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/Cache;->urlToKey(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Cache$Entry;->writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 214
    new-instance v5, Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    invoke-direct {v5, p0, v1}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/Cache;->abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .end local v2    # "entry":Lcom/squareup/okhttp/Cache$Entry;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private static readInt(Lokio/BufferedSource;)I
    .locals 5
    .param p0, "source"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-interface {p0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected an integer but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private remove(Lcom/squareup/okhttp/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {p1}, Lcom/squareup/okhttp/Cache;->urlToKey(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 223
    return-void
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/squareup/okhttp/internal/http/CacheStrategy;

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->requestCount:I

    .line 294
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/squareup/okhttp/Request;

    if-eqz v0, :cond_1

    .line 296
    iget v0, p0, Lcom/squareup/okhttp/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 298
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    .line 300
    iget v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 5
    .param p1, "cached"    # Lcom/squareup/okhttp/Response;
    .param p2, "network"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 226
    new-instance v2, Lcom/squareup/okhttp/Cache$Entry;

    invoke-direct {v2, p2}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Lcom/squareup/okhttp/Response;)V

    .line 227
    .local v2, "entry":Lcom/squareup/okhttp/Cache$Entry;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/Cache$CacheResponseBody;

    # getter for: Lcom/squareup/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    invoke-static {v4}, Lcom/squareup/okhttp/Cache$CacheResponseBody;->access$500(Lcom/squareup/okhttp/Cache$CacheResponseBody;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v3

    .line 228
    .local v3, "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    const/4 v1, 0x0

    .line 230
    .local v1, "editor":Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Cache$Entry;->writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 233
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/Cache;->abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method private static urlToKey(Lcom/squareup/okhttp/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "requst"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->close()V

    .line 281
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->delete()V

    .line 257
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
    .line 276
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->flush()V

    .line 277
    return-void
.end method

.method get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 7
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    const/4 v5, 0x0

    .line 154
    invoke-static {p1}, Lcom/squareup/okhttp/Cache;->urlToKey(Lcom/squareup/okhttp/Request;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v6, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 159
    .local v4, "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v4, :cond_1

    move-object v3, v5

    .line 181
    .end local v4    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :cond_0
    :goto_0
    return-object v3

    .line 162
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v5

    .line 164
    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/squareup/okhttp/Cache$Entry;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/squareup/okhttp/Cache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    .local v1, "entry":Lcom/squareup/okhttp/Cache$Entry;
    invoke-virtual {v1, p1, v4}, Lcom/squareup/okhttp/Cache$Entry;->response(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Lcom/squareup/okhttp/Response;

    move-result-object v3

    .line 176
    .local v3, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v1, p1, v3}, Lcom/squareup/okhttp/Cache$Entry;->matches(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 177
    invoke-virtual {v3}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 178
    goto :goto_0

    .line 169
    .end local v1    # "entry":Lcom/squareup/okhttp/Cache$Entry;
    .end local v3    # "response":Lcom/squareup/okhttp/Response;
    :catch_1
    move-exception v0

    .line 170
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 171
    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxSize()J
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/squareup/okhttp/Cache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method
