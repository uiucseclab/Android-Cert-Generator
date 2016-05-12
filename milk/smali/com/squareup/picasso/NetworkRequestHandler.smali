.class Lcom/squareup/picasso/NetworkRequestHandler;
.super Lcom/squareup/picasso/RequestHandler;
.source "NetworkRequestHandler.java"


# static fields
.field private static final MARKER:I = 0x10000

.field static final RETRY_COUNT:I = 0x2

.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private final downloader:Lcom/squareup/picasso/Downloader;

.field private final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Stats;)V
    .locals 0
    .param p1, "downloader"    # Lcom/squareup/picasso/Downloader;
    .param p2, "stats"    # Lcom/squareup/picasso/Stats;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/squareup/picasso/RequestHandler;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/squareup/picasso/NetworkRequestHandler;->downloader:Lcom/squareup/picasso/Downloader;

    .line 40
    iput-object p2, p0, Lcom/squareup/picasso/NetworkRequestHandler;->stats:Lcom/squareup/picasso/Stats;

    .line 41
    return-void
.end method

.method private decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "data"    # Lcom/squareup/picasso/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 94
    new-instance v6, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v6, p1}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v6, "markStream":Lcom/squareup/picasso/MarkableInputStream;
    move-object p1, v6

    .line 97
    const/high16 v8, 0x10000

    invoke-virtual {v6, v8}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v4

    .line 99
    .local v4, "mark":J
    invoke-static {p2}, Lcom/squareup/picasso/NetworkRequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 100
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v7}, Lcom/squareup/picasso/NetworkRequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    .line 102
    .local v2, "calculateSize":Z
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->isWebPFile(Ljava/io/InputStream;)Z

    move-result v3

    .line 103
    .local v3, "isWebPFile":Z
    invoke-virtual {v6, v4, v5}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 106
    if-eqz v3, :cond_2

    .line 107
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 108
    .local v1, "bytes":[B
    if-eqz v2, :cond_0

    .line 109
    array-length v8, v1

    invoke-static {v1, v10, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 110
    iget v8, p2, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v9, p2, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v8, v9, v7, p2}, Lcom/squareup/picasso/NetworkRequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 112
    :cond_0
    array-length v8, v1

    invoke-static {v1, v10, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .end local v1    # "bytes":[B
    :cond_1
    return-object v0

    .line 114
    :cond_2
    if-eqz v2, :cond_3

    .line 115
    invoke-static {p1, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    iget v8, p2, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v9, p2, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v8, v9, v7, p2}, Lcom/squareup/picasso/NetworkRequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 118
    invoke-virtual {v6, v4, v5}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 120
    :cond_3
    invoke-static {p1, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 123
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Failed to decode stream."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method public canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .locals 2
    .param p1, "data"    # Lcom/squareup/picasso/Request;

    .prologue
    .line 44
    iget-object v1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRetryCount()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x2

    return v0
.end method

.method public load(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/RequestHandler$Result;
    .locals 10
    .param p1, "data"    # Lcom/squareup/picasso/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 49
    iget-object v5, p0, Lcom/squareup/picasso/NetworkRequestHandler;->downloader:Lcom/squareup/picasso/Downloader;

    iget-object v6, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    iget-boolean v7, p1, Lcom/squareup/picasso/Request;->loadFromLocalCacheOnly:Z

    invoke-interface {v5, v6, v7}, Lcom/squareup/picasso/Downloader;->load(Landroid/net/Uri;Z)Lcom/squareup/picasso/Downloader$Response;

    move-result-object v3

    .line 50
    .local v3, "response":Lcom/squareup/picasso/Downloader$Response;
    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v4

    .line 54
    :cond_1
    iget-boolean v5, v3, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    if-eqz v5, :cond_2

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 56
    .local v2, "loadedFrom":Lcom/squareup/picasso/Picasso$LoadedFrom;
    :goto_1
    invoke-virtual {v3}, Lcom/squareup/picasso/Downloader$Response;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 58
    new-instance v4, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-direct {v4, v0, v2}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    goto :goto_0

    .line 54
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "loadedFrom":Lcom/squareup/picasso/Picasso$LoadedFrom;
    :cond_2
    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_1

    .line 61
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "loadedFrom":Lcom/squareup/picasso/Picasso$LoadedFrom;
    :cond_3
    invoke-virtual {v3}, Lcom/squareup/picasso/Downloader$Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 62
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v3}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    .line 68
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 69
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Received response with 0 content-length header."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_4
    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-ne v2, v4, :cond_5

    invoke-virtual {v3}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_5

    .line 72
    iget-object v4, p0, Lcom/squareup/picasso/NetworkRequestHandler;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v3}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/squareup/picasso/Stats;->dispatchDownloadFinished(J)V

    .line 75
    :cond_5
    :try_start_0
    new-instance v4, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-direct {p0, v1, p1}, Lcom/squareup/picasso/NetworkRequestHandler;->decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 1
    .param p1, "airplaneMode"    # Z
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 86
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

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

.method supportsReplay()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method
