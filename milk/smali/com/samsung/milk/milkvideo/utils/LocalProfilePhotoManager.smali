.class public Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;
.super Ljava/lang/Object;
.source "LocalProfilePhotoManager.java"


# static fields
.field public static final USER_PROFILE_BACKGROUND_FILENAME:Ljava/lang/String; = "user_profile_background.png"

.field public static final USER_PROFILE_PHOTO_FILENAME:Ljava/lang/String; = "user_profile_photo.png"


# instance fields
.field private final blur:Lcom/samsung/milk/milkvideo/utils/Blur;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/utils/Blur;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blur"    # Lcom/samsung/milk/milkvideo/utils/Blur;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    .line 25
    return-void
.end method

.method private createBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "backgroundBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/utils/Blur;->blurSnapshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 85
    return-object v0
.end method

.method private createBlurredProfilePlaceholderBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->getUserProfilePlaceholderIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->createBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "blurredPlaceholderBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private createCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/CircularTransformation;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/utils/CircularTransformation;-><init>()V

    .line 79
    .local v0, "transform":Lcom/samsung/milk/milkvideo/utils/CircularTransformation;
    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/utils/CircularTransformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getBitmapDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 60
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Could not load locally stored Profile bitmap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getUserProfilePlaceholderIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method private writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 93
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Saving a profile bitmap locally failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v2
.end method


# virtual methods
.method public getProfileBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .prologue
    .line 38
    const-string v1, "user_profile_background.png"

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->getBitmapDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 40
    .local v0, "savedBackground":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->createBlurredProfilePlaceholderBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 44
    :cond_0
    return-object v0
.end method

.method public getProfilePhoto()Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .prologue
    .line 28
    const-string v1, "user_profile_photo.png"

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->getBitmapDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 30
    .local v0, "savedPhoto":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->getUserProfilePlaceholderIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 34
    :cond_0
    return-object v0
.end method

.method public saveLocalProfileBitmaps(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->createBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "backgroundBitmap":Landroid/graphics/Bitmap;
    const-string v2, "user_profile_background.png"

    invoke-direct {p0, v0, v2}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->createCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    .local v1, "circularBitmap":Landroid/graphics/Bitmap;
    const-string v2, "user_profile_photo.png"

    invoke-direct {p0, v1, v2}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;->writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 54
    return-void
.end method
