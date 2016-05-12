.class public Lcom/samsung/milk/milkvideo/views/CircularImageView;
.super Landroid/widget/ImageView;
.source "CircularImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x1

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 18
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 31
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderColor:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    .line 48
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 25
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 27
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 31
    iput v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderColor:I

    .line 32
    iput v2, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    .line 58
    sget-object v1, Lcom/samsung/milk/milkvideo/R$styleable;->CircularImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderColor:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->init()V

    .line 66
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 164
    if-nez p1, :cond_0

    move-object v0, v3

    .line 186
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 168
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 169
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 175
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 176
    const/4 v4, 0x1

    const/4 v5, 0x1

    sget-object v6, Lcom/samsung/milk/milkvideo/views/CircularImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 182
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 185
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v0, v3

    .line 186
    goto :goto_0

    .line 178
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lcom/samsung/milk/milkvideo/views/CircularImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mReady:Z

    .line 72
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->setup()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mSetupPending:Z

    .line 76
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 191
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mReady:Z

    if-nez v0, :cond_1

    .line 192
    iput-boolean v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mSetupPending:Z

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 202
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 205
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapHeight:I

    .line 211
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapWidth:I

    .line 213
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 214
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRadius:F

    .line 216
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 217
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRadius:F

    .line 219
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->updateShaderMatrix()V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 228
    .local v1, "dy":F
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 230
    iget v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 232
    .local v2, "scale":F
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 239
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v5, v1, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 241
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 242
    return-void

    .line 234
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 235
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 105
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->setup()V

    .line 106
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iput p1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderColor:I

    .line 118
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .prologue
    .line 127
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iput p1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBorderWidth:I

    .line 132
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->setup()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->setup()V

    .line 140
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->setup()V

    .line 147
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 153
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->setup()V

    .line 154
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 160
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/CircularImageView;->setup()V

    .line 161
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 85
    sget-object v0, Lcom/samsung/milk/milkvideo/views/CircularImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method
