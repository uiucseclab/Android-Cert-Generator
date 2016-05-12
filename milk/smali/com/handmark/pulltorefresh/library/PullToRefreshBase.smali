.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/IPullToRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/handmark/pulltorefresh/library/IPullToRefresh",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final DEFAULT_FRICTION:F = 2.0f

.field public static final DEFAULT_SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final DEFAULT_SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final DFEAULT_REFRESHABLEVIEW_REFRESHING_BAR_SIZE:I = -0x2

.field static final GOOGLE_STYLE_VIEW_APPEAREANCE_DURATION:I = 0xc8

.field static final LAYER_TYPE_HARDWARE:I = 0x2

.field static final LAYER_TYPE_NONE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field static final REFRESHABLEVIEW_REFRESHING_BAR_VIEW_WHILE_REFRESHING_DURATION:I = 0x64

.field static final REFRESHABLE_VIEW_HIDE_WHILE_REFRESHING_DURATION:I = 0x1f4

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z


# instance fields
.field private mActionBarHeight:I

.field private mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mFriction:F

.field private mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

.field private mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

.field private mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingLayoutClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field private mRefeshableViewHideWhileRefreshingDuration:I

.field private mRefeshableViewHideWhileRefreshingEnabled:Z

.field private mRefeshableViewRefreshingBarHeight:I

.field private mRefeshableViewRefreshingBarViewWhileRefreshingDuration:I

.field private mRefeshableViewRefreshingBarViewWhileRefreshingEnabled:Z

.field private mRefeshableViewRefreshingBarWidth:I

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mRefreshing:Z

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mSetGoogleViewLayoutSizeToActionbarHeight:Z

.field private mShowGoogleStyleViewAnimationDuration:I

.field private mShowGoogleStyleViewAnimationEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mSmoothScrollDurationMs:I

.field private mSmoothScrollLongDurationMs:I

.field private mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field private mStatusBarHeight:I

.field private mTopActionbarLayout:Landroid/widget/FrameLayout;

.field private mTouchSlop:I

.field private mWindowAttached:Z

.field private mYPositionOfGoogleStyleProgressLayout:I

.field private mYPositionOfGoogleStyleViewLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v5, 0x0

    const/16 v4, 0xc8

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 195
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I

    .line 92
    const/16 v0, 0x145

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollLongDurationMs:I

    .line 94
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 95
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 96
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 102
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 103
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 104
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 105
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 109
    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingLayoutClazz:Ljava/lang/Class;

    .line 121
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mWindowAttached:Z

    .line 153
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationEnabled:Z

    .line 157
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationDuration:I

    .line 161
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingEnabled:Z

    .line 165
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingDuration:I

    .line 169
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingEnabled:Z

    .line 173
    const/16 v0, 0x64

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingDuration:I

    .line 177
    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarWidth:I

    .line 181
    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarHeight:I

    .line 186
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSetGoogleViewLayoutSizeToActionbarHeight:Z

    .line 196
    invoke-direct {p0, p1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v4, 0xc8

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I

    .line 92
    const/16 v0, 0x145

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollLongDurationMs:I

    .line 94
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 95
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 96
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 102
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 103
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 104
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 105
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingLayoutClazz:Ljava/lang/Class;

    .line 121
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mWindowAttached:Z

    .line 153
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationEnabled:Z

    .line 157
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationDuration:I

    .line 161
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingEnabled:Z

    .line 165
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingDuration:I

    .line 169
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingEnabled:Z

    .line 173
    const/16 v0, 0x64

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingDuration:I

    .line 177
    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarWidth:I

    .line 181
    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarHeight:I

    .line 186
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSetGoogleViewLayoutSizeToActionbarHeight:Z

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v5, 0x0

    const/16 v4, 0xc8

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 205
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I

    .line 92
    const/16 v0, 0x145

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollLongDurationMs:I

    .line 94
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 95
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 96
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 102
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 103
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 104
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 105
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 109
    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingLayoutClazz:Ljava/lang/Class;

    .line 121
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mWindowAttached:Z

    .line 153
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationEnabled:Z

    .line 157
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationDuration:I

    .line 161
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingEnabled:Z

    .line 165
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingDuration:I

    .line 169
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingEnabled:Z

    .line 173
    const/16 v0, 0x64

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingDuration:I

    .line 177
    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarWidth:I

    .line 181
    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarHeight:I

    .line 186
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSetGoogleViewLayoutSizeToActionbarHeight:Z

    .line 206
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 207
    invoke-direct {p0, p1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Ljava/lang/Class;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p3, "loadingLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;>;"
    const/4 v5, 0x0

    const/16 v4, 0xc8

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 211
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I

    .line 92
    const/16 v0, 0x145

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollLongDurationMs:I

    .line 94
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 95
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 96
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 102
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 103
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 104
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 105
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 109
    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingLayoutClazz:Ljava/lang/Class;

    .line 121
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mWindowAttached:Z

    .line 153
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationEnabled:Z

    .line 157
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationDuration:I

    .line 161
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingEnabled:Z

    .line 165
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingDuration:I

    .line 169
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingEnabled:Z

    .line 173
    const/16 v0, 0x64

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingDuration:I

    .line 177
    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarWidth:I

    .line 181
    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarHeight:I

    .line 186
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSetGoogleViewLayoutSizeToActionbarHeight:Z

    .line 212
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 213
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingLayoutClazz:Ljava/lang/Class;

    .line 214
    invoke-direct {p0, p1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)I
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mActionBarHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->determineYPositionOfGoogleStyleProgressLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)I
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mYPositionOfGoogleStyleProgressLayout:I

    return v0
.end method

.method static synthetic access$700(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)I
    .locals 1
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    .prologue
    .line 49
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I

    return v0
.end method

.method static synthetic access$900(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 1348
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1349
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1352
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    return-void
.end method

.method private callRefreshListener()V
    .locals 2

    .prologue
    .line 1357
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->GOOGLE_STYLE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_3

    .line 1361
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0

    .line 1362
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private createGoogleStyleProgressLayout(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;
    .locals 2
    .param p1, "layoutCode"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 750
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayoutFactory;->createGoogleStyleProgressLayoutClazzByLayoutCode(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 751
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;>;"
    invoke-static {v0, p2, p3}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayoutFactory;->createGoogleStyleProgressLayout(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    move-result-object v1

    return-object v1
.end method

.method private createGoogleStyleViewLayout(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    .locals 2
    .param p1, "layoutCode"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 737
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->createGoogleStyleViewLayoutClazzByLayoutCode(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 738
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    invoke-static {v0, p2, p3}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->createGoogleStyleViewLayout(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    move-result-object v1

    return-object v1
.end method

.method private determineYPositionOfGoogleStyleProgressLayout()V
    .locals 2

    .prologue
    .line 1544
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1545
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mStatusBarHeight:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mYPositionOfGoogleStyleProgressLayout:I

    .line 1549
    :goto_0
    return-void

    .line 1547
    :cond_0
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mActionBarHeight:I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mYPositionOfGoogleStyleProgressLayout:I

    goto :goto_0
.end method

.method private determineYPositionOfGoogleStyleViewLayout()V
    .locals 2

    .prologue
    .line 1534
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1535
    const/4 v0, 0x0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mYPositionOfGoogleStyleViewLayout:I

    .line 1539
    :goto_0
    return-void

    .line 1537
    :cond_0
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mStatusBarHeight:I

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mYPositionOfGoogleStyleViewLayout:I

    goto :goto_0
.end method

.method private filterModeForSDKVersion()V
    .locals 2

    .prologue
    .line 1528
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->GOOGLE_STYLE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1529
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1531
    :cond_0
    return-void
.end method

.method private generateCircleProgressBar(Landroid/content/Context;)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1730
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 1731
    .local v0, "circleProgressBar":Landroid/widget/ProgressBar;
    const v1, 0x1010077

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScrollBarStyle(I)V

    .line 1732
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1734
    return-object v0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1818
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1824
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    .line 1820
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 2

    .prologue
    .line 1830
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1835
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFriction:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    .line 1832
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFriction:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private hideViewTopLayout()V
    .locals 12

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v11, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1597
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1601
    :cond_0
    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationEnabled:Z

    if-ne v3, v5, :cond_1

    .line 1603
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1604
    .local v10, "set":Landroid/view/animation/AnimationSet;
    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1605
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1606
    new-instance v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;

    invoke-direct {v3, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$6;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1621
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v6, v3

    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mStatusBarHeight:I

    neg-int v3, v3

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1622
    .local v0, "transAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1623
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1624
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1626
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1633
    .end local v0    # "transAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    :goto_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v1, v11}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->setVisibility(I)V

    goto :goto_0

    .line 1629
    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mActionBarHeight:I

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1630
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1371
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1373
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1374
    iget-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1523
    :goto_0
    return-void

    .line 1378
    :cond_0
    invoke-static {}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->getInstance()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->init(Landroid/content/Context;)V

    .line 1385
    sget-object v9, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1386
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1387
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    invoke-static {v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v9

    iput-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1388
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->filterModeForSDKVersion()V

    .line 1391
    :cond_1
    sget-object v9, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1397
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    .line 1401
    :goto_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1402
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    iput v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTouchSlop:I

    .line 1405
    const-string v9, "gravity"

    invoke-static {p2, v9}, Lcom/handmark/pulltorefresh/library/internal/Utils;->existAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1406
    const/16 v9, 0x11

    invoke-virtual {p0, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setGravity(I)V

    .line 1410
    :cond_2
    const/4 v6, 0x0

    .line 1411
    .local v6, "loadingLayoutCode":Ljava/lang/String;
    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1412
    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1415
    :cond_3
    invoke-static {v6}, Lcom/handmark/pulltorefresh/library/LoadingLayoutFactory;->createLoadingLayoutClazzByLayoutCode(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    iput-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingLayoutClazz:Ljava/lang/Class;

    .line 1419
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1420
    iget-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1423
    sget-object v9, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v9, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v9

    iput-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 1424
    sget-object v9, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v9, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v9

    iput-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 1430
    const/4 v5, 0x0

    .line 1431
    .local v5, "googleStyleViewLayoutCode":Ljava/lang/String;
    const/16 v9, 0xe

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1432
    const/16 v9, 0xe

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1435
    :cond_4
    const/4 v4, 0x0

    .line 1436
    .local v4, "googleStyleProgressLayoutCode":Ljava/lang/String;
    const/16 v9, 0xe

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1437
    const/16 v9, 0xf

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1440
    :cond_5
    invoke-direct {p0, v5, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createGoogleStyleViewLayout(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    move-result-object v9

    iput-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    .line 1442
    invoke-direct {p0, v4, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createGoogleStyleProgressLayout(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    move-result-object v9

    iput-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    .line 1444
    const/16 v9, 0x1a

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1445
    const/16 v9, 0x1a

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationEnabled:Z

    .line 1447
    :cond_6
    const/16 v9, 0x1b

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1448
    const/16 v9, 0x1b

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingEnabled:Z

    .line 1450
    :cond_7
    const/16 v9, 0x1c

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1451
    const/16 v9, 0x1c

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingEnabled:Z

    .line 1453
    :cond_8
    const/16 v9, 0x1d

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1454
    const/16 v9, 0x1d

    const/16 v10, 0xc8

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationDuration:I

    .line 1456
    :cond_9
    const/16 v9, 0x1e

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1457
    const/16 v9, 0x1e

    const/16 v10, 0x1f4

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingDuration:I

    .line 1459
    :cond_a
    const/16 v9, 0x1f

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1460
    const/16 v9, 0x1f

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingDuration:I

    .line 1464
    :cond_b
    const/16 v9, 0x19

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1465
    const/16 v9, 0x19

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSetGoogleViewLayoutSizeToActionbarHeight:Z

    .line 1469
    :cond_c
    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1470
    const/16 v9, 0x20

    const/4 v10, -0x2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarWidth:I

    .line 1472
    :cond_d
    const/16 v9, 0x21

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1473
    const/16 v9, 0x21

    const/4 v10, -0x2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarHeight:I

    .line 1478
    :cond_e
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1479
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1480
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_f

    .line 1481
    iget-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1491
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_f
    :goto_2
    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1492
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 1495
    :cond_10
    const/16 v9, 0x16

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1496
    const/16 v9, 0x16

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1501
    :cond_11
    const/16 v9, 0x13

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1502
    .local v3, "friction":F
    const/16 v9, 0x14

    const/16 v10, 0xc8

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1503
    .local v7, "smoothScrollDuration":I
    const/16 v9, 0x15

    const/16 v10, 0x145

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 1505
    .local v8, "smoothScrollLongDuration":I
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setFriction(F)V

    .line 1506
    invoke-virtual {p0, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setSmoothScrollDuration(I)V

    .line 1507
    invoke-virtual {p0, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setSmoothScrollLongDuration(I)V

    .line 1511
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1512
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1515
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->initActionBarSize(Landroid/content/Context;)V

    .line 1516
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->initStatusBarSize(Landroid/content/Context;)V

    .line 1518
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->determineYPositionOfGoogleStyleViewLayout()V

    .line 1521
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    goto/16 :goto_0

    .line 1393
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    .end local v3    # "friction":F
    .end local v4    # "googleStyleProgressLayoutCode":Ljava/lang/String;
    .end local v5    # "googleStyleViewLayoutCode":Ljava/lang/String;
    .end local v6    # "loadingLayoutCode":Ljava/lang/String;
    .end local v7    # "smoothScrollDuration":I
    .end local v8    # "smoothScrollLongDuration":I
    :pswitch_0
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_1

    .line 1483
    .restart local v2    # "config":Landroid/view/ViewConfiguration;
    .restart local v4    # "googleStyleProgressLayoutCode":Ljava/lang/String;
    .restart local v5    # "googleStyleViewLayoutCode":Ljava/lang/String;
    .restart local v6    # "loadingLayoutCode":Ljava/lang/String;
    :cond_12
    const/16 v9, 0x22

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1484
    const-string v9, "ptrAdapterViewBackground"

    const-string v10, "ptrRefreshableViewBackground"

    invoke-static {v9, v10}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const/16 v9, 0x22

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1486
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_f

    .line 1487
    iget-object v9, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initActionBarSize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1715
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/internal/Utils;->getActionBarSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mActionBarHeight:I

    .line 1716
    return-void
.end method

.method private initStatusBarSize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1722
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/internal/Utils;->getStatusBarSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mStatusBarHeight:I

    .line 1723
    return-void
.end method

.method private initTopViewGroup()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v10, 0x4

    .line 1652
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    iget-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1659
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 1660
    .local v6, "view":Landroid/view/View;
    const/4 v5, 0x0

    .line 1661
    .local v5, "topViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1662
    .local v1, "context":Landroid/content/Context;
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-nez v7, :cond_3

    .line 1663
    const-string v7, "PullToRefresh"

    const-string v8, "Current root view is not ViewGroup type. Google Style Pull To Refresh mode will be disabled."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    new-instance v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$7;

    .end local v5    # "topViewGroup":Landroid/view/ViewGroup;
    invoke-direct {v5, p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$7;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Landroid/content/Context;)V

    .line 1675
    .restart local v5    # "topViewGroup":Landroid/view/ViewGroup;
    :goto_1
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1678
    .local v2, "layout":Landroid/widget/FrameLayout;
    const/4 v3, -0x1

    .line 1680
    .local v3, "matchParent":I
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mActionBarHeight:I

    invoke-direct {v4, v3, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1682
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1683
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1686
    iget-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1687
    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->generateCircleProgressBar(Landroid/content/Context;)Landroid/widget/ProgressBar;

    move-result-object v7

    iput-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewProgressBar:Landroid/widget/ProgressBar;

    .line 1688
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarWidth:I

    iget v8, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarHeight:I

    invoke-direct {v0, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1689
    .local v0, "barParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1690
    iget-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1691
    iget-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewProgressBar:Landroid/widget/ProgressBar;

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1694
    .end local v0    # "barParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    iget-object v8, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1695
    iget-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v7, v10}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->setVisibility(I)V

    .line 1697
    new-instance v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;

    invoke-direct {v7, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$8;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 1707
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    goto :goto_0

    .end local v2    # "layout":Landroid/widget/FrameLayout;
    .end local v3    # "matchParent":I
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    move-object v5, v6

    .line 1671
    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_1
.end method

.method private isReadyForPull()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 1738
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1747
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1741
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    goto :goto_0

    .line 1743
    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    goto :goto_0

    .line 1745
    :pswitch_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1738
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private pullEvent()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1762
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1769
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    .line 1770
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 1774
    .local v2, "lastMotionValue":F
    :goto_0
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1785
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFriction:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1786
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1790
    .local v1, "itemDimension":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1792
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1793
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1794
    .local v4, "scale":F
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 1804
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    .line 1808
    :goto_2
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1809
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v6, v8, [Z

    invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 1814
    .end local v4    # "scale":F
    :cond_0
    :goto_3
    return-void

    .line 1764
    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_0
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    .line 1765
    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 1766
    .restart local v2    # "lastMotionValue":F
    goto :goto_0

    .line 1776
    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFriction:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1777
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .line 1778
    .restart local v1    # "itemDimension":I
    goto :goto_1

    .line 1780
    .end local v1    # "itemDimension":I
    .end local v3    # "newScrollValue":I
    :pswitch_2
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFriction:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1781
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getGoogleStyleViewSize()I

    move-result v1

    .line 1782
    .restart local v1    # "itemDimension":I
    goto :goto_1

    .line 1796
    .restart local v4    # "scale":F
    :pswitch_3
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    goto :goto_2

    .line 1799
    :pswitch_4
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->onPull(F)V

    .line 1800
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->onPull(F)V

    goto :goto_2

    .line 1810
    :cond_1
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1811
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v6, v8, [Z

    invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    goto :goto_3

    .line 1762
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1774
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1794
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showViewTopLayout()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1554
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1591
    :goto_0
    return-void

    .line 1559
    :cond_0
    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationEnabled:Z

    if-ne v3, v5, :cond_1

    .line 1560
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1561
    .local v10, "set":Landroid/view/animation/AnimationSet;
    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowGoogleStyleViewAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1562
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1563
    new-instance v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;

    invoke-direct {v3, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1578
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mActionBarHeight:I

    neg-int v3, v3

    int-to-float v6, v3

    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mYPositionOfGoogleStyleViewLayout:I

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1579
    .local v0, "transAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1580
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1583
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1590
    .end local v0    # "transAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    :goto_1
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v2, v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->setVisibility(I)V

    goto :goto_0

    .line 1586
    :cond_1
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mYPositionOfGoogleStyleViewLayout:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1587
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private final smoothScrollTo(IJ)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 1846
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1847
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1851
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1856
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1862
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1866
    .local v2, "oldScrollValue":I
    :goto_0
    if-eq v2, p1, :cond_4

    .line 1867
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1869
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1871
    :cond_1
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    .line 1873
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1874
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1883
    :cond_2
    :goto_1
    return-void

    .line 1858
    .end local v2    # "oldScrollValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result v2

    .line 1859
    .restart local v2    # "oldScrollValue":I
    goto :goto_0

    .line 1876
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1879
    :cond_4
    if-eqz p6, :cond_2

    .line 1881
    invoke-interface {p6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    goto :goto_1

    .line 1856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final smoothScrollToAndBack(I)V
    .locals 7
    .param p1, "y"    # I

    .prologue
    .line 1886
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$9;

    invoke-direct {v6, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1893
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 223
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-void

    .line 228
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 706
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 707
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 714
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 715
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 725
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingLayoutClazz:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-static {v0, p1, p2, v1, p3}, Lcom/handmark/pulltorefresh/library/LoadingLayoutFactory;->createLoadingLayout(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
    .locals 2
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 758
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;-><init>()V

    .line 760
    .local v0, "proxy":Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 763
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 767
    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 235
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V

    .line 243
    :goto_0
    return v0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .locals 1

    .prologue
    .line 787
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 788
    return-void
.end method

.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method public final getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 2

    .prologue
    .line 663
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v0

    .line 664
    .local v0, "orientation":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 667
    :cond_0
    return-object v0
.end method

.method protected final getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 791
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 795
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getGoogleStyleViewSize()I
    .locals 1

    .prologue
    .line 807
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 799
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 803
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, v0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
    .locals 1
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 263
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 811
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 815
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollLongDurationMs:I

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 819
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 278
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 283
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 829
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isScrollingWhileRefreshingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 295
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .prologue
    .line 300
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 306
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1638
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mWindowAttached:Z

    .line 1641
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->initTopViewGroup()V

    .line 1642
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForGoogleStyleMode()V

    .line 1643
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 322
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 393
    :goto_0
    return v6

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 328
    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 329
    :cond_1
    iput-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 333
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 334
    goto :goto_0

    .line 337
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 393
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 340
    :pswitch_1
    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    .line 341
    goto :goto_0

    .line 344
    :cond_5
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 350
    .local v4, "x":F
    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    .line 357
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 358
    .local v2, "diff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 361
    .local v3, "oppositeDiff":F
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 363
    .local v0, "absDiff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 364
    :cond_6
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_8

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 365
    iput v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 366
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 367
    iput-boolean v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 368
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 369
    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_1

    .line 352
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_2
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .line 353
    .restart local v2    # "diff":F
    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .line 354
    .restart local v3    # "oppositeDiff":F
    goto :goto_2

    .line 371
    .restart local v0    # "absDiff":F
    :cond_8
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 372
    iput v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 373
    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 374
    iput-boolean v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 375
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 376
    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 384
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 387
    iput-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 350
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 856
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 865
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 872
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 888
    :goto_0
    return-void

    .line 874
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 877
    :pswitch_1
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->showViewTopLayout()V

    .line 878
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->pullToRefresh()V

    .line 879
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->pullToRefresh()V

    goto :goto_0

    .line 882
    :pswitch_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 872
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 2

    .prologue
    .line 398
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 401
    :cond_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 5
    .param p1, "doScroll"    # Z

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 898
    iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshing:Z

    .line 900
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 904
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 906
    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 908
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingEnabled:Z

    if-ne v1, v3, :cond_2

    .line 909
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingDuration:I

    invoke-static {v1, v2}, Lcom/handmark/pulltorefresh/library/AlphaAnimator;->fadeout(Landroid/view/View;I)V

    .line 912
    :cond_2
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingEnabled:Z

    if-ne v1, v3, :cond_3

    .line 913
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 914
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingDuration:I

    invoke-static {v1, v2}, Lcom/handmark/pulltorefresh/library/AlphaAnimator;->fadein(Landroid/view/View;I)V

    .line 917
    :cond_3
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->refreshing()V

    .line 918
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->refreshing()V

    .line 921
    :cond_4
    if-eqz p1, :cond_6

    .line 922
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_5

    .line 925
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    .line 932
    .local v0, "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 939
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 949
    .end local v0    # "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :goto_0
    return-void

    .line 935
    .restart local v0    # "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_0

    .line 943
    .end local v0    # "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :cond_5
    invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_0

    .line 947
    :cond_6
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 956
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 971
    :goto_0
    return-void

    .line 958
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 961
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->releaseToRefresh()V

    .line 962
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->releaseToRefresh()V

    goto :goto_0

    .line 965
    :pswitch_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 956
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onReset()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 978
    iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 979
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 982
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 983
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 984
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->reset()V

    .line 986
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->hideViewTopLayout()V

    .line 987
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleProgressLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleProgressLayout;->reset()V

    .line 990
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshing:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingEnabled:Z

    if-ne v0, v2, :cond_0

    .line 991
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 992
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewHideWhileRefreshingDuration:I

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/AlphaAnimator;->fadein(Landroid/view/View;I)V

    .line 995
    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingEnabled:Z

    if-ne v0, v2, :cond_1

    .line 996
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefeshableViewRefreshingBarViewWhileRefreshingDuration:I

    new-instance v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;

    invoke-direct {v2, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-static {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/AlphaAnimator;->fadeout(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1014
    :cond_1
    iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshing:Z

    .line 1015
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    .line 1016
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1020
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 1021
    check-cast v0, Landroid/os/Bundle;

    .line 1023
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1024
    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1026
    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1027
    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 1030
    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1032
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v1

    .line 1033
    .local v1, "viewState":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 1034
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 1038
    :cond_1
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1043
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    :goto_0
    return-void

    .line 1042
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1047
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1051
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 1053
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1054
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1056
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1057
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1058
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1060
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1069
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 1072
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    :goto_0
    return-void

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1079
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 1085
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 406
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 412
    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 419
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 431
    :pswitch_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    .line 434
    goto :goto_0

    .line 421
    :pswitch_1
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F

    .line 424
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->pullEvent()V

    move v0, v1

    .line 425
    goto :goto_0

    .line 441
    :pswitch_2
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 442
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z

    .line 444
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_5

    .line 446
    :cond_4
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 447
    goto :goto_0

    .line 451
    :cond_5
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 452
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 453
    goto :goto_0

    .line 458
    :cond_6
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 460
    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v7, 0x1

    .line 1098
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 1100
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 1101
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 1102
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 1103
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 1105
    .local v1, "pBottom":I
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1152
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setPadding(IIII)V

    .line 1153
    return-void

    .line 1107
    :pswitch_0
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1108
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 1109
    neg-int v2, v0

    .line 1114
    :goto_1
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1115
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    .line 1116
    neg-int v3, v0

    goto :goto_0

    .line 1111
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1118
    :cond_1
    const/4 v3, 0x0

    .line 1120
    goto :goto_0

    .line 1123
    :pswitch_1
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1124
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 1125
    neg-int v4, v0

    .line 1140
    :goto_2
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1141
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    .line 1142
    neg-int v1, v0

    goto :goto_0

    .line 1126
    :cond_2
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mWindowAttached:Z

    if-ne v5, v7, :cond_4

    .line 1131
    iget-boolean v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSetGoogleViewLayoutSizeToActionbarHeight:Z

    if-ne v5, v7, :cond_3

    .line 1132
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mActionBarHeight:I

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->setHeight(I)V

    .line 1135
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 1137
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1144
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final refreshRefreshableViewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1158
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1160
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1162
    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 1163
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1164
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 1168
    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 1169
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1170
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 1160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 1
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 499
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 500
    return-void

    .line 499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 504
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 505
    return-void
.end method

.method public final setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 473
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFriction:F

    .line 474
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1188
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 1189
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1191
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    .line 1192
    if-gez p1, :cond_1

    .line 1193
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1199
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 1221
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1233
    :goto_1
    return-void

    .line 1195
    :pswitch_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->setVisibility(I)V

    goto :goto_0

    .line 1202
    :cond_1
    if-lez p1, :cond_2

    .line 1203
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 1205
    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 1206
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 1225
    :cond_3
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFilteredPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 1230
    :pswitch_1
    invoke-virtual {p0, p1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 1227
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 1193
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1225
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 512
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 513
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 520
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 528
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 534
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 535
    return-void
.end method

.method public final setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 539
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 543
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 544
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    .line 545
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForGoogleStyleMode()V

    .line 547
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    .line 551
    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    .line 563
    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 557
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 570
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 571
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 578
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 579
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 587
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 588
    return-void

    .line 587
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 592
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 593
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 597
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setRefreshing(Z)V

    .line 598
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 602
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    .line 605
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 612
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 613
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 620
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 622
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 629
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 630
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 637
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 639
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 642
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 643
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 493
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 494
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 647
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 648
    return-void
.end method

.method public final setSmoothScrollDuration(I)V
    .locals 0
    .param p1, "smoothScrollDurationMs"    # I

    .prologue
    .line 480
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollDurationMs:I

    .line 481
    return-void
.end method

.method public final setSmoothScrollLongDuration(I)V
    .locals 0
    .param p1, "smoothScrollLongDurationMs"    # I

    .prologue
    .line 487
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSmoothScrollLongDurationMs:I

    .line 488
    return-void
.end method

.method final varargs setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .line 671
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 676
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$10;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$State:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 696
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 699
    :cond_0
    return-void

    .line 678
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReset()V

    goto :goto_0

    .line 681
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 684
    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 688
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 1242
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 1243
    return-void
.end method

.method protected final smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1253
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1254
    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 1263
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 1264
    return-void
.end method

.method public final stopRefreshing()V
    .locals 0

    .prologue
    .line 311
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshComplete()V

    .line 312
    return-void
.end method

.method protected updateUIForGoogleStyleMode()V
    .locals 3

    .prologue
    .line 1303
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mWindowAttached:Z

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showGoogleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1321
    :cond_2
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewOnTopLayout has been added."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTopActionbarLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1327
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mSetGoogleViewLayoutSizeToActionbarHeight:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1329
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 1337
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mGoogleStyleViewLayout:Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->setVisibility(I)V

    .line 1340
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1344
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_1
    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_1
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .line 1273
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1276
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1279
    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1284
    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1285
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1287
    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1288
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    :cond_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1296
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 1297
    return-void

    .line 1296
    :cond_4
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method
