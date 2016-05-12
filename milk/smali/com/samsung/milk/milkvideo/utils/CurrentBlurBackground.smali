.class public Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
.super Ljava/lang/Object;
.source "CurrentBlurBackground.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final blur:Lcom/samsung/milk/milkvideo/utils/Blur;

.field private currentBackground:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/utils/Blur;)V
    .locals 0
    .param p1, "blur"    # Lcom/samsung/milk/milkvideo/utils/Blur;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    .line 19
    return-void
.end method

.method private setBlurredBackground(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/utils/Blur;->takeSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "originalSnapshot":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->blur:Lcom/samsung/milk/milkvideo/utils/Blur;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v4, v1, v0}, Lcom/samsung/milk/milkvideo/utils/Blur;->blurSnapshot40Percent(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->currentBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 42
    return-void
.end method


# virtual methods
.method public applyBlurredBackground(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->currentBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
.end method

.method public applyBlurredBackground(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "containerResId"    # I

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->currentBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

.method public getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->currentBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public setBlurredBackground(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/view/View;)V

    .line 25
    :cond_0
    return-void
.end method
