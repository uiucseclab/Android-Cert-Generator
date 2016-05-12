.class public Lcom/samsung/milk/milkvideo/utils/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final rs:Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;)V
    .locals 0
    .param p1, "rs"    # Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/Blur;->rs:Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;

    .line 21
    return-void
.end method

.method private blur(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layout"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-virtual {p0, p2}, Lcom/samsung/milk/milkvideo/utils/Blur;->takeSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 36
    .local v1, "snapshot":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/Blur;->rs:Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;

    invoke-virtual {v2, v1}, Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;->blurSnapshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, "blurred":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method


# virtual methods
.method public blur(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # I

    .prologue
    .line 30
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .local v0, "layout":Landroid/view/ViewGroup;
    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/utils/Blur;->blur(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 32
    return-void
.end method

.method public blur(Landroid/support/v4/app/Fragment;I)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "id"    # I

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 25
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 26
    .local v1, "mainLayout":Landroid/view/ViewGroup;
    invoke-direct {p0, v0, v1}, Lcom/samsung/milk/milkvideo/utils/Blur;->blur(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 27
    return-void
.end method

.method public blurSnapshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "snapshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/Blur;->rs:Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;->blurSnapshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blurSnapshot40Percent(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    const/high16 v0, 0x66000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/utils/Blur;->blurSnapshotWithColor(Landroid/app/Activity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blurSnapshotWithColor(Landroid/app/Activity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "alpha"    # I

    .prologue
    .line 58
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/utils/Blur;->rs:Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;

    invoke-virtual {v3, p2}, Lcom/samsung/milk/milkvideo/utils/RenderScriptBlur;->blurSnapshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "blurredBackground":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 61
    .local v2, "compositeBackground":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 64
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    return-object v2
.end method

.method public takeSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    .local v2, "screenshot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 49
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    return-object v1
.end method
