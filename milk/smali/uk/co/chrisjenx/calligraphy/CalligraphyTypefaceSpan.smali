.class public Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CalligraphyTypefaceSpan.java"


# instance fields
.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 12
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 13
    return-void
.end method

.method private apply(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 27
    .local v2, "oldTypeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 28
    .local v1, "oldStyle":I
    :goto_0
    iget-object v3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v1, v3

    .line 30
    .local v0, "fakeStyle":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 31
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 34
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 35
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 38
    :cond_1
    iget-object v3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    return-void

    .line 27
    .end local v0    # "fakeStyle":I
    .end local v1    # "oldStyle":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "drawState"    # Landroid/text/TextPaint;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->apply(Landroid/graphics/Paint;)V

    .line 18
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->apply(Landroid/graphics/Paint;)V

    .line 23
    return-void
.end method
