.class public Lcom/samsung/milk/milkvideo/views/VideoListItemView;
.super Landroid/widget/FrameLayout;
.source "VideoListItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;,
        Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;
    }
.end annotation


# instance fields
.field private dismissActionsTouchListener:Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field repostService:Lcom/samsung/milk/milkvideo/services/RepostService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private video:Lcom/samsung/milk/milkvideo/models/Video;

.field videoPresenter:Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030065

    invoke-static {v0, v1, p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)Lcom/samsung/milk/milkvideo/models/Video;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    return-object v0
.end method

.method private populate()V
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const/16 v2, 0x280

    const/16 v3, 0x164

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f020109

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->noFade()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/Picasso$Priority;->HIGH:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 142
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->noFade()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/Picasso$Priority;->HIGH:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->brandLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 144
    new-instance v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;)V

    .line 145
    .local v0, "repostClickListener":Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->videoPresenter:Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;->getDuration(Lcom/samsung/milk/milkvideo/models/Video;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->starView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->timeSincePost:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->videoPresenter:Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;->getTimeSinceCreation(Lcom/samsung/milk/milkvideo/models/Video;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->dismissVideoText:Landroid/widget/TextView;

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->dismissVideoText:Landroid/widget/TextView;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setupElementListeners()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->brandLogo:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/VideoListItemView$3;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$3;-><init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method private showReposterData()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 159
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/models/Video;->getRepostCount()Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_0

    move-wide v2, v4

    .line 160
    .local v2, "reposts":J
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostCount:Landroid/widget/TextView;

    long-to-int v7, v2

    invoke-static {v7}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->truncateCount(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostInfoLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->updateRepostIcon()V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->facepileLayout:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/models/Video;->getFollowedReposters()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/models/Video;->getReposterCount()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->reset(Ljava/lang/String;Ljava/util/List;I)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->facepileLayout:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-virtual {v4, v8}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->setVisibility(I)V

    .line 175
    :goto_1
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/FeatureFlags;->isRainbowBarInCocktail()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->slookUtil:Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->isCocktailAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 177
    .local v0, "noRepostPadding":I
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 182
    .local v1, "repostInfoPadding":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostInfoLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostInfoLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostInfoLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostInfoLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 184
    return-void

    .line 159
    .end local v0    # "noRepostPadding":I
    .end local v1    # "repostInfoPadding":I
    .end local v2    # "reposts":J
    :cond_0
    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/models/Video;->getRepostCount()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_0

    .line 168
    .restart local v2    # "reposts":J
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->facepileLayout:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-virtual {v4, v9}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostInfoLayout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 180
    .restart local v0    # "noRepostPadding":I
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .restart local v1    # "repostInfoPadding":I
    goto/16 :goto_2
.end method

.method private updateRepostIcon()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->isRepostedByMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissActions()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->facepileLayout:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->collapse()V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->actionContainerView:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->hide()V

    .line 103
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->dismissActionsTouchListener:Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    return-void
.end method

.method public getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    return-object v0
.end method

.method public getVideo()Lcom/samsung/milk/milkvideo/models/Video;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    return-object v0
.end method

.method public handleScroll()V
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, -0x40d70a3d    # -0.66f

    const/high16 v3, -0x41000000    # -0.5f

    invoke-static {v1, v2, v3}, Lcom/samsung/milk/milkvideo/utils/UiUtils;->interpolateBetweenZeroAndOne(FFF)F

    move-result v0

    .line 218
    .local v0, "alpha":F
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setDataAlpha(F)V

    .line 219
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setupListeners()V

    .line 56
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setupElementListeners()V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->resetView()V

    .line 58
    return-void
.end method

.method public resetView()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->resetView(Z)V

    .line 108
    return-void
.end method

.method public resetView(Z)V
    .locals 2
    .param p1, "keepActionContainer"    # Z

    .prologue
    .line 111
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->actionContainerView:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->actionContainerView:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->reset()V

    .line 113
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->dismissActionsTouchListener:Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    :cond_0
    const v0, 0x7f06012d

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 117
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->showReposterData()V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->toggleVideoOverlay()V

    .line 121
    :cond_1
    return-void
.end method

.method public setDataAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->brandLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->facepileLayout:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->setAlpha(F)V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->timeSincePost:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 214
    return-void
.end method

.method public setVideo(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 1
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    if-ne v0, p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getHolder()Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->actionContainerView:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->setVideo(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 129
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->populate()V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->resetView()V

    goto :goto_0
.end method

.method public setupListeners()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;-><init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$2;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$2;-><init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 85
    new-instance v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;-><init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->dismissActionsTouchListener:Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;

    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->dismissActionsTouchListener:Lcom/samsung/milk/milkvideo/views/VideoListItemView$DismissActionsTouchListener;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    return-void
.end method

.method public toggleVideoOverlay()V
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    if-eqz v1, :cond_0

    .line 196
    const v1, 0x7f06013c

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "videoOverlay":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->isVideoPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .end local v0    # "videoOverlay":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 200
    .restart local v0    # "videoOverlay":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
