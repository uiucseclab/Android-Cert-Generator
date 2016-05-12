.class public Lcom/samsung/milk/milkvideo/fragments/UserListFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;
    }
.end annotation


# instance fields
.field private eventHandler:Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private userListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->slideInCells()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/UserListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->displayUsers(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/UserListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getUsersList(Z)V

    return-void
.end method

.method private displayUsers(Ljava/util/List;Z)V
    .locals 2
    .param p2, "doAnimate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/User;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->setList(Ljava/util/List;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;->setList(Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListAdapter:Lcom/samsung/milk/milkvideo/adapters/UserListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    :cond_1
    return-void
.end method

.method private getUsersList(Z)V
    .locals 2
    .param p1, "doAnimate"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;Z)V

    invoke-interface {v0, v1}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getBrands(Lretrofit/Callback;)V

    .line 99
    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/UserListFragment;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;-><init>()V

    return-object v0
.end method

.method private slideInCells()V
    .locals 9

    .prologue
    .line 126
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 127
    .local v4, "set":Landroid/animation/AnimatorSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "item":Landroid/view/View;
    const-string v5, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 132
    .local v2, "item_animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setX(F)V

    .line 133
    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 134
    mul-int/lit8 v5, v0, 0x1e

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 135
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "item_animator":Landroid/animation/ObjectAnimator;
    :cond_0
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 138
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 140
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onDestroyView()V

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->eventHandler:Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f06008f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;-><init>(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->eventHandler:Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;

    .line 44
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->eventBus:Lcom/squareup/otto/Bus;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->eventHandler:Lcom/samsung/milk/milkvideo/fragments/UserListFragment$EventHandler;

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListView:Landroid/widget/ListView;

    .line 47
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getUsersList(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 50
    .local v0, "cancelButton":Landroid/widget/ImageButton;
    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method
