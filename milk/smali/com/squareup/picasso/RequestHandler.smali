.class public abstract Lcom/squareup/picasso/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/RequestHandler$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V
    .locals 5
    .param p0, "reqWidth"    # I
    .param p1, "reqHeight"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p5, "request"    # Lcom/squareup/picasso/Request;

    .prologue
    .line 146
    const/4 v1, 0x1

    .line 147
    .local v1, "sampleSize":I
    if-gt p3, p1, :cond_0

    if-le p2, p0, :cond_1

    .line 150
    :cond_0
    if-nez p1, :cond_2

    .line 151
    int-to-float v3, p2

    int-to-float v4, p0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 162
    :cond_1
    :goto_0
    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 163
    const/4 v3, 0x0

    iput-boolean v3, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
    return-void

    .line 152
    :cond_2
    if-nez p0, :cond_3

    .line 153
    int-to-float v3, p3

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    goto :goto_0

    .line 155
    :cond_3
    int-to-float v3, p3

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 156
    .local v0, "heightRatio":I
    int-to-float v3, p2

    int-to-float v4, p0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 157
    .local v2, "widthRatio":I
    iget-boolean v3, p5, Lcom/squareup/picasso/Request;->centerInside:Z

    if-eqz v3, :cond_4

    .line 158
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 159
    :goto_1
    goto :goto_0

    :cond_4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1
.end method

.method static calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V
    .locals 6
    .param p0, "reqWidth"    # I
    .param p1, "reqHeight"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "request"    # Lcom/squareup/picasso/Request;

    .prologue
    .line 140
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 142
    return-void
.end method

.method static createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .param p0, "data"    # Lcom/squareup/picasso/Request;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v1

    .line 122
    .local v1, "justBounds":Z
    iget-object v3, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 123
    .local v0, "hasConfig":Z
    :goto_0
    const/4 v2, 0x0

    .line 124
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 126
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 127
    if-eqz v0, :cond_1

    .line 128
    iget-object v3, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 131
    :cond_1
    return-object v2

    .line 122
    .end local v0    # "hasConfig":Z
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 135
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract canHandleRequest(Lcom/squareup/picasso/Request;)Z
.end method

.method getRetryCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public abstract load(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/RequestHandler$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 1
    .param p1, "airplaneMode"    # Z
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method supportsReplay()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method
