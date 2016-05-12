.class Lcom/squareup/picasso/AssetRequestHandler;
.super Lcom/squareup/picasso/RequestHandler;
.source "AssetRequestHandler.java"


# static fields
.field protected static final ANDROID_ASSET:Ljava/lang/String; = "android_asset"

.field private static final ASSET_PREFIX_LENGTH:I


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "file:///android_asset/"

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/squareup/picasso/AssetRequestHandler;->ASSET_PREFIX_LENGTH:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/picasso/RequestHandler;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    .line 38
    return-void
.end method


# virtual methods
.method public canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .locals 4
    .param p1, "data"    # Lcom/squareup/picasso/Request;

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    .line 42
    .local v0, "uri":Landroid/net/Uri;
    const-string v2, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android_asset"

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method decodeAsset(Lcom/squareup/picasso/Request;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "data"    # Lcom/squareup/picasso/Request;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lcom/squareup/picasso/AssetRequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 53
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Lcom/squareup/picasso/AssetRequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/squareup/picasso/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 57
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 61
    iget v2, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v3, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v2, v3, v1, p1}, Lcom/squareup/picasso/AssetRequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 63
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    iget-object v2, p0, Lcom/squareup/picasso/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    .restart local v0    # "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 67
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2

    .line 59
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    .line 67
    :catchall_1
    move-exception v2

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
.end method

.method public load(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/RequestHandler$Result;
    .locals 4
    .param p1, "data"    # Lcom/squareup/picasso/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/squareup/picasso/AssetRequestHandler;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/AssetRequestHandler;->decodeAsset(Lcom/squareup/picasso/Request;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v2, v3}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v1
.end method
