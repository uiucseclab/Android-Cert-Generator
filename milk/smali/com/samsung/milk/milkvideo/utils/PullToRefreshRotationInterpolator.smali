.class public Lcom/samsung/milk/milkvideo/utils/PullToRefreshRotationInterpolator;
.super Ljava/lang/Object;
.source "PullToRefreshRotationInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final DEGREES_IN_CIRCLE:F = 360.0f

.field private static final ROTATION_DURATION:F = 2000.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x43520000    # 210.0f

    .line 11
    const/high16 v2, 0x44fa0000    # 2000.0f

    mul-float v1, p1, v2

    .line 14
    .local v1, "ms":F
    cmpg-float v2, v1, v3

    if-gez v2, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 22
    .local v0, "degrees":F
    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    div-float v2, v0, v2

    return v2

    .line 16
    .end local v0    # "degrees":F
    :cond_0
    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    const/high16 v2, 0x44a00000    # 1280.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 17
    const/high16 v2, 0x42100000    # 36.0f

    mul-float/2addr v2, v1

    const v3, 0x45ec4000    # 7560.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42d60000    # 107.0f

    div-float v0, v2, v3

    .restart local v0    # "degrees":F
    goto :goto_0

    .line 19
    .end local v0    # "degrees":F
    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    .restart local v0    # "degrees":F
    goto :goto_0
.end method
