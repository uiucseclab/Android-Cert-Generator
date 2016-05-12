.class public Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;
.super Lcom/samsung/milk/milkvideo/views/ProfileListHeader;
.source "UserProfileListHeader.java"


# instance fields
.field private followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

.field private followers:Landroid/widget/TextView;

.field messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private reposts:Landroid/widget/TextView;

.field private repostsText:Landroid/widget/TextView;

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    return-object v0
.end method


# virtual methods
.method protected findSubViews()V
    .locals 3

    .prologue
    .line 60
    const v1, 0x7f0600fe

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->repostsText:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0600fd

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->reposts:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f060100

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followers:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f060102

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    .line 65
    const v1, 0x7f060101

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "followersText":Landroid/widget/TextView;
    new-instance v1, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$1;-><init>(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    new-instance v2, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$2;-><init>(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)V

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f030053

    return v0
.end method

.method public populateUserData()V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->setBackgroundPhoto()V

    .line 47
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->repostsText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/User;->isBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f08007d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followers:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getFollowerCount()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->truncateCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setUser(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->followButton:Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->isFollowedByMe()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setFollowing(Z)V

    .line 51
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f08007e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setPostCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->reposts:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->truncateCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
