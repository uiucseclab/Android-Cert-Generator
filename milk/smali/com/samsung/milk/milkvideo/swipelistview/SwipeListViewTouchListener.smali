.class public Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;
    }
.end annotation


# static fields
.field private static final DISPLACE_CHOICE:I = 0x50


# instance fields
.field private animationInProgress:Z

.field private animationTime:J

.field private backView:Landroid/view/View;

.field private checked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private configShortAnimationTime:J

.field private dismissAnimationRefCount:I

.field private downPosition:I

.field private downX:F

.field private frontView:Landroid/view/View;

.field private leftOffset:F

.field private listViewMoving:Z

.field private maxFlingVelocity:I

.field private minFlingVelocity:I

.field private oldSwipeActionLeft:I

.field private oldSwipeActionRight:I

.field private opened:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private openedRight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private parentView:Landroid/view/View;

.field private paused:Z

.field private pendingDismisses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/Rect;

.field private rightOffset:F

.field private slop:I

.field private swipeActionLeft:I

.field private swipeActionRight:I

.field private swipeBackView:I

.field private swipeClosesAllItemsWhenListMoves:Z

.field private swipeCurrentAction:I

.field private swipeDrawableChecked:I

.field private swipeDrawableUnchecked:I

.field private swipeFrontView:I

.field private swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

.field private swipeMode:I

.field private swipeOpenOnLongPress:Z

.field private swiping:Z

.field private swipingRight:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewWidth:I


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;II)V
    .locals 5
    .param p1, "swipeListView"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    .param p2, "swipeFrontView"    # I
    .param p3, "swipeBackView"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeMode:I

    .line 52
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeOpenOnLongPress:Z

    .line 53
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeClosesAllItemsWhenListMoves:Z

    .line 55
    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeFrontView:I

    .line 56
    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeBackView:I

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rect:Landroid/graphics/Rect;

    .line 67
    iput v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->leftOffset:F

    .line 68
    iput v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rightOffset:F

    .line 70
    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeDrawableChecked:I

    .line 71
    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeDrawableUnchecked:I

    .line 75
    iput v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    .line 78
    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    .line 90
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 92
    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    .line 93
    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    .line 111
    iput p2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeFrontView:I

    .line 112
    iput p3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeBackView:I

    .line 113
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 114
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->slop:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->minFlingVelocity:I

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->maxFlingVelocity:I

    .line 117
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->configShortAnimationTime:J

    .line 118
    iget-wide v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->configShortAnimationTime:J

    iput-wide v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationTime:J

    .line 119
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetCell()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeClosesAllItemsWhenListMoves:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->listViewMoving:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$806(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->removePendingDismisses(I)V

    return-void
.end method

.method private closeAnimate(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateRevealAnimate(Landroid/view/View;ZZI)V

    .line 503
    :cond_0
    return-void
.end method

.method public static enableDisableViewGroup(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1094
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1095
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1096
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1097
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1098
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    invoke-static {v2, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->enableDisableViewGroup(Landroid/view/ViewGroup;Z)V

    .line 1094
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    :cond_1
    return-void
.end method

.method private generateAnimate(Landroid/view/View;ZZI)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z
    .param p4, "position"    # I

    .prologue
    .line 517
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-nez v0, :cond_0

    .line 518
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateRevealAnimate(Landroid/view/View;ZZI)V

    .line 520
    :cond_0
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->parentView:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateDismissAnimate(Landroid/view/View;ZZI)V

    .line 523
    :cond_1
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 524
    invoke-direct {p0, p1, p4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateChoiceAnimate(Landroid/view/View;I)V

    .line 526
    :cond_2
    return-void
.end method

.method private generateChoiceAnimate(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationInProgress:Z

    .line 536
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationTime:J

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$4;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$4;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 547
    return-void
.end method

.method private generateDismissAnimate(Landroid/view/View;ZZI)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z
    .param p4, "position"    # I

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, "moveTo":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationInProgress:Z

    .line 560
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 561
    if-nez p2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 570
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 571
    .local v0, "alpha":I
    if-eqz p2, :cond_1

    .line 572
    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    .line 573
    const/4 v0, 0x0

    .line 576
    :cond_1
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationTime:J

    invoke-virtual {v2, v3, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;

    invoke-direct {v3, p0, p2, p1, p4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$5;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;ZLandroid/view/View;I)V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 592
    return-void

    .line 562
    .end local v0    # "alpha":I
    :cond_2
    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->leftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0

    .line 565
    :cond_3
    if-eqz p2, :cond_0

    .line 566
    if-eqz p3, :cond_4

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->leftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1
.end method

.method private generateRevealAnimate(Landroid/view/View;ZZI)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z
    .param p4, "position"    # I

    .prologue
    .line 603
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationInProgress:Z

    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "moveTo":I
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    if-nez p2, :cond_0

    .line 607
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rightOffset:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 615
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationTime:J

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;

    invoke-direct {v2, p0, p2, p4, p3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$6;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;ZIZ)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 636
    return-void

    .line 607
    :cond_1
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->leftOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 610
    :cond_2
    if-eqz p2, :cond_0

    .line 611
    if-eqz p3, :cond_3

    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rightOffset:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->leftOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_1
.end method

.method private openAnimate(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateRevealAnimate(Landroid/view/View;ZZI)V

    .line 491
    :cond_0
    return-void
.end method

.method private removePendingDismisses(I)V
    .locals 7
    .param p1, "originalHeight"    # I

    .prologue
    .line 1068
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1070
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 1071
    .local v0, "dismissPositions":[I
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1072
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;

    iget v5, v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->position:I

    aput v5, v0, v1

    .line 1071
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v5, v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onDismiss([I)V

    .line 1077
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;

    .line 1079
    .local v4, "pendingDismiss":Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;
    iget-object v5, v4, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 1080
    iget-object v5, v4, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 1081
    iget-object v5, v4, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 1082
    iget-object v5, v4, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1083
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1084
    iget-object v5, v4, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1088
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "pendingDismiss":Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetPendingDismisses()V

    .line 1090
    return-void
.end method

.method private resetCell()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 639
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 640
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 644
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 645
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    .line 646
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    .line 647
    iput v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    .line 649
    :cond_1
    return-void
.end method

.method private setActionsTo(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 911
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->oldSwipeActionRight:I

    .line 912
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->oldSwipeActionLeft:I

    .line 913
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    .line 914
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    .line 915
    return-void
.end method

.method private setBackView(Landroid/view/View;)V
    .locals 1
    .param p1, "backView"    # Landroid/view/View;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    .line 160
    new-instance v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$3;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$3;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method private setFrontView(Landroid/view/View;I)V
    .locals 1
    .param p1, "frontView"    # Landroid/view/View;
    .param p2, "childPosition"    # I

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    .line 138
    new-instance v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$1;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$2;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    return-void
.end method

.method private setParentView(Landroid/view/View;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->parentView:Landroid/view/View;

    .line 129
    return-void
.end method

.method private swapChoiceState(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->getCountSelected()I

    move-result v2

    .line 349
    .local v2, "lastCount":I
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 350
    .local v1, "lastChecked":Z
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    if-nez v1, :cond_3

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v6, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 351
    if-eqz v1, :cond_4

    add-int/lit8 v0, v2, -0x1

    .line 352
    .local v0, "count":I
    :goto_1
    if-nez v2, :cond_0

    if-ne v0, v4, :cond_0

    .line 353
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onChoiceStarted()V

    .line 354
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->closeOpenedItems()V

    .line 355
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setActionsTo(I)V

    .line 357
    :cond_0
    if-ne v2, v4, :cond_1

    if-nez v0, :cond_1

    .line 358
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onChoiceEnded()V

    .line 359
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->returnOldActions()V

    .line 361
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_2

    .line 362
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    if-nez v1, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, p1, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setItemChecked(IZ)V

    .line 364
    :cond_2
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    if-nez v1, :cond_6

    :goto_3
    invoke-virtual {v3, p1, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onChoiceChanged(IZ)V

    .line 365
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-virtual {p0, v3, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    .line 366
    return-void

    .end local v0    # "count":I
    :cond_3
    move v3, v5

    .line 350
    goto :goto_0

    .line 351
    :cond_4
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .restart local v0    # "count":I
    :cond_5
    move v3, v5

    .line 362
    goto :goto_2

    :cond_6
    move v4, v5

    .line 364
    goto :goto_3
.end method


# virtual methods
.method protected closeAnimate(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 329
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    if-eqz v3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 331
    .local v2, "firstVisibleChildPosition":I
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    sub-int v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 332
    .local v1, "childContainer":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 333
    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeFrontView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0, v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->closeAnimate(Landroid/view/View;I)V

    .line 340
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childContainer":Landroid/view/View;
    .end local v2    # "firstVisibleChildPosition":I
    :cond_0
    return-void
.end method

.method closeOpenedItems()V
    .locals 5

    .prologue
    .line 727
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 728
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 729
    .local v2, "start":I
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getLastVisiblePosition()I

    move-result v0

    .line 730
    .local v0, "end":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 731
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeFrontView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->closeAnimate(Landroid/view/View;I)V

    .line 730
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    :cond_1
    return-void
.end method

.method protected dismiss(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 392
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 393
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v1

    .line 394
    .local v1, "start":I
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getLastVisiblePosition()I

    move-result v0

    .line 395
    .local v0, "end":I
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    sub-int v5, p1, v1

    invoke-virtual {v4, v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 396
    .local v2, "view":Landroid/view/View;
    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    .line 397
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 398
    invoke-virtual {p0, v2, p1, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->performDismiss(Landroid/view/View;IZ)V

    .line 399
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 402
    :goto_0
    return v3

    .line 401
    :cond_0
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    new-instance v5, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getCountSelected()I
    .locals 4

    .prologue
    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "count":I
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 456
    .local v0, "aChecked":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "aChecked":Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method protected getPositionsSelected()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_1
    return-object v1
.end method

.method public getSwipeActionLeft()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    return v0
.end method

.method protected handlerPendingDismisses(I)V
    .locals 6
    .param p1, "originalHeight"    # I

    .prologue
    .line 1049
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1050
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$11;

    invoke-direct {v1, p0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$11;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;I)V

    iget-wide v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationTime:J

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1056
    return-void
.end method

.method protected isChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListViewMoving()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->listViewMoving:Z

    return v0
.end method

.method protected isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 666
    new-instance v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V

    return-object v0
.end method

.method public move(F)V
    .locals 8
    .param p1, "deltaX"    # F

    .prologue
    const/high16 v7, -0x3d600000    # -80.0f

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 928
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    invoke-virtual {v1, v4, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onMove(IF)V

    .line 929
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v0

    .line 930
    .local v0, "posX":F
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rightOffset:F

    add-float/2addr v1, v4

    :goto_0
    add-float/2addr v0, v1

    .line 933
    :cond_0
    cmpl-float v1, v0, v6

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    if-nez v1, :cond_1

    .line 937
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    .line 938
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    iput v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 939
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-ne v1, v5, :cond_6

    .line 940
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 945
    :cond_1
    :goto_2
    cmpg-float v1, v0, v6

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    if-eqz v1, :cond_2

    .line 949
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    .line 950
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    iput v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 951
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-ne v1, v5, :cond_8

    .line 952
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 957
    :cond_2
    :goto_4
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-ne v1, v2, :cond_9

    .line 958
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->parentView:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 959
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->parentView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 971
    :cond_3
    :goto_5
    return-void

    .line 931
    :cond_4
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->leftOffset:F

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_5
    move v1, v3

    .line 937
    goto :goto_1

    .line 942
    :cond_6
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v1, v3

    .line 949
    goto :goto_3

    .line 954
    :cond_8
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 961
    :cond_9
    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-ne v1, v5, :cond_e

    .line 962
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    if-eqz v1, :cond_a

    cmpl-float v1, p1, v6

    if-lez v1, :cond_a

    const/high16 v1, 0x42a00000    # 80.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_d

    :cond_a
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    if-nez v1, :cond_b

    cmpg-float v1, p1, v6

    if-gez v1, :cond_b

    cmpl-float v1, v0, v7

    if-gtz v1, :cond_d

    :cond_b
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    if-eqz v1, :cond_c

    const/high16 v1, 0x42a00000    # 80.0f

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_d

    :cond_c
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    if-nez v1, :cond_3

    cmpl-float v1, p1, v7

    if-lez v1, :cond_3

    .line 966
    :cond_d
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    goto :goto_5

    .line 968
    :cond_e
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v1

    add-float/2addr v1, p1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_3

    .line 969
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    goto :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->isSwipeEnabled()Z

    move-result v20

    if-nez v20, :cond_0

    .line 745
    const/16 v20, 0x0

    .line 907
    :goto_0
    return v20

    .line 747
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 748
    const/16 v20, 0x1

    goto :goto_0

    .line 751
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    .line 755
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 907
    :cond_3
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    .line 757
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->paused:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 758
    const/16 v20, 0x0

    goto :goto_0

    .line 760
    :cond_4
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildCount()I

    move-result v7

    .line 763
    .local v7, "childCount":I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [I

    .line 764
    .local v12, "listViewCoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getLocationOnScreen([I)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v12, v21

    sub-int v18, v20, v21

    .line 766
    .local v18, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v12, v21

    sub-int v19, v20, v21

    .line 768
    .local v19, "y":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v7, :cond_5

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 770
    .local v6, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 775
    .local v8, "childPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    if-ltz v20, :cond_6

    const/4 v3, 0x1

    .line 777
    .local v3, "allowSwipe":Z
    :goto_3
    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 778
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setParentView(Landroid/view/View;)V

    .line 779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeFrontView:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setFrontView(Landroid/view/View;I)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downX:F

    .line 782
    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_7

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_8

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 787
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 789
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeBackView:I

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 790
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeBackView:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setBackView(Landroid/view/View;)V

    .line 795
    .end local v3    # "allowSwipe":Z
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "childPosition":I
    :cond_5
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 796
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 775
    .restart local v6    # "child":Landroid/view/View;
    .restart local v8    # "childPosition":I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 784
    .restart local v3    # "allowSwipe":Z
    :cond_7
    const/16 v20, 0x0

    goto :goto_4

    .line 785
    :cond_8
    const/16 v20, 0x0

    goto :goto_5

    .line 768
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 800
    .end local v3    # "allowSwipe":Z
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childCount":I
    .end local v8    # "childPosition":I
    .end local v11    # "i":I
    .end local v12    # "listViewCoords":[I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swiping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downX:F

    move/from16 v21, v0

    sub-float v10, v20, v21

    .line 805
    .local v10, "deltaX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 808
    const/4 v13, 0x0

    .line 809
    .local v13, "swap":Z
    const/4 v14, 0x0

    .line 811
    .local v14, "swapRight":Z
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x3

    div-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a

    .line 812
    const/4 v13, 0x1

    .line 813
    const/16 v20, 0x0

    cmpl-float v20, v10, v20

    if-lez v20, :cond_c

    const/4 v14, 0x1

    .line 816
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->generateAnimate(Landroid/view/View;ZZI)V

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swapChoiceState(I)V

    .line 821
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 822
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 823
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downX:F

    .line 824
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swiping:Z

    goto/16 :goto_1

    .line 813
    :cond_c
    const/4 v14, 0x0

    goto :goto_6

    .line 829
    .end local v10    # "deltaX":F
    .end local v13    # "swap":Z
    .end local v14    # "swapRight":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->paused:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 836
    .local v16, "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 838
    .local v17, "velocityY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downX:F

    move/from16 v21, v0

    sub-float v10, v20, v21

    .line 839
    .restart local v10    # "deltaX":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 841
    .local v9, "deltaMode":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeMode:I

    .line 842
    .local v15, "swipeMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->changeSwipeMode(I)I

    move-result v5

    .line 843
    .local v5, "changeSwipeMode":I
    if-ltz v5, :cond_d

    .line 844
    move v15, v5

    .line 847
    :cond_d
    if-nez v15, :cond_11

    .line 848
    const/4 v9, 0x0

    .line 864
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->listViewMoving:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->slop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v9, v20

    if-lez v20, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/high16 v20, 0x40800000    # 4.0f

    mul-float v20, v20, v17

    cmpg-float v20, v20, v16

    if-gez v20, :cond_f

    .line 865
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swiping:Z

    .line 866
    const/16 v20, 0x0

    cmpl-float v20, v10, v20

    if-lez v20, :cond_15

    const/16 v20, 0x1

    :goto_8
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onStartClose(IZ)V

    .line 872
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 887
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 888
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 889
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-static/range {p2 .. p2}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v20

    shl-int/lit8 v20, v20, 0x8

    or-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 897
    .end local v4    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swiping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rightOffset:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    :goto_a
    add-float v10, v10, v20

    .line 901
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->move(F)V

    .line 902
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 849
    :cond_11
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_e

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 851
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v15, v0, :cond_12

    const/16 v20, 0x0

    cmpg-float v20, v10, v20

    if-gez v20, :cond_12

    .line 852
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 853
    :cond_12
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_e

    const/16 v20, 0x0

    cmpl-float v20, v10, v20

    if-lez v20, :cond_e

    .line 854
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 857
    :cond_13
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v15, v0, :cond_14

    const/16 v20, 0x0

    cmpl-float v20, v10, v20

    if-lez v20, :cond_14

    .line 858
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 859
    :cond_14
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_e

    const/16 v20, 0x0

    cmpg-float v20, v10, v20

    if-gez v20, :cond_e

    .line 860
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 866
    :cond_15
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 874
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 875
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 885
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onStartOpen(IIZ)V

    goto/16 :goto_9

    .line 876
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 877
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    goto :goto_b

    .line 878
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 879
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    goto :goto_b

    .line 880
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 881
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    goto :goto_b

    .line 883
    :cond_1a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeCurrentAction:I

    goto/16 :goto_b

    .line 899
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->viewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->leftOffset:F

    move/from16 v21, v0

    add-float v20, v20, v21

    goto/16 :goto_a

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected openAnimate(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeFrontView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0, v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openAnimate(Landroid/view/View;I)V

    .line 321
    :cond_0
    return-void
.end method

.method protected performDismiss(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I
    .param p3, "doPendingDismiss"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 999
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->enableDisableViewGroup(Landroid/view/ViewGroup;Z)V

    .line 1000
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1001
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1003
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationTime:J

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 1005
    .local v0, "animator":Lcom/nineoldandroids/animation/ValueAnimator;
    if-eqz p3, :cond_0

    .line 1006
    new-instance v3, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;

    invoke-direct {v3, p0, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$8;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;I)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1017
    :cond_0
    new-instance v3, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$9;

    invoke-direct {v3, p0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$9;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1024
    new-instance v3, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$10;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$10;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1032
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    new-instance v4, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;

    invoke-direct {v4, p0, p2, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 1034
    return-void
.end method

.method protected reloadChoiceStateInView(Landroid/view/View;I)V
    .locals 1
    .param p1, "frontView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 413
    invoke-virtual {p0, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeDrawableChecked:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeDrawableChecked:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeDrawableUnchecked:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeDrawableUnchecked:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected reloadSwipeStateInView(Landroid/view/View;I)V
    .locals 1
    .param p1, "frontView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 436
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public resetItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 300
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 302
    .local v0, "count":I
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 303
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected resetPendingDismisses()V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1041
    return-void
.end method

.method protected returnOldActions()V
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->oldSwipeActionRight:I

    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    .line 919
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->oldSwipeActionLeft:I

    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    .line 920
    return-void
.end method

.method public setAnimationTime(J)V
    .locals 2
    .param p1, "animationTime"    # J

    .prologue
    .line 181
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 182
    iput-wide p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationTime:J

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-wide v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->configShortAnimationTime:J

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->animationTime:J

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 657
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->paused:Z

    .line 658
    return-void

    .line 657
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeftOffset(F)V
    .locals 0
    .param p1, "leftOffset"    # F

    .prologue
    .line 203
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->leftOffset:F

    .line 204
    return-void
.end method

.method public setRightOffset(F)V
    .locals 0
    .param p1, "rightOffset"    # F

    .prologue
    .line 194
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->rightOffset:F

    .line 195
    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 0
    .param p1, "swipeActionLeft"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionLeft:I

    .line 258
    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 0
    .param p1, "swipeActionRight"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeActionRight:I

    .line 276
    return-void
.end method

.method public setSwipeClosesAllItemsWhenListMoves(Z)V
    .locals 0
    .param p1, "swipeClosesAllItemsWhenListMoves"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeClosesAllItemsWhenListMoves:Z

    .line 213
    return-void
.end method

.method protected setSwipeDrawableChecked(I)V
    .locals 0
    .param p1, "swipeDrawableChecked"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeDrawableChecked:I

    .line 285
    return-void
.end method

.method protected setSwipeDrawableUnchecked(I)V
    .locals 0
    .param p1, "swipeDrawableUnchecked"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeDrawableUnchecked:I

    .line 294
    return-void
.end method

.method public setSwipeMode(I)V
    .locals 0
    .param p1, "swipeMode"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeMode:I

    .line 231
    return-void
.end method

.method public setSwipeOpenOnLongPress(Z)V
    .locals 0
    .param p1, "swipeOpenOnLongPress"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeOpenOnLongPress:Z

    .line 222
    return-void
.end method

.method protected unselectedChoiceStates()V
    .locals 5

    .prologue
    .line 372
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 373
    .local v2, "start":I
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getLastVisiblePosition()I

    move-result v0

    .line 374
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 375
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    if-lt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    .line 376
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeFrontView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onChoiceEnded()V

    .line 381
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->returnOldActions()V

    .line 382
    return-void
.end method
