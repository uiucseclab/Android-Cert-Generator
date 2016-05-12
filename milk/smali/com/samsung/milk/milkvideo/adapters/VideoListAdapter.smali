.class public Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
.super Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter",
        "<",
        "Lcom/samsung/milk/milkvideo/models/Video;",
        ">;"
    }
.end annotation


# static fields
.field public static final NULL_VIDEO_LIST_ADAPTER:Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

.field public static final VIDEO_LOAD_ANIMATION_DURATION:J = 0x2eeL


# instance fields
.field private shouldAnimate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/samsung/milk/milkvideo/adapters/NullVideoListAdapter;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/adapters/NullVideoListAdapter;-><init>()V

    sput-object v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->NULL_VIDEO_LIST_ADAPTER:Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->shouldAnimate:Z

    .line 29
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->updatePositionInList()V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "recycleView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x3f933333    # 1.15f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {p0, v2, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getView(Lcom/samsung/milk/milkvideo/models/Video;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "videoView":Landroid/view/View;
    iget v2, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->initialPosition:I

    if-gt v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->shouldAnimate:Z

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x15e

    invoke-static {v2, v3}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v2

    int-to-float v1, v2

    .line 36
    .local v1, "yOffset":F
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 37
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 38
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotationX(F)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x168

    invoke-static {v2, v3}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 41
    invoke-virtual {v0, v5}, Landroid/view/View;->setPivotY(F)V

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x2ee

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 52
    .end local v1    # "yOffset":F
    :cond_0
    iput p1, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->initialPosition:I

    .line 53
    return-object v0
.end method

.method public getView(Lcom/samsung/milk/milkvideo/models/Video;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;
    .param p2, "recycleView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    move-object v0, p2

    check-cast v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .line 99
    .local v0, "recycledItemView":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    if-eqz v0, :cond_0

    .line 100
    move-object v1, v0

    .line 106
    .local v1, "videoView":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setVideo(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 107
    return-object v1

    .line 102
    .end local v1    # "videoView":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    :cond_0
    new-instance v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;-><init>(Landroid/content/Context;)V

    .line 103
    .restart local v1    # "videoView":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    new-instance v2, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setTag(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->init()V

    goto :goto_0
.end method

.method public bridge synthetic getView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 17
    check-cast p1, Lcom/samsung/milk/milkvideo/models/Video;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getView(Lcom/samsung/milk/milkvideo/models/Video;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->setList(Ljava/util/List;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->updatePositionInList()V

    .line 93
    return-void
.end method

.method public setShouldAnimate(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->shouldAnimate:Z

    .line 25
    return-void
.end method

.method public updatePositionInList()V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getList()Ljava/util/List;

    move-result-object v2

    .line 118
    .local v2, "videoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 119
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/models/Video;

    .line 120
    .local v1, "video":Lcom/samsung/milk/milkvideo/models/Video;
    if-nez v1, :cond_1

    .line 125
    .end local v1    # "video":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_0
    return-void

    .line 123
    .restart local v1    # "video":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/models/Video;->setPositionInList(I)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
