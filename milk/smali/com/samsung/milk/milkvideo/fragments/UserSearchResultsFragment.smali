.class public Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "UserSearchResultsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 45
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;-><init>()V

    .line 46
    .local v0, "fragment":Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;
    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    const v6, 0x7f0600c5

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 27
    .local v4, "userList":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "users"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 30
    .local v2, "parcelableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/milk/milkvideo/models/User;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 32
    .local v3, "parcelableUser":Landroid/os/Parcelable;
    check-cast v3, Lcom/samsung/milk/milkvideo/models/User;

    .end local v3    # "parcelableUser":Landroid/os/Parcelable;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    new-instance v6, Lcom/samsung/milk/milkvideo/adapters/UserSearchResultsAdapter;

    invoke-direct {v6, v5}, Lcom/samsung/milk/milkvideo/adapters/UserSearchResultsAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "parcelableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/milk/milkvideo/models/User;>;"
    :cond_1
    const v6, 0x7f0600c4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment$1;

    invoke-direct {v7, p0}, Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
