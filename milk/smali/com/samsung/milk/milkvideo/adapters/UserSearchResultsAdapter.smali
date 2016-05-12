.class public Lcom/samsung/milk/milkvideo/adapters/UserSearchResultsAdapter;
.super Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;
.source "UserSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter",
        "<",
        "Lcom/samsung/milk/milkvideo/models/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/milk/milkvideo/models/User;>;"
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;-><init>(Ljava/util/List;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/UserSearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/UserSearchResultsAdapter;->getView(Lcom/samsung/milk/milkvideo/models/User;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Lcom/samsung/milk/milkvideo/models/User;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 18
    if-nez p2, :cond_0

    .line 19
    new-instance p2, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 21
    check-cast v0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 22
    return-object p2
.end method

.method public bridge synthetic getView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 10
    check-cast p1, Lcom/samsung/milk/milkvideo/models/User;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/UserSearchResultsAdapter;->getView(Lcom/samsung/milk/milkvideo/models/User;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
