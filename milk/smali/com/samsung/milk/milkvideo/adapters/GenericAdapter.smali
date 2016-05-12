.class public abstract Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;
.super Landroid/widget/BaseAdapter;
.source "GenericAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected initialPosition:I

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;, "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->initialPosition:I

    .line 16
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->list:Ljava/util/List;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;, "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->initialPosition:I

    .line 20
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->list:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;, "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter<TT;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;, "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter<TT;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;, "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;, "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter<TT;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public abstract getView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;, "Lcom/samsung/milk/milkvideo/adapters/GenericAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->initialPosition:I

    .line 44
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/GenericAdapter;->list:Ljava/util/List;

    .line 45
    return-void
.end method
