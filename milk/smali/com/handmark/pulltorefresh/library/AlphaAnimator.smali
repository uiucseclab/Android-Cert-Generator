.class Lcom/handmark/pulltorefresh/library/AlphaAnimator;
.super Ljava/lang/Object;
.source "AlphaAnimator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static animate(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;FF)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p3, "fromAlpha"    # F
    .param p4, "targetAlpha"    # F

    .prologue
    .line 46
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 48
    .local v0, "newAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 51
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    return-void
.end method

.method public static fadein(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/AlphaAnimator;->fadein(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 31
    return-void
.end method

.method public static fadein(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 33
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0, v1}, Lcom/handmark/pulltorefresh/library/AlphaAnimator;->animate(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;FF)V

    .line 34
    return-void
.end method

.method public static fadeout(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/AlphaAnimator;->fadeout(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 38
    return-void
.end method

.method public static fadeout(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/handmark/pulltorefresh/library/AlphaAnimator;->animate(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;FF)V

    .line 42
    return-void
.end method
