.class Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;
.super Landroid/view/animation/Animation;
.source "SurveyChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/surveys/SurveyChoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCheckAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/surveys/SurveyChoiceView;


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;->this$0:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;Lcom/mixpanel/android/surveys/SurveyChoiceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mixpanel/android/surveys/SurveyChoiceView;
    .param p2, "x1"    # Lcom/mixpanel/android/surveys/SurveyChoiceView$1;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;-><init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "checkmarkOffset":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 115
    .local v1, "textOffset":F
    cmpg-float v2, p1, v3

    if-gtz v2, :cond_0

    .line 116
    sub-float v0, p1, v3

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;->this$0:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    # setter for: Lcom/mixpanel/android/surveys/SurveyChoiceView;->mCheckmarkLeftOffset:F
    invoke-static {v2, v0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->access$102(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F

    .line 121
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;->this$0:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    # setter for: Lcom/mixpanel/android/surveys/SurveyChoiceView;->mTextLeftOffset:F
    invoke-static {v2, v1}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->access$202(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F

    .line 122
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView$SetCheckAnimation;->this$0:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-virtual {v2}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->requestLayout()V

    .line 123
    return-void

    .line 118
    :cond_0
    sub-float v2, p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
