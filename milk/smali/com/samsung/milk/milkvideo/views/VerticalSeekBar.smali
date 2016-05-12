.class public Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# static fields
.field private static EDGE_TRACKING_THRESHOLD:I


# instance fields
.field private didStartTracking:Z

.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private maximumValue:I

.field private minimumValue:I

.field protected seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private startPosition:F

.field private thresholdActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x4b

    sput v0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->EDGE_TRACKING_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->minimumValue:I

    .line 21
    iput v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->maximumValue:I

    .line 29
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->thresholdActive:Z

    .line 33
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->minimumValue:I

    .line 21
    iput v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->maximumValue:I

    .line 29
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->thresholdActive:Z

    .line 38
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->minimumValue:I

    .line 21
    iput v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->maximumValue:I

    .line 29
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->thresholdActive:Z

    .line 43
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isRainbowBarInCocktail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->thresholdActive:Z

    .line 51
    :cond_0
    return-void
.end method

.method private updateScroll(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 138
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setProgress(I)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 140
    return-void
.end method


# virtual methods
.method public getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 64
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 65
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    :goto_0
    return v1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    move v1, v2

    .line 133
    goto :goto_0

    .line 88
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->startPosition:F

    .line 90
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->didStartTracking:Z

    .line 91
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->thresholdActive:Z

    if-nez v1, :cond_1

    .line 92
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->didStartTracking:Z

    .line 94
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 101
    :pswitch_1
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->didStartTracking:Z

    if-nez v1, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->startPosition:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 103
    .local v0, "moveDistance":F
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->thresholdActive:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->EDGE_TRACKING_THRESHOLD:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 104
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->didStartTracking:Z

    .line 106
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 111
    .end local v0    # "moveDistance":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->updateScroll(Landroid/view/MotionEvent;)V

    .line 113
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->getProgress()I

    move-result v3

    invoke-interface {v1, p0, v3, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_1

    .line 121
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->updateScroll(Landroid/view/MotionEvent;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 128
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->maximumValue:I

    .line 60
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->maximumValue:I

    iget v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->minimumValue:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 61
    return-void
.end method

.method public setMin(I)V
    .locals 2
    .param p1, "min"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->minimumValue:I

    .line 55
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->maximumValue:I

    iget v1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->minimumValue:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 56
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "seekBarListener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 145
    return-void
.end method
