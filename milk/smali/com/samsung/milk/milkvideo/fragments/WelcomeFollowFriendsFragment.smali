.class public abstract Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "WelcomeFollowFriendsFragment.java"


# instance fields
.field friendsListAdapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field spinner:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f06008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->spinner:Landroid/view/View;

    .line 48
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->spinner:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0600d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 51
    .local v1, "friendsList":Landroid/widget/GridView;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->friendsListAdapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->retrieveFriends()V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0600d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    .local v0, "doneButton":Landroid/widget/Button;
    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method protected retreiveFriendsSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/User;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    .local v1, "selectableUsers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/SelectableUser;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/milk/milkvideo/models/User;

    .line 90
    .local v2, "user":Lcom/samsung/milk/milkvideo/models/User;
    new-instance v3, Lcom/samsung/milk/milkvideo/models/SelectableUser;

    invoke-direct {v3, v2}, Lcom/samsung/milk/milkvideo/models/SelectableUser;-><init>(Lcom/samsung/milk/milkvideo/models/User;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v2    # "user":Lcom/samsung/milk/milkvideo/models/User;
    :cond_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->friendsListAdapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->setList(Ljava/util/List;)V

    .line 94
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->friendsListAdapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->notifyDataSetChanged()V

    .line 96
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->spinner:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method protected abstract retrieveFriends()V
.end method

.method protected retrieveFriendsFailure()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->spinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method
