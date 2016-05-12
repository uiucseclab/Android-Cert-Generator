.class public Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;
.super Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;
.source "BrandGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter",
        "<",
        "Lcom/samsung/milk/milkvideo/models/SelectableUser;",
        ">;"
    }
.end annotation


# instance fields
.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;-><init>(Ljava/util/List;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/SelectableUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/SelectableUser;>;"
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;-><init>(Ljava/util/List;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getSelectedList()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/milk/milkvideo/models/SelectableUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->list:Ljava/util/List;

    new-instance v1, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter$1;-><init>(Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/models/SelectableUser;

    .line 36
    .local v0, "user":Lcom/samsung/milk/milkvideo/models/SelectableUser;
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->getView(Lcom/samsung/milk/milkvideo/models/SelectableUser;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getView(Lcom/samsung/milk/milkvideo/models/SelectableUser;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/SelectableUser;
    .param p2, "recycleView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f020099

    .line 42
    if-eqz p2, :cond_0

    instance-of v4, p2, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    if-eqz v4, :cond_0

    .line 43
    move-object v3, p2

    .local v3, "view":Landroid/view/View;
    :goto_0
    move-object v4, v3

    .line 48
    check-cast v4, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    invoke-virtual {v4, p1}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->setUser(Lcom/samsung/milk/milkvideo/models/SelectableUser;)V

    .line 50
    const v4, 0x7f060108

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, "name":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v4, 0x7f060079

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 54
    .local v1, "icon":Landroid/widget/ImageButton;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const v4, 0x7f0200f0

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 59
    :goto_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x37

    invoke-static {v4, v5}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v0

    .line 60
    .local v0, "dp55":I
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->getIconSelectableUri()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 61
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->getIconSelectableUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 65
    :goto_2
    return-object v3

    .line 45
    .end local v0    # "dp55":I
    .end local v1    # "icon":Landroid/widget/ImageButton;
    .end local v2    # "name":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    new-instance v3, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;-><init>(Landroid/content/Context;)V

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 57
    .restart local v1    # "icon":Landroid/widget/ImageButton;
    .restart local v2    # "name":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f0200ba

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 63
    .restart local v0    # "dp55":I
    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method public bridge synthetic getView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 21
    check-cast p1, Lcom/samsung/milk/milkvideo/models/SelectableUser;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->getView(Lcom/samsung/milk/milkvideo/models/SelectableUser;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
