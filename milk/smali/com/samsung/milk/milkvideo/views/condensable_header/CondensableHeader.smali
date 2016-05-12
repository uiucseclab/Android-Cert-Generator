.class public Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;
.super Landroid/widget/FrameLayout;
.source "CondensableHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$1;,
        Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$ScrollingGestureListener;
    }
.end annotation


# static fields
.field protected static final MAX_SIZE_FOR_NON_BOGUS_SCROLL:I = 0x32


# instance fields
.field protected activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

.field allHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected gestureListener:Landroid/view/GestureDetector$OnGestureListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

.field private leftButton:Landroid/widget/ImageButton;

.field private rightButton:Landroid/widget/ImageButton;

.field protected smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->inflateLayout(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findSubViews()V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->initializeSubViews()V

    .line 56
    new-instance v0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$ScrollingGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$ScrollingGestureListener;-><init>(Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader$1;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 57
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->gestureDetector:Landroid/view/GestureDetector;

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    .line 60
    return-void
.end method


# virtual methods
.method protected animateHeaderSwitch()V
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->allHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    .line 128
    .local v0, "holder":Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    if-eq v0, v2, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    .line 133
    .end local v0    # "holder":Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;
    :cond_1
    return-void
.end method

.method protected animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V
    .locals 3
    .param p1, "desiredHolder"    # Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->isOffScreen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->allHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    .line 140
    .local v0, "holder":Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;
    if-ne v0, p1, :cond_2

    .line 141
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->show()V

    .line 142
    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->hide()V

    goto :goto_0
.end method

.method public displaySmallHeaderText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 94
    const v4, 0x7f06010d

    invoke-virtual {p0, v4}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    .local v0, "headerText":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 98
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    .local v3, "textViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const v4, 0x7f06010e

    invoke-virtual {p0, v4}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "rightButton":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .local v2, "rightButtonParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method

.method protected findSubViews()V
    .locals 2

    .prologue
    .line 110
    const v0, 0x7f06010c

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->leftButton:Landroid/widget/ImageButton;

    .line 111
    const v0, 0x7f06010e

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->rightButton:Landroid/widget/ImageButton;

    .line 113
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->allHolders:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;

    const v1, 0x7f06010a

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/LargeHeaderHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    .line 116
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->allHolders:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lcom/samsung/milk/milkvideo/views/condensable_header/SmallHeaderHolder;

    const v1, 0x7f060109

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/SmallHeaderHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    .line 119
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->allHolders:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public handleExternalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public hideLargeHeader()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->isOffScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->hide()V

    .line 197
    :cond_0
    return-void
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const v0, 0x7f030056

    invoke-static {p1, v0, p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 124
    return-void
.end method

.method protected initializeSubViews()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->hideOnInitialLayout()V

    .line 64
    return-void
.end method

.method protected onFlingY(F)Z
    .locals 2
    .param p1, "velocityY"    # F

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->shouldSwitchHeaders(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->animateHeaderSwitch()V

    .line 164
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->scrollTo(F)V

    goto :goto_0
.end method

.method protected onScrollY(F)Z
    .locals 1
    .param p1, "distanceY"    # F

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->scrollBy(F)V

    .line 151
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->activeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->isOffScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->animateHeaderSwitch()V

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->hide()V

    .line 189
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    .line 190
    return-void
.end method

.method public setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->leftButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public setLeftButtonSrc(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->leftButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 79
    return-void
.end method

.method public setRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->rightButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public setRightButtonSrc(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->rightButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 83
    return-void
.end method

.method public setSmallHeaderOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->setTitleText(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->smallHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;->setTitleText(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->largeHeaderHolder:Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->animateToHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/HeaderHolder;)V

    .line 75
    return-void
.end method
