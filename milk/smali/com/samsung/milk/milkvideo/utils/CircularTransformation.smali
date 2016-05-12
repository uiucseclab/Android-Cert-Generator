.class public Lcom/samsung/milk/milkvideo/utils/CircularTransformation;
.super Ljava/lang/Object;
.source "CircularTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "circle"

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 14
    .local v5, "size":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v5

    div-int/lit8 v7, v9, 0x2

    .line 15
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v5

    div-int/lit8 v8, v9, 0x2

    .line 17
    .local v8, "y":I
    invoke-static {p1, v7, v8, v5, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 18
    .local v6, "squaredBitmap":Landroid/graphics/Bitmap;
    if-eq v6, p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v5, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v6, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 27
    .local v4, "shader":Landroid/graphics/BitmapShader;
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 28
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    int-to-float v9, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float v3, v9, v10

    .line 31
    .local v3, "r":F
    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    return-object v0
.end method
