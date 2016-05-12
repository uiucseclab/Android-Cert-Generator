.class Lcom/mixpanel/android/surveys/CardCarouselLayout;
.super Landroid/view/ViewGroup;
.source "CardCarouselLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/surveys/CardCarouselLayout$2;,
        Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;,
        Lcom/mixpanel/android/surveys/CardCarouselLayout$ChoiceAdapter;,
        Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;,
        Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;,
        Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MILLIS:J = 0x14aL

.field private static final ANIMATION_ROTATION_MILLIS:J = 0xc6L

.field private static EXIT_ANGLE:I

.field private static EXIT_ROTATION_CENTER_X:F

.field private static EXIT_ROTATION_CENTER_Y:F

.field private static EXIT_SIZE:F


# instance fields
.field private mBackupCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

.field private mListener:Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;

.field private final mMatchParentChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 216
    const/16 v0, 0x2d

    sput v0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ANGLE:I

    .line 217
    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    .line 218
    sput v1, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    .line 219
    sput v1, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mMatchParentChildren:Ljava/util/List;

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mListener:Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;

    .line 57
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->initCards(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mMatchParentChildren:Ljava/util/List;

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mListener:Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;

    .line 62
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->initCards(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mMatchParentChildren:Ljava/util/List;

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mListener:Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;

    .line 67
    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->initCards(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/surveys/CardCarouselLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mListener:Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;

    return-object v0
.end method

.method private enterLeft()Landroid/view/animation/Animation;
    .locals 12

    .prologue
    .line 278
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 279
    .local v11, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    sget v3, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ANGLE:I

    neg-int v3, v3

    int-to-float v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    const/4 v5, 0x1

    sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 283
    .local v0, "rotateIn":Landroid/view/animation/RotateAnimation;
    const-wide/16 v3, 0xc6

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 284
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 286
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    sget v2, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    sget v7, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    const/4 v8, 0x1

    sget v9, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 290
    .local v1, "scaleUp":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0xc6

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 291
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 293
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const v4, -0x4059999a    # -1.3f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 299
    .local v2, "slideX":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x14a

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 300
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 302
    return-object v11
.end method

.method private enterRight()Landroid/view/animation/Animation;
    .locals 12

    .prologue
    .line 221
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 222
    .local v11, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    sget v3, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ANGLE:I

    int-to-float v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    const/4 v5, 0x1

    sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 226
    .local v0, "rotateIn":Landroid/view/animation/RotateAnimation;
    const-wide/16 v3, 0xc6

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 227
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 229
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    sget v2, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    sget v7, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    const/4 v8, 0x1

    sget v9, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 233
    .local v1, "scaleUp":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0xc6

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 234
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 236
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 242
    .local v2, "slideX":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x14a

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 243
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 244
    return-object v11
.end method

.method private exitLeft()Landroid/view/animation/Animation;
    .locals 12

    .prologue
    .line 306
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 307
    .local v11, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    sget v3, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ANGLE:I

    neg-int v3, v3

    int-to-float v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    const/4 v5, 0x1

    sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 311
    .local v0, "rotateOut":Landroid/view/animation/RotateAnimation;
    const-wide/16 v3, 0x14a

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 312
    const-wide/16 v3, 0x84

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 313
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 315
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    const/4 v6, 0x1

    sget v7, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    const/4 v8, 0x1

    sget v9, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 319
    .local v1, "scaleDown":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x14a

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 320
    const-wide/16 v3, 0x84

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 321
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 323
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const v6, -0x3feccccd    # -2.3f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 329
    .local v2, "slideX":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 330
    const-wide/16 v3, 0x14a

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 331
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 333
    return-object v11
.end method

.method private exitRight()Landroid/view/animation/Animation;
    .locals 12

    .prologue
    .line 248
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 249
    .local v11, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    sget v3, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ANGLE:I

    int-to-float v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    const/4 v5, 0x1

    sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 253
    .local v0, "rotateOut":Landroid/view/animation/RotateAnimation;
    const-wide/16 v3, 0xc6

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 254
    const-wide/16 v3, 0x84

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 255
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 257
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_SIZE:F

    const/4 v6, 0x1

    sget v7, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_X:F

    const/4 v8, 0x1

    sget v9, Lcom/mixpanel/android/surveys/CardCarouselLayout;->EXIT_ROTATION_CENTER_Y:F

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 261
    .local v1, "scaleDown":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0xc6

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 262
    const-wide/16 v3, 0x84

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 263
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 265
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const v6, 0x3e99999a    # 0.3f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 271
    .local v2, "slideX":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 272
    const-wide/16 v3, 0x14a

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 273
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 274
    return-object v11
.end method

.method private initCards(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 208
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/mixpanel/android/R$layout;->com_mixpanel_android_question_card:I

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, "v1":Landroid/view/View;
    new-instance v3, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-direct {v3, p0, v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;-><init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V

    iput-object v3, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    .line 210
    sget v3, Lcom/mixpanel/android/R$layout;->com_mixpanel_android_question_card:I

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 211
    .local v2, "v2":Landroid/view/View;
    new-instance v3, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-direct {v3, p0, v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;-><init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V

    iput-object v3, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mBackupCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    .line 212
    invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->addView(Landroid/view/View;)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->addView(Landroid/view/View;)V

    .line 214
    return-void
.end method


# virtual methods
.method public moveTo(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;)V
    .locals 7
    .param p1, "question"    # Lcom/mixpanel/android/mpmetrics/Survey$Question;
    .param p2, "answerOrNull"    # Ljava/lang/String;
    .param p3, "direction"    # Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 81
    iget-object v2, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mBackupCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    .line 82
    .local v2, "tmp":Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;
    iget-object v5, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    iput-object v5, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mBackupCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    .line 83
    iput-object v2, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    .line 84
    iget-object v5, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-virtual {v5, p1, p2}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->showQuestionOnCard(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mBackupCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-virtual {v5}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->getView()Landroid/view/View;

    move-result-object v3

    .line 86
    .local v3, "viewShowing":Landroid/view/View;
    iget-object v5, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-virtual {v5}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->getView()Landroid/view/View;

    move-result-object v4

    .line 87
    .local v4, "viewToShow":Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "exit":Landroid/view/animation/Animation;
    const/4 v0, 0x0

    .line 92
    .local v0, "entrance":Landroid/view/animation/Animation;
    sget-object v5, Lcom/mixpanel/android/surveys/CardCarouselLayout$2;->$SwitchMap$com$mixpanel$android$surveys$CardCarouselLayout$Direction:[I

    invoke-virtual {p3}, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 102
    :goto_0
    new-instance v5, Lcom/mixpanel/android/surveys/CardCarouselLayout$1;

    invoke-direct {v5, p0, v3}, Lcom/mixpanel/android/surveys/CardCarouselLayout$1;-><init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->invalidate()V

    .line 115
    return-void

    .line 94
    :pswitch_0
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->exitLeft()Landroid/view/animation/Animation;

    move-result-object v1

    .line 95
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->enterRight()Landroid/view/animation/Animation;

    move-result-object v0

    .line 96
    goto :goto_0

    .line 98
    :pswitch_1
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->exitRight()Landroid/view/animation/Animation;

    move-result-object v1

    .line 99
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->enterLeft()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 189
    iget-object v6, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-virtual {v6}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->getView()Landroid/view/View;

    move-result-object v3

    .line 190
    .local v3, "visible":Landroid/view/View;
    const/4 v5, 0x0

    .line 191
    .local v5, "visibleWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 194
    .local v4, "visibleHeight":I
    invoke-virtual {v3, v7, v7, v5, v4}, Landroid/view/View;->layout(IIII)V

    .line 196
    .end local v4    # "visibleHeight":I
    :cond_0
    iget-object v6, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mBackupCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-virtual {v6}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->getView()Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "backup":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 199
    .local v2, "backupWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 200
    .local v1, "backupHeight":I
    add-int v6, v5, v2

    invoke-virtual {v0, v5, v7, v6, v1}, Landroid/view/View;->layout(IIII)V

    .line 202
    .end local v1    # "backupHeight":I
    .end local v2    # "backupWidth":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildCount()I

    move-result v3

    .line 135
    .local v3, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v10, v11, :cond_3

    :cond_0
    const/4 v9, 0x1

    .line 138
    .local v9, "measureMatchParentChildren":Z
    :goto_0
    iget-object v10, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mMatchParentChildren:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 140
    const/4 v7, 0x0

    .line 141
    .local v7, "maxHeight":I
    const/4 v8, 0x0

    .line 143
    .local v8, "maxWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 144
    invoke-virtual {p0, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 147
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v10, 0x0

    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 148
    .local v2, "childWidthMeasureSpec":I
    const/4 v10, 0x0

    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 149
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 152
    if-eqz v9, :cond_2

    .line 153
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 155
    :cond_1
    iget-object v10, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mMatchParentChildren:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "i":I
    .end local v7    # "maxHeight":I
    .end local v8    # "maxWidth":I
    .end local v9    # "measureMatchParentChildren":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 161
    .restart local v4    # "i":I
    .restart local v7    # "maxHeight":I
    .restart local v8    # "maxWidth":I
    .restart local v9    # "measureMatchParentChildren":Z
    :cond_4
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 162
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 163
    invoke-static {v8, p1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->resolveSize(II)I

    move-result v10

    invoke-static {v7, p2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->resolveSize(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->setMeasuredDimension(II)V

    .line 166
    iget-object v10, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mMatchParentChildren:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 167
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 171
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getMeasuredWidth()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 177
    .restart local v2    # "childWidthMeasureSpec":I
    :goto_3
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    .line 178
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getMeasuredHeight()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 183
    .restart local v1    # "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 174
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_5
    const/4 v10, 0x0

    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildMeasureSpec(III)I

    move-result v2

    .restart local v2    # "childWidthMeasureSpec":I
    goto :goto_3

    .line 180
    :cond_6
    const/4 v10, 0x0

    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildMeasureSpec(III)I

    move-result v1

    .restart local v1    # "childHeightMeasureSpec":I
    goto :goto_4

    .line 185
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    return-void
.end method

.method public replaceTo(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;)V
    .locals 1
    .param p1, "question"    # Lcom/mixpanel/android/mpmetrics/Survey$Question;
    .param p2, "answerOrNull"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-virtual {v0, p1, p2}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->showQuestionOnCard(Lcom/mixpanel/android/mpmetrics/Survey$Question;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->removeAllViews()V

    .line 121
    iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mVisibleCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-virtual {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mBackupCard:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    invoke-virtual {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->invalidate()V

    .line 124
    return-void
.end method

.method public setOnQuestionAnsweredListener(Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->mListener:Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;

    .line 77
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
