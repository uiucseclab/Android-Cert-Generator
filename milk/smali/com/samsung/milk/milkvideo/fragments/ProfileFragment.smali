.class public Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$11;
    }
.end annotation


# static fields
.field private static final THUMBNAILS_ON_SCREEN:I = 0x4


# instance fields
.field bandwidthDetector:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private feedHeaderTouchListener:Landroid/view/View$OnTouchListener;

.field private header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

.field protected lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private needsRetry:Z

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private progressBar:Landroid/view/View;

.field private rootLayout:Landroid/widget/FrameLayout;

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected user:Lcom/samsung/milk/milkvideo/models/User;

.field private uuid:Ljava/lang/String;

.field private videoFeedList:Landroid/widget/ListView;

.field private videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->feedHeaderTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->initMyProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->initUserProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->needsRetry:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->updateVideosForScroll()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateRepostsFeed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)Lcom/samsung/milk/milkvideo/views/ProfileListHeader;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateStarredFeed(Ljava/lang/String;)V

    return-void
.end method

.method private addCondensableHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;)V
    .locals 3
    .param p1, "header"    # Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    .prologue
    .line 342
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->rootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    return-void
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getUser(Ljava/lang/String;Lretrofit/Callback;)V

    .line 235
    return-void
.end method

.method private getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 183
    .local v0, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    .line 187
    .end local v0    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->NULL_VIDEO_LIST_ADAPTER:Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    goto :goto_0
.end method

.method private hideSpinner()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 207
    return-void
.end method

.method private initMyProfile()V
    .locals 5

    .prologue
    .line 318
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->setCurrentUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 320
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 322
    new-instance v1, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    .line 323
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    check-cast v0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;

    .line 324
    .local v0, "profileHeader":Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;
    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->addCondensableHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;)V

    .line 326
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->setListViewToTrack(Landroid/widget/ListView;)V

    .line 328
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setLeftButtonSrc(I)V

    .line 329
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setTitle(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->displaySmallHeaderText()V

    .line 332
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 333
    new-instance v1, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    .line 334
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 338
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setUpMyProfileTabsAndCondensableHeader()V

    .line 339
    return-void
.end method

.method private initUserProfile()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 276
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 277
    new-instance v1, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    .line 278
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->addCondensableHeader(Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;)V

    .line 280
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    .line 282
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    const v2, 0x7f0600fc

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    .local v0, "link":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->isBrand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getBrandUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populatePostsFeed(Ljava/lang/String;)V

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setLeftButtonSrc(I)V

    .line 298
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setTitle(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->displaySmallHeaderText()V

    .line 301
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$4;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$5;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$5;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setSmallHeaderOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void

    .line 293
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateRepostsFeed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;-><init>()V

    return-object v0
.end method

.method private populatePostsFeed(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/RefreshBrandVideos;

    invoke-direct {v1, p1}, Lcom/samsung/milk/milkvideo/events/RefreshBrandVideos;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method private populateRepostsFeed(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/RefreshRepostVideos;

    invoke-direct {v1, p1}, Lcom/samsung/milk/milkvideo/events/RefreshRepostVideos;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method private populateStarredFeed(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/RefreshStarredVideos;

    invoke-direct {v1, p1}, Lcom/samsung/milk/milkvideo/events/RefreshStarredVideos;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 422
    return-void
.end method

.method private preloadThumbnails(Ljava/util/List;)V
    .locals 6
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
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    const/16 v5, 0x8d

    .line 473
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/models/Video;

    .line 474
    .local v1, "v":Lcom/samsung/milk/milkvideo/models/Video;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const/16 v3, 0x280

    const/16 v4, 0x164

    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    .line 475
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    goto :goto_0

    .line 477
    .end local v1    # "v":Lcom/samsung/milk/milkvideo/models/Video;
    :cond_0
    return-void
.end method

.method private setAdapter(Ljava/util/List;)V
    .locals 2
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
    .line 466
    .local p1, "videoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    new-instance v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;-><init>()V

    .line 467
    .local v0, "adapter":Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->setList(Ljava/util/List;)V

    .line 468
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 469
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->updateTouchDelegation()V

    .line 470
    return-void
.end method

.method private setUpMyProfileTabsAndCondensableHeader()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    .line 349
    .local v0, "myProfileListHeader":Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 351
    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$11;->$SwitchMap$com$samsung$milk$milkvideo$views$MyProfileVideoTabs$Tab:[I

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 360
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setupCondensableHeader(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 361
    return-void

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v1

    goto :goto_0

    .line 353
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateStarredFeed(Ljava/lang/String;)V

    goto :goto_1

    .line 356
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateRepostsFeed(Ljava/lang/String;)V

    goto :goto_1

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupCondensableHeader(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V
    .locals 3
    .param p1, "currentTab"    # Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setLeftButtonSrc(I)V

    .line 365
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setRightButtonSrc(I)V

    .line 366
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setTitle(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v2, 0x7f06010d

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 369
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$6;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$6;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$7;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$7;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$8;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$8;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->setSmallHeaderOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    instance-of v1, v1, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    check-cast v1, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$9;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$9;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->setTabbedHeaderOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v2, 0x7f06010f

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    .line 402
    .local v0, "myProfileVideoTabs":Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->setOnTabClickedListener(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;)V

    .line 417
    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 418
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->feedHeaderTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 264
    return-void
.end method

.method private showSpinner()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->progressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 202
    return-void
.end method

.method private updateRepostedVideoList()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    instance-of v1, v1, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    if-eqz v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    .line 140
    .local v0, "myHeader":Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v1

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    if-ne v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateRepostsFeed(Ljava/lang/String;)V

    .line 144
    .end local v0    # "myHeader":Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;
    :cond_0
    return-void
.end method

.method private updateStarredVideoList()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    instance-of v1, v1, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    .line 193
    .local v0, "myHeader":Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v1

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    if-ne v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateStarredFeed(Ljava/lang/String;)V

    .line 197
    .end local v0    # "myHeader":Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;
    :cond_0
    return-void
.end method

.method private updateTouchDelegation()V
    .locals 2

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->feedHeaderTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private updateVideosForScroll()V
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, "videoView":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    if-eqz v2, :cond_0

    .line 270
    check-cast v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .end local v1    # "videoView":Landroid/view/View;
    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->handleScroll()V

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentProfileUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConnectivityChange(Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->needsRetry:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->showSpinner()V

    .line 175
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->uuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getUser(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->needsRetry:Z

    .line 178
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->uuid:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v0, 0x7f030040

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onDestroyView()V

    .line 87
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onMyProfileTabChanged(Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 115
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    const v2, 0x7f06010f

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    .line 116
    .local v0, "condensableHeaderTabs":Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;->getType()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v1

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateRepostsFeed(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 119
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->reset()V

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateStarredFeed(Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->reset()V

    goto :goto_0
.end method

.method public onPlayNextVideo(Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/PlayNextVideoEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getVideoListAdapter()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/utils/ListUtil;->getNextItemWithWrap(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/Video;

    .line 165
    .local v0, "nextVideo":Lcom/samsung/milk/milkvideo/models/Video;
    if-eqz v0, :cond_0

    .line 166
    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    .line 167
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/samsung/milk/milkvideo/events/VideoTransitionEvent;

    invoke-direct {v2, v0}, Lcom/samsung/milk/milkvideo/events/VideoTransitionEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->showSpinner()V

    .line 74
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->uuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getUser(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->bandwidthDetector:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->updateNetworkBandwidth()V

    .line 76
    return-void
.end method

.method public onVideoClick(Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->getRequestedVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    .line 159
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->lastRequestedVideo:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getPositionInList()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 160
    return-void
.end method

.method public onVideoReposted(Lcom/samsung/milk/milkvideo/events/VideoRepostedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoRepostedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->updateRepostedVideoList()V

    .line 130
    return-void
.end method

.method public onVideoStarred(Lcom/samsung/milk/milkvideo/events/VideoStarredEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoStarredEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->updateStarredVideoList()V

    .line 154
    return-void
.end method

.method public onVideoUnreposted(Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->updateRepostedVideoList()V

    .line 135
    return-void
.end method

.method public onVideoUnstarred(Lcom/samsung/milk/milkvideo/events/VideoUnstarredEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoUnstarredEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->updateStarredVideoList()V

    .line 149
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->rootLayout:Landroid/widget/FrameLayout;

    .line 100
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->progressBar:Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setupListeners()V

    .line 104
    new-instance v0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;

    invoke-direct {v0, v1, p0}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;-><init>(Landroid/widget/ListView;Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    .line 105
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoListEventHandler:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public receiveBrandVideos(Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->setPostCount(I)V

    .line 459
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setAdapter(Ljava/util/List;)V

    .line 460
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/BrandVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->preloadThumbnails(Ljava/util/List;)V

    .line 461
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    const-string v1, "UserPosts"

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->onCategoryChanged(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;

    const-string v2, "UserPosts"

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public receiveRepostVideos(Lcom/samsung/milk/milkvideo/events/RepostVideosResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/RepostVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getRepostCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->setPostCount(I)V

    .line 442
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/RepostVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setAdapter(Ljava/util/List;)V

    .line 443
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/RepostVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->preloadThumbnails(Ljava/util/List;)V

    .line 444
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    const-string v1, "UserReposts"

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->onCategoryChanged(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;

    const-string v2, "UserReposts"

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public receiveStarredVideos(Lcom/samsung/milk/milkvideo/events/StarredVideosResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/samsung/milk/milkvideo/events/StarredVideosResponse;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/StarredVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setAdapter(Ljava/util/List;)V

    .line 427
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/StarredVideosResponse;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->preloadThumbnails(Ljava/util/List;)V

    .line 428
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    const-string v1, "UserStarred"

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->onCategoryChanged(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;

    const-string v2, "UserStarred"

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoContextChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 430
    return-void
.end method
