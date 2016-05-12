.class public Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;
.super Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;
.source "UserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter",
        "<",
        "Lcom/samsung/milk/milkvideo/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBus:Lcom/squareup/otto/Bus;

.field private fragmentType:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

.field private final loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

.field private messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

.field private final nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private final tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/samsung/milk/milkvideo/services/LoginState;Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V
    .locals 0
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p3, "loginState"    # Lcom/samsung/milk/milkvideo/services/LoginState;
    .param p4, "tracker"    # Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .param p5, "eventBus"    # Lcom/squareup/otto/Bus;
    .param p6, "messageNotifier"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 42
    iput-object p4, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 43
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 44
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 45
    iput-object p5, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->eventBus:Lcom/squareup/otto/Bus;

    .line 46
    iput-object p6, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/services/LoginState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->eventBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->fragmentType:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;)Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    return-object v0
.end method

.method private populateUserListItemView(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/views/UserListItemView;)V
    .locals 4
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "view"    # Lcom/samsung/milk/milkvideo/views/UserListItemView;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->setUuid(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getIconUserListUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->setIconUserListUri(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->setUsername(Ljava/lang/String;)V

    .line 76
    const v2, 0x7f06012f

    invoke-virtual {p2, v2}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    .local v0, "userIcon":Landroid/widget/ImageView;
    const v2, 0x7f060130

    invoke-virtual {p2, v2}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, "userName":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getIconUserListUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getIconUserListUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 84
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    const v3, 0x7f02010a

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private setUpFollowButton(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/views/UserListItemView;)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "view"    # Lcom/samsung/milk/milkvideo/views/UserListItemView;

    .prologue
    .line 88
    const v1, 0x7f060102

    invoke-virtual {p2, v1}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;

    .line 89
    .local v0, "followButton":Lcom/samsung/milk/milkvideo/views/FollowButtonView;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setUser(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->isBrand()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setBrand(Z)V

    .line 91
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->isFollowedByMe()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setFollowing(Z)V

    .line 93
    new-instance v1, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter$1;-><init>(Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;Lcom/samsung/milk/milkvideo/views/FollowButtonView;Lcom/samsung/milk/milkvideo/models/User;)V

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->setVisibility(I)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "recycleView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->getView(Lcom/samsung/milk/milkvideo/models/User;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Lcom/samsung/milk/milkvideo/models/User;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "recycleView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/samsung/milk/milkvideo/views/UserListItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 58
    check-cast v0, Lcom/samsung/milk/milkvideo/views/UserListItemView;

    .line 59
    .local v0, "view":Lcom/samsung/milk/milkvideo/views/UserListItemView;
    const v1, 0x7f060102

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->populateUserListItemView(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/views/UserListItemView;)V

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->setUpFollowButton(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/views/UserListItemView;)V

    .line 68
    return-object v0

    .line 61
    .end local v0    # "view":Lcom/samsung/milk/milkvideo/views/UserListItemView;
    :cond_0
    new-instance v0, Lcom/samsung/milk/milkvideo/views/UserListItemView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/views/UserListItemView;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Lcom/samsung/milk/milkvideo/views/UserListItemView;
    goto :goto_0
.end method

.method public bridge synthetic getView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    check-cast p1, Lcom/samsung/milk/milkvideo/models/User;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->getView(Lcom/samsung/milk/milkvideo/models/User;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;)V
    .locals 0
    .param p1, "type"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->fragmentType:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    .line 153
    return-void
.end method
