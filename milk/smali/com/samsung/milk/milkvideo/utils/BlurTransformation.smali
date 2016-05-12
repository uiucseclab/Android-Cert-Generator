.class public abstract Lcom/samsung/milk/milkvideo/utils/BlurTransformation;
.super Ljava/lang/Object;
.source "BlurTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# static fields
.field private static final BLUR_COLOR:I = 0x18000000


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final blur:Lcom/samsung/milk/milkvideo/utils/Blur;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/utils/Blur;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "blur"    # Lcom/samsung/milk/milkvideo/utils/Blur;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/BlurTransformation;->activity:Landroid/app/Activity;

    .line 14
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/utils/BlurTransformation;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    .line 15
    return-void
.end method


# virtual methods
.method protected abstract getBitmapToCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method protected abstract getBlurIterations()I
.end method

.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const-string v0, "blur20resizeWidth"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/utils/BlurTransformation;->getBitmapToCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 20
    .local v1, "cropped":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/utils/BlurTransformation;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/utils/BlurTransformation;->activity:Landroid/app/Activity;

    const/high16 v5, 0x18000000

    invoke-virtual {v3, v4, v1, v5}, Lcom/samsung/milk/milkvideo/utils/Blur;->blurSnapshotWithColor(Landroid/app/Activity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, "blurred":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/utils/BlurTransformation;->getBlurIterations()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 22
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/utils/BlurTransformation;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    invoke-virtual {v3, v0}, Lcom/samsung/milk/milkvideo/utils/Blur;->blurSnapshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    return-object v0
.end method
