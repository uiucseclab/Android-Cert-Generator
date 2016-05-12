.class public Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EdgeVideoPagerAdapter.java"


# instance fields
.field private final eventBus:Lcom/squareup/otto/Bus;

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private playingVideo:Lcom/samsung/milk/milkvideo/models/Video;

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/otto/Bus;)V
    .locals 1
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "eventBus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->videos:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 33
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->eventBus:Lcom/squareup/otto/Bus;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->eventBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private addVideos(Lcom/samsung/milk/milkvideo/events/VideosResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/VideosResponse;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->videos:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideosResponse;->getVideos()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method private setVideos(Lcom/samsung/milk/milkvideo/events/VideosResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/VideosResponse;

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideosResponse;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->videos:Ljava/util/List;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->notifyDataSetChanged()V

    .line 128
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "embedCode"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v2, v0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 78
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 70
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "embedCode"    # Ljava/lang/Object;

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->videos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 92
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 38
    new-instance v1, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, "videoItem":Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v2, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->videos:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/Video;

    .line 44
    .local v0, "video":Lcom/samsung/milk/milkvideo/models/Video;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 45
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/samsung/milk/milkvideo/events/MoreFeedVideos;

    invoke-direct {v3}, Lcom/samsung/milk/milkvideo/events/MoreFeedVideos;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 49
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 50
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->playingVideo:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->playingVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, v1, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->now:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_0
    iget-object v2, v1, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->setTag(Ljava/lang/Object;)V

    .line 58
    new-instance v2, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter$1;-><init>(Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 53
    :cond_1
    iget-object v2, v1, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->now:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "embedCode"    # Ljava/lang/Object;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onVideoSelected(Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->getRequestedVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->playingVideo:Lcom/samsung/milk/milkvideo/models/Video;

    .line 123
    return-void
.end method

.method public receiveBrandVideos(Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->setVideos(Lcom/samsung/milk/milkvideo/events/VideosResponse;)V

    .line 103
    return-void
.end method

.method public receiveMoreFeedVideos(Lcom/samsung/milk/milkvideo/events/MoreFeedVideosResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/MoreFeedVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->addVideos(Lcom/samsung/milk/milkvideo/events/VideosResponse;)V

    .line 118
    return-void
.end method

.method public receiveRefreshFeedVideos(Lcom/samsung/milk/milkvideo/events/RefreshFeedVideosResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/RefreshFeedVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->setVideos(Lcom/samsung/milk/milkvideo/events/VideosResponse;)V

    .line 113
    return-void
.end method

.method public receiveStarredVideos(Lcom/samsung/milk/milkvideo/events/StarredVideosResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/StarredVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->setVideos(Lcom/samsung/milk/milkvideo/events/VideosResponse;)V

    .line 108
    return-void
.end method
