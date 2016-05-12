.class public Lcom/samsung/milk/milkvideo/adapters/NullVideoListAdapter;
.super Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
.source "NullVideoListAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "recycleView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(Lcom/samsung/milk/milkvideo/models/Video;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;
    .param p2, "recycleView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 10
    check-cast p1, Lcom/samsung/milk/milkvideo/models/Video;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/adapters/NullVideoListAdapter;->getView(Lcom/samsung/milk/milkvideo/models/Video;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 51
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Video;>;"
    return-void
.end method

.method public setShouldAnimate(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 13
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 55
    return-void
.end method

.method public updatePositionInList()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
