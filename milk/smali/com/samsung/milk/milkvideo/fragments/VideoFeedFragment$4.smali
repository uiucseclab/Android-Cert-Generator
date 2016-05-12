.class Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;
.super Lcom/samsung/milk/milkvideo/swipelistview/BaseSwipeListViewListener;
.source "VideoFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->setUpVideoFeedListListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/swipelistview/BaseSwipeListViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeSwipeMode(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public onClickFrontView(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 188
    :cond_0
    return-void
.end method

.method public declared-synchronized onDismiss([I)V
    .locals 10
    .param p1, "reverseSortedPositions"    # [I

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    invoke-static {v8}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$300(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    move-result-object v0

    .line 228
    .local v0, "adapter":Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->setShouldAnimate(Z)V

    .line 230
    move-object v1, p1

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget v3, v1, v4

    .line 231
    .local v3, "i":I
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 232
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/milk/milkvideo/models/Video;

    .line 233
    .local v6, "removed":Lcom/samsung/milk/milkvideo/models/Video;
    iget-object v8, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v8}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 234
    .local v2, "firstVisible":I
    iget-object v8, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v8}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v8

    sub-int v9, v3, v2

    invoke-virtual {v8, v9}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 235
    .local v7, "viewToDismiss":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 236
    check-cast v7, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .end local v7    # "viewToDismiss":Landroid/view/View;
    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->resetView()V

    .line 238
    :cond_0
    iget-object v8, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v8, v8, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendVideoHideEvent(Ljava/lang/String;)V

    .line 239
    iget-object v8, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v8, v8, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v9, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;

    invoke-direct {v9}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    invoke-interface {v8, v6, v9}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->blockVideo(Lcom/samsung/milk/milkvideo/models/Video;Lretrofit/ResponseCallback;)V

    .line 230
    .end local v2    # "firstVisible":I
    .end local v6    # "removed":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->updatePositionInList()V

    .line 243
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 227
    .end local v0    # "adapter":Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    .end local v1    # "arr$":[I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public onLongClickFrontView(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMove(IF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "x"    # F

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/swipelistview/BaseSwipeListViewListener;->onMove(IF)V

    .line 215
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v3}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 217
    .local v2, "firstVisible":I
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f2b851f    # 0.67f

    mul-float/2addr v4, v5

    invoke-static {p2, v3, v4}, Lcom/samsung/milk/milkvideo/utils/UiUtils;->interpolateBetweenZeroAndOne(FFF)F

    move-result v0

    .line 219
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v3}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v3

    sub-int v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 221
    const v3, 0x7f06012e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 223
    :cond_0
    return-void
.end method

.method public onOpened(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "toRight"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->start(Landroid/content/Context;Z)V

    .line 201
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->closeAnimate(I)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$4;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->dismiss(I)V

    goto :goto_0
.end method
