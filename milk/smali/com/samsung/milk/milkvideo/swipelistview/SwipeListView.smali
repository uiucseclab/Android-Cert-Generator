.class public Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
.super Landroid/widget/ListView;
.source "SwipeListView.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final SWIPE_ACTION_CHOICE:I = 0x2

.field public static final SWIPE_ACTION_DISMISS:I = 0x1

.field public static final SWIPE_ACTION_NONE:I = 0x3

.field public static final SWIPE_ACTION_REVEAL:I = 0x0

.field public static final SWIPE_DEFAULT_BACK_VIEW:Ljava/lang/String; = "swipelist_backview"

.field public static final SWIPE_DEFAULT_FRONT_VIEW:Ljava/lang/String; = "swipelist_frontview"

.field public static final SWIPE_MODE_BOTH:I = 0x1

.field public static final SWIPE_MODE_DEFAULT:I = -0x1

.field public static final SWIPE_MODE_LEFT:I = 0x3

.field public static final SWIPE_MODE_NONE:I = 0x0

.field public static final SWIPE_MODE_RIGHT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SwipeListView"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING_X:I = 0x1

.field private static final TOUCH_STATE_SCROLLING_Y:I = 0x2


# instance fields
.field private lastMotionX:F

.field private lastMotionY:F

.field swipeBackView:I

.field swipeFrontView:I

.field private swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

.field private touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

.field private touchSlop:I

.field private touchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "swipeBackView"    # I
    .param p3, "swipeFrontView"    # I

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 122
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    .line 128
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    .line 129
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    .line 151
    iput p3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    .line 152
    iput p2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->init(Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    .line 128
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    .line 129
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    .line 161
    invoke-direct {p0, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->init(Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    .line 128
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    .line 129
    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    .line 169
    invoke-direct {p0, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->init(Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    return-object v0
.end method

.method private checkInMoving(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 686
    iget v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->lastMotionX:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    .line 687
    .local v1, "xDiff":I
    iget v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->lastMotionY:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v3, v6

    .line 689
    .local v3, "yDiff":I
    iget v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchSlop:I

    .line 690
    .local v0, "touchSlop":I
    if-le v1, v0, :cond_3

    move v2, v5

    .line 691
    .local v2, "xMoved":Z
    :goto_0
    if-le v3, v0, :cond_0

    move v4, v5

    .line 693
    .local v4, "yMoved":Z
    :cond_0
    if-eqz v2, :cond_1

    .line 694
    iput v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    .line 695
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->lastMotionX:F

    .line 696
    iput p2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->lastMotionY:F

    .line 699
    :cond_1
    if-eqz v4, :cond_2

    .line 700
    const/4 v5, 0x2

    iput v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    .line 701
    iput p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->lastMotionX:F

    .line 702
    iput p2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->lastMotionY:F

    .line 704
    :cond_2
    return-void

    .end local v2    # "xMoved":Z
    .end local v4    # "yMoved":Z
    :cond_3
    move v2, v4

    .line 690
    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 22
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 179
    const/4 v13, 0x1

    .line 180
    .local v13, "swipeMode":I
    const/16 v16, 0x1

    .line 181
    .local v16, "swipeOpenOnLongPress":Z
    const/4 v10, 0x1

    .line 182
    .local v10, "swipeCloseAllItemsWhenMoveList":Z
    const-wide/16 v8, 0x0

    .line 183
    .local v8, "swipeAnimationTime":J
    const/4 v14, 0x0

    .line 184
    .local v14, "swipeOffsetLeft":F
    const/4 v15, 0x0

    .line 185
    .local v15, "swipeOffsetRight":F
    const/4 v11, 0x0

    .line 186
    .local v11, "swipeDrawableChecked":I
    const/4 v12, 0x0

    .line 188
    .local v12, "swipeDrawableUnchecked":I
    const/4 v6, 0x0

    .line 189
    .local v6, "swipeActionLeft":I
    const/4 v7, 0x0

    .line 191
    .local v7, "swipeActionRight":I
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v17

    sget-object v18, Lcom/samsung/milk/milkvideo/R$styleable;->SwipeListView:[I

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 193
    .local v5, "styled":Landroid/content/res/TypedArray;
    const/16 v17, 0x7

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 194
    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 195
    const/16 v17, 0x9

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 196
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 197
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 198
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 199
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v8, v0

    .line 200
    const/16 v17, 0x4

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 201
    const/16 v17, 0xa

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 202
    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 203
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    .line 204
    const/16 v17, 0x6

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    .line 205
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    .end local v5    # "styled":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 209
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "swipelist_frontview"

    const-string v19, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "swipelist_backview"

    const-string v19, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 213
    :cond_2
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "You forgot the attributes swipeFrontView or swipeBackView. You can add this attributes or use \'%s\' and \'%s\' identifiers"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "swipelist_frontview"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "swipelist_backview"

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 217
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 218
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v4}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchSlop:I

    .line 219
    new-instance v17, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeBackView:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    .line 220
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-lez v17, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setAnimationTime(J)V

    .line 223
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setRightOffset(F)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setLeftOffset(F)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeActionLeft(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeActionRight(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeMode(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeClosesAllItemsWhenListMoves(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeOpenOnLongPress(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeDrawableChecked(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeDrawableUnchecked(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 234
    return-void
.end method


# virtual methods
.method protected changeSwipeMode(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, -0x1

    .line 527
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onChangeSwipeMode(I)I

    move-result v0

    .line 530
    :cond_0
    return v0
.end method

.method public closeAnimate(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->closeAnimate(I)V

    .line 365
    return-void
.end method

.method public closeOpenedItems()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->closeOpenedItems()V

    .line 711
    return-void
.end method

.method public dismiss(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 314
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v2, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismiss(I)I

    move-result v1

    .line 315
    .local v1, "height":I
    if-lez v1, :cond_0

    .line 316
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v2, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->handlerPendingDismisses(I)V

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 319
    .local v0, "dismissPositions":[I
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 320
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onDismiss([I)V

    .line 321
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetPendingDismisses()V

    goto :goto_0
.end method

.method public dismissSelected()V
    .locals 7

    .prologue
    .line 329
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->getPositionsSelected()Ljava/util/List;

    move-result-object v4

    .line 330
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [I

    .line 331
    .local v1, "dismissPositions":[I
    const/4 v2, 0x0

    .line 332
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 333
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 334
    .local v5, "position":I
    aput v5, v1, v3

    .line 335
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v6, v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->dismiss(I)I

    move-result v0

    .line 336
    .local v0, "auxHeight":I
    if-lez v0, :cond_0

    .line 337
    move v2, v0

    .line 332
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "auxHeight":I
    .end local v5    # "position":I
    :cond_1
    if-lez v2, :cond_2

    .line 341
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v6, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->handlerPendingDismisses(I)V

    .line 346
    :goto_1
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->returnOldActions()V

    .line 347
    return-void

    .line 343
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onDismiss([I)V

    .line 344
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetPendingDismisses()V

    goto :goto_1
.end method

.method public getCountSelected()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->getCountSelected()I

    move-result v0

    return v0
.end method

.method public getPositionsSelected()Ljava/util/List;
    .locals 1
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
    .line 271
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->getPositionsSelected()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeActionLeft()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->getSwipeActionLeft()I

    move-result v0

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->getSwipeActionRight()I

    move-result v0

    return v0
.end method

.method public isChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method protected onChoiceChanged(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 464
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onChoiceChanged(IZ)V

    .line 467
    :cond_0
    return-void
.end method

.method protected onChoiceEnded()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onChoiceEnded()V

    .line 485
    :cond_0
    return-void
.end method

.method protected onChoiceStarted()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onChoiceStarted()V

    .line 476
    :cond_0
    return-void
.end method

.method protected onClickBackView(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onClickBackView(I)V

    .line 431
    :cond_0
    return-void
.end method

.method protected onClickFrontView(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onClickFrontView(I)V

    .line 412
    :cond_0
    return-void
.end method

.method protected onClosed(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "fromRight"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onClosed(IZ)V

    .line 455
    :cond_0
    return-void
.end method

.method protected onDismiss([I)V
    .locals 1
    .param p1, "reverseSortedPositions"    # [I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onDismiss([I)V

    .line 376
    :cond_0
    return-void
.end method

.method protected onFirstListItem()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onFirstListItem()V

    .line 494
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 644
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 645
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 646
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 648
    .local v2, "y":F
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->isSwipeEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 650
    iget v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    if-ne v5, v3, :cond_1

    .line 651
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 676
    :cond_0
    :goto_0
    return v3

    .line 654
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 676
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 656
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->checkInMoving(FF)V

    .line 657
    iget v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 659
    :pswitch_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 660
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 661
    iput v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    .line 662
    iput v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->lastMotionX:F

    .line 663
    iput v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->lastMotionY:F

    move v3, v4

    .line 664
    goto :goto_0

    .line 666
    :pswitch_2
    iput v4, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    goto :goto_1

    .line 669
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v5, p0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 670
    iget v5, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLastListItem()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onLastListItem()V

    .line 503
    :cond_0
    return-void
.end method

.method protected onListChanged()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onListChanged()V

    .line 512
    :cond_0
    return-void
.end method

.method protected onLongClickFrontView(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onLongClickFrontView(I)Z

    move-result v0

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMove(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "x"    # F

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onMove(IF)V

    .line 524
    :cond_0
    return-void
.end method

.method protected onOpened(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "toRight"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onOpened(IZ)V

    .line 443
    :cond_0
    return-void
.end method

.method protected onStartClose(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "right"    # Z

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onStartClose(IZ)V

    .line 401
    :cond_0
    return-void
.end method

.method protected onStartOpen(IIZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "action"    # I
    .param p3, "right"    # Z

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;->onStartOpen(IIZ)V

    .line 389
    :cond_0
    return-void
.end method

.method public openAnimate(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->openAnimate(I)V

    .line 356
    return-void
.end method

.method public recycle(Landroid/view/View;I)V
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 243
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    .line 244
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    iget v3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeFrontView:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->reloadSwipeStateInView(Landroid/view/View;I)V

    .line 249
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    move-object v2, p1

    .line 250
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "nextChild":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "nextChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resetScrolling()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchState:I

    .line 547
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 40
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetItems()V

    .line 297
    new-instance v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView$1;-><init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 306
    return-void
.end method

.method public setAnimationTime(J)V
    .locals 1
    .param p1, "animationTime"    # J

    .prologue
    .line 636
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setAnimationTime(J)V

    .line 637
    return-void
.end method

.method public setOffsetLeft(F)V
    .locals 1
    .param p1, "offsetLeft"    # F

    .prologue
    .line 564
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setLeftOffset(F)V

    .line 565
    return-void
.end method

.method public setOffsetRight(F)V
    .locals 1
    .param p1, "offsetRight"    # F

    .prologue
    .line 555
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setRightOffset(F)V

    .line 556
    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 1
    .param p1, "swipeActionLeft"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeActionLeft(I)V

    .line 610
    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 1
    .param p1, "swipeActionRight"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeActionRight(I)V

    .line 628
    return-void
.end method

.method public setSwipeCloseAllItemsWhenMoveList(Z)V
    .locals 1
    .param p1, "swipeCloseAllItemsWhenMoveList"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeClosesAllItemsWhenListMoves(Z)V

    .line 574
    return-void
.end method

.method public setSwipeListViewListener(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;)V
    .locals 0
    .param p1, "swipeListViewListener"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->swipeListViewListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewListener;

    .line 540
    return-void
.end method

.method public setSwipeMode(I)V
    .locals 1
    .param p1, "swipeMode"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeMode(I)V

    .line 592
    return-void
.end method

.method public setSwipeOpenOnLongPress(Z)V
    .locals 1
    .param p1, "swipeOpenOnLongPress"    # Z

    .prologue
    .line 582
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setSwipeOpenOnLongPress(Z)V

    .line 583
    return-void
.end method

.method public unselectedChoiceStates()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->unselectedChoiceStates()V

    .line 288
    return-void
.end method
