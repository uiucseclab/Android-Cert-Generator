.class public Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;
.super Ljava/lang/Object;
.source "VideoListEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$2;,
        Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;
    }
.end annotation


# static fields
.field public static final IGNORE_PLAY_DELAY:I = 0xc8


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private facepileOpen:Z

.field private fragment:Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;

.field private ignorePlayRequest:Z

.field private final videoFeedList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;)V
    .locals 1
    .param p1, "videoFeedList"    # Landroid/widget/ListView;
    .param p2, "fragment"    # Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->ignorePlayRequest:Z

    .line 32
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->fragment:Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;

    .line 33
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->ignorePlayRequest:Z

    return p1
.end method

.method private dismissVideoListItem()V
    .locals 5

    .prologue
    .line 115
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v3, v4

    .line 117
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 118
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .line 120
    .local v2, "v":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->dismissActions()V

    .line 117
    .end local v2    # "v":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method private getVideoFeedListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 107
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    .line 110
    :goto_0
    return-object v1

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    check-cast v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    goto :goto_0
.end method

.method private resetVideoListItem(Z)V
    .locals 5
    .param p1, "keepActionContainer"    # Z

    .prologue
    .line 126
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v3, v4

    .line 128
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .line 131
    .local v2, "v":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    invoke-virtual {v2, p1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->resetView(Z)V

    .line 128
    .end local v2    # "v":Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method

.method private updateVideo(Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;Z)V
    .locals 4
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;
    .param p2, "property"    # Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;
    .param p3, "value"    # Z

    .prologue
    const-wide/16 v2, 0x1

    .line 152
    sget-object v0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$2;->$SwitchMap$com$samsung$milk$milkvideo$events$VideoListEventHandler$UpdatableProperty:[I

    invoke-virtual {p2}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 154
    :pswitch_0
    if-eqz p3, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getRepostCount()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/milk/milkvideo/models/Video;->setRepostCount(Ljava/lang/Long;)V

    .line 159
    :goto_1
    invoke-virtual {p1, p3}, Lcom/samsung/milk/milkvideo/models/Video;->setRepostedByMe(Z)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getRepostCount()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/milk/milkvideo/models/Video;->setRepostCount(Ljava/lang/Long;)V

    goto :goto_1

    .line 162
    :pswitch_1
    invoke-virtual {p1, p3}, Lcom/samsung/milk/milkvideo/models/Video;->setStarredByMe(Z)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVideoProperty(Ljava/lang/String;Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;Z)V
    .locals 4
    .param p1, "embedCode"    # Ljava/lang/String;
    .param p2, "property"    # Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;
    .param p3, "value"    # Z

    .prologue
    .line 137
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 138
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-eqz v1, :cond_0

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 140
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/models/Video;

    .line 141
    .local v2, "video":Lcom/samsung/milk/milkvideo/models/Video;
    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-direct {p0, v2, p2, p3}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->updateVideo(Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;Z)V

    .line 149
    .end local v0    # "i":I
    .end local v2    # "video":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_0
    return-void

    .line 139
    .restart local v0    # "i":I
    .restart local v2    # "video":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onDismissActions(Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->dismissVideoListItem()V

    .line 40
    return-void
.end method

.method public onFacepileOpenedEvent(Lcom/samsung/milk/milkvideo/events/FacepileOpenedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/FacepileOpenedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->facepileOpen:Z

    .line 103
    return-void
.end method

.method public onRefreshVideoListItemEvent(Lcom/samsung/milk/milkvideo/events/RefreshVideoListItemEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/RefreshVideoListItemEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->resetVideoListItem(Z)V

    .line 69
    return-void
.end method

.method public onVideoListItemClicked(Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->facepileOpen:Z

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->facepileOpen:Z

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->ignorePlayRequest:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->ignorePlayRequest:Z

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$1;-><init>(Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->fragment:Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->isFragmentPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->getVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->isVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;->getVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVideoPlayerCloseEvent(Lcom/samsung/milk/milkvideo/events/VideoPlayerCloseEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlayerCloseEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->resetVideoListItem(Z)V

    .line 74
    return-void
.end method

.method public onVideoReposted(Lcom/samsung/milk/milkvideo/events/VideoRepostedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoRepostedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoRepostedEvent;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;->REPOST:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->updateVideoProperty(Ljava/lang/String;Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;Z)V

    .line 79
    invoke-direct {p0, v2}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->resetVideoListItem(Z)V

    .line 80
    return-void
.end method

.method public onVideoStarred(Lcom/samsung/milk/milkvideo/events/VideoStarredEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoStarredEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoStarredEvent;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;->STAR:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->updateVideoProperty(Ljava/lang/String;Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;Z)V

    .line 91
    invoke-direct {p0, v2}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->resetVideoListItem(Z)V

    .line 92
    return-void
.end method

.method public onVideoUnreposted(Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;->REPOST:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->updateVideoProperty(Ljava/lang/String;Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;Z)V

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->resetVideoListItem(Z)V

    .line 86
    return-void
.end method

.method public onVideoUnstarred(Lcom/samsung/milk/milkvideo/events/VideoUnstarredEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoUnstarredEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoUnstarredEvent;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;->STAR:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->updateVideoProperty(Ljava/lang/String;Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$UpdatableProperty;Z)V

    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->resetVideoListItem(Z)V

    .line 98
    return-void
.end method
