.class public Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;
.super Ljava/lang/Object;
.source "EdgeBrighteningGradientBuilder.java"


# static fields
.field public static final DIAMETER:I = 0x1e0

.field public static final EDGE_WIDTH_PIXELS:I = 0xa0

.field public static final RADIUS:I = 0xf0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/16 v11, 0xa0

    const/4 v2, 0x2

    const/16 v10, 0x1e0

    const/high16 v1, 0x43700000    # 240.0f

    .line 14
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 15
    .local v8, "outerCircle":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .local v7, "circleCanvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/RadialGradient;

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 22
    invoke-virtual {v7, v1, v1, v1, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    const/4 v0, 0x0

    invoke-static {v8, v11, v0, v11, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 17
    :array_0
    .array-data 4
        0x40ffffff    # 7.9999995f
        0xffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
