.class Lcom/mixpanel/android/surveys/SurveyChoiceView;
.super Landroid/widget/CheckedTextView;
.source "SurveyChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/surveys/SurveyChoiceView$1;,
        Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final BOX_PADDING_LEFT_DP:I = 0x16

.field private static final BOX_PADDING_TOP_DP:I = 0xc

.field private static final CHECKMARK_HEIGHT_DP:I = 0xe


# instance fields
.field private mCheckmarkLeftOffset:F

.field private mSurveyChoiceCheckMark:Landroid/graphics/drawable/Drawable;

.field private mTextLeftOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->initSurveyChoiceView()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->initSurveyChoiceView()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->initSurveyChoiceView()V

    .line 29
    return-void
.end method

.method static synthetic access$102(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/SurveyChoiceView;
    .param p1, "x1"    # F

    .prologue
    .line 14
    iput p1, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->mCheckmarkLeftOffset:F

    return p1
.end method

.method static synthetic access$202(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/SurveyChoiceView;
    .param p1, "x1"    # F

    .prologue
    .line 14
    iput p1, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->mTextLeftOffset:F

    return p1
.end method

.method private initSurveyChoiceView()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->mCheckmarkLeftOffset:F

    .line 97
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->mTextLeftOffset:F

    .line 98
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->mSurveyChoiceCheckMark:Landroid/graphics/drawable/Drawable;

    .line 51
    .local v5, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 52
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    iget v9, v11, Landroid/util/DisplayMetrics;->density:F

    .line 54
    .local v9, "density":F
    const/4 v8, 0x0

    .line 55
    .local v8, "checkmarkWidth":I
    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 56
    const/high16 v17, 0x41600000    # 14.0f

    mul-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v8, v0

    .line 58
    :cond_0
    move v7, v8

    .line 59
    .local v7, "checkmarkHeight":I
    const/high16 v17, 0x41400000    # 12.0f

    mul-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v4, v0

    .line 60
    .local v4, "boxPaddingTop":I
    const/high16 v17, 0x41b00000    # 22.0f

    mul-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v3, v0

    .line 63
    .local v3, "boxPaddingLeft":I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->mTextLeftOffset:F

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 65
    .local v13, "textPaddingLeft":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4, v3, v4}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setPadding(IIII)V

    .line 66
    invoke-super/range {p0 .. p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->mCheckmarkLeftOffset:F

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 68
    .local v6, "checkPaddingLeft":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v3, v4}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setPadding(IIII)V

    .line 69
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    if-eqz v5, :cond_1

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getGravity()I

    move-result v17

    and-int/lit8 v15, v17, 0x70

    .line 73
    .local v15, "verticalGravity":I
    const/16 v16, 0x0

    .line 75
    .local v16, "y":I
    sparse-switch v15, :sswitch_data_0

    .line 84
    :goto_0
    move/from16 v14, v16

    .line 85
    .local v14, "top":I
    add-int v2, v14, v7

    .line 86
    .local v2, "bottom":I
    move v10, v6

    .line 87
    .local v10, "left":I
    add-int v12, v10, v8

    .line 88
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getScrollX()I

    move-result v17

    add-int v17, v17, v10

    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getScrollX()I

    move-result v18

    add-int v18, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v14, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    .end local v2    # "bottom":I
    .end local v10    # "left":I
    .end local v12    # "right":I
    .end local v14    # "top":I
    .end local v15    # "verticalGravity":I
    .end local v16    # "y":I
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setPadding(IIII)V

    .line 93
    return-void

    .line 77
    .restart local v15    # "verticalGravity":I
    .restart local v16    # "y":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getHeight()I

    move-result v17

    sub-int v16, v17, v7

    .line 78
    goto :goto_0

    .line 80
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getHeight()I

    move-result v17

    sub-int v17, v17, v7

    div-int/lit8 v16, v17, 0x2

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iput-object p1, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->mSurveyChoiceCheckMark:Landroid/graphics/drawable/Drawable;

    .line 35
    return-void
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->isChecked()Z

    move-result v1

    .line 40
    .local v1, "wasChecked":Z
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 42
    new-instance v0, Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;-><init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;Lcom/mixpanel/android/surveys/SurveyChoiceView$1;)V

    .line 43
    .local v0, "transition":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    .end local v0    # "transition":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method
