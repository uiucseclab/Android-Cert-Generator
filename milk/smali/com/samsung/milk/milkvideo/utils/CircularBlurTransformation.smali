.class public Lcom/samsung/milk/milkvideo/utils/CircularBlurTransformation;
.super Lcom/samsung/milk/milkvideo/utils/BlurTransformation;
.source "CircularBlurTransformation.java"


# static fields
.field private static final FRACTION_OF_IMAGE_HEIGHT_SHOWN:F = 0.5f


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/utils/Blur;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "blur"    # Lcom/samsung/milk/milkvideo/utils/Blur;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/samsung/milk/milkvideo/utils/BlurTransformation;-><init>(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/utils/Blur;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getBitmapToCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 21
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 23
    .local v0, "height":I
    int-to-double v2, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v3, v0

    mul-float/2addr v3, v8

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v5, v0

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-static {p1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method protected getBlurIterations()I
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x14

    return v0
.end method
