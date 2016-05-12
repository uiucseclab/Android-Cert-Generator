.class public Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "FollowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$8;,
        Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;,
        Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TYPE_KEY:Ljava/lang/String; = "FOLLOW_FRAGMENT_TYPE"

.field public static final FRAGMENT_UUID_KEY:Ljava/lang/String; = "FOLLOW_FRAGMENT_UUID"


# instance fields
.field private eventHandler:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;

.field private facebookButton:Landroid/view/View;

.field facebookFriendsCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FacebookFriendsList;",
            ">;"
        }
    .end annotation
.end field

.field private facebookFriendsLabel:Landroid/view/View;

.field facebookListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private facebookListView:Landroid/widget/ListView;

.field followerCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FollowersList;",
            ">;"
        }
    .end annotation
.end field

.field followingCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/FollowingList;",
            ">;"
        }
    .end annotation
.end field

.field private googleButton:Landroid/view/View;

.field private googleFriendsLabel:Landroid/view/View;

.field googleListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private googleListView:Landroid/widget/ListView;

.field googlePlusFriendsCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/GooglePlusFriendsList;",
            ">;"
        }
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field repostersCallback:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback",
            "<",
            "Lcom/samsung/milk/milkvideo/models/RepostersList;",
            ">;"
        }
    .end annotation
.end field

.field restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private spinner:Landroid/view/View;

.field private type:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

.field userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private userListView:Landroid/widget/ListView;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 222
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->followingCallback:Lretrofit/Callback;

    .line 243
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$4;-><init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->followerCallback:Lretrofit/Callback;

    .line 260
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$5;-><init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookFriendsCallback:Lretrofit/Callback;

    .line 278
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$6;-><init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googlePlusFriendsCallback:Lretrofit/Callback;

    .line 296
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$7;-><init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->repostersCallback:Lretrofit/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->type:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->hideSpinner()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->handleViewsStateForFriends(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getFriendsList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToFacebook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, v2, v1}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->handleViewsStateForFriends(ZZ)V

    .line 136
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookFriendsCallback:Lretrofit/Callback;

    invoke-interface {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getFacebookFriends(Ljava/lang/String;Lretrofit/Callback;)V

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToGooglePlus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0, v1, v2}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->handleViewsStateForFriends(ZZ)V

    .line 139
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googlePlusFriendsCallback:Lretrofit/Callback;

    invoke-interface {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getGooglePlusFriends(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->handleViewsStateForFriends(ZZ)V

    .line 142
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->spinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleViewsStateForFriends(ZZ)V
    .locals 3
    .param p1, "hasFacebook"    # Z
    .param p2, "hasGoogle"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 147
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookFriendsLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :goto_0
    if-eqz p2, :cond_1

    .line 159
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleFriendsLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_1
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideSpinner()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->spinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;-><init>()V

    return-object v0
.end method

.method private setDefaultViewState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 169
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookFriendsLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleFriendsLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const v0, 0x7f030034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onDestroyView()V

    .line 181
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->eventHandler:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f06008f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->spinner:Landroid/view/View;

    .line 65
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->spinner:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    new-instance v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;

    invoke-direct {v4, p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;-><init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->eventHandler:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;

    .line 67
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->eventHandler:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$EventHandler;

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f06007b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    .local v3, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f060086

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListView:Landroid/widget/ListView;

    .line 72
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f060085

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 74
    .local v2, "parent_layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f06008a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookListView:Landroid/widget/ListView;

    .line 75
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f060088

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookFriendsLabel:Landroid/view/View;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f060089

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->facebookButton:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f06008c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleFriendsLabel:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f06008e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleListView:Landroid/widget/ListView;

    .line 80
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f06008d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->googleButton:Landroid/view/View;

    .line 82
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToGooglePlus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const v4, 0x7f060087

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "facebook_section":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    .end local v0    # "facebook_section":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "You must specify an arguments intent"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v4, "FOLLOW_FRAGMENT_TYPE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->type:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    .line 92
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->type:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    const-string v5, "You must specify a Fragment type"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "FOLLOW_FRAGMENT_UUID"

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;

    .line 95
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->type:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    invoke-virtual {v4, v5}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->setType(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;)V

    .line 97
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->setDefaultViewState()V

    .line 99
    sget-object v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$8;->$SwitchMap$com$samsung$milk$milkvideo$fragments$FollowsFragment$FragmentType:[I

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->type:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    invoke-virtual {v5}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 118
    :goto_0
    new-instance v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    new-instance v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->followingCallback:Lretrofit/Callback;

    invoke-interface {v4, v5, v6}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getFollowingList(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->followerCallback:Lretrofit/Callback;

    invoke-interface {v4, v5, v6}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getFollowersList(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getFriendsList()V

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->uuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->repostersCallback:Lretrofit/Callback;

    invoke-interface {v4, v5, v6}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getRepostUsers(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
