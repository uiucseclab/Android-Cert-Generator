.class Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;
.super Landroid/widget/ImageView;
.source "MiniCircleImageView.java"


# instance fields
.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mWhitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 28
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mWhitePaint:Landroid/graphics/Paint;

    .line 29
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    .local v0, "r":Landroid/content/res/Resources;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 34
    .local v1, "strokePx":F
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget v3, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mCanvasWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    .line 42
    .local v0, "centerX":F
    iget v3, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mCanvasHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 45
    .local v1, "centerY":F
    const v3, 0x3f333333    # 0.7f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v2, v3, v4

    .line 46
    .local v2, "radius":F
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 53
    iput p1, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mCanvasWidth:I

    .line 54
    iput p2, p0, Lcom/mixpanel/android/mpmetrics/MiniCircleImageView;->mCanvasHeight:I

    .line 55
    return-void
.end method
