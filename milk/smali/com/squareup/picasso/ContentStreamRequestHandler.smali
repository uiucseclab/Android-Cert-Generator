.class Lcom/squareup/picasso/ContentStreamRequestHandler;
.super Lcom/squareup/picasso/RequestHandler;
.source "ContentStreamRequestHandler.java"


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/squareup/picasso/RequestHandler;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/squareup/picasso/ContentStreamRequestHandler;->context:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .locals 2
    .param p1, "data"    # Lcom/squareup/picasso/Request;

    .prologue
    .line 36
    const-string v0, "content"

    iget-object v1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected decodeContentStream(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "data"    # Lcom/squareup/picasso/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v3, p0, Lcom/squareup/picasso/ContentStreamRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 45
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 46
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2}, Lcom/squareup/picasso/ContentStreamRequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 50
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 54
    iget v3, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v4, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v3, v4, v2, p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 56
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    iget-object v3, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 58
    .restart local v1    # "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 60
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v3

    .line 52
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3

    .line 60
    :catchall_1
    move-exception v3

    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3
.end method

.method public load(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/RequestHandler$Result;
    .locals 3
    .param p1, "data"    # Lcom/squareup/picasso/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;->decodeContentStream(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v0
.end method
