.class public Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;
.super Lcom/samsung/milk/milkvideo/views/ProfileListHeader;
.source "MyProfileListHeader.java"


# instance fields
.field private followersText:Landroid/widget/TextView;

.field private followingText:Landroid/widget/TextView;

.field private myProfileVideoTabs:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

.field private numFollowers:Landroid/widget/TextView;

.field private numFollowing:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->myProfileVideoTabs:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$1;-><init>(Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;)V

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->setOnTabClickedListener(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->followingText:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$2;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$2;-><init>(Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->followersText:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$3;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$3;-><init>(Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected findSubViews()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0600e9

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->myProfileVideoTabs:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    .line 50
    const v0, 0x7f0600e8

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->followersText:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0600e5

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->followingText:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0600e7

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->numFollowers:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0600e4

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->numFollowing:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method public getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->myProfileVideoTabs:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f030049

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/views/ProfileListHeader;->init(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->setupListeners()V

    .line 33
    return-void
.end method

.method public populateUserData()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->setBackgroundPhoto()V

    .line 38
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->numFollowers:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getFollowerCount()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->truncateCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->numFollowing:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getFollowingCount()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->truncateCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->myProfileVideoTabs:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 92
    return-void
.end method

.method public setPostCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 45
    return-void
.end method
