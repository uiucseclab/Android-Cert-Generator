.class public Lcom/samsung/milk/milkvideo/utils/ListUtil;
.super Ljava/lang/Object;
.source "ListUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextItemWithWrap(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "previousItem":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 9
    .local v0, "next":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    rem-int v1, v2, v3

    .line 11
    .local v1, "nextIndex":I
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 14
    .end local v0    # "next":Ljava/lang/Object;, "TT;"
    .end local v1    # "nextIndex":I
    :cond_0
    return-object v0
.end method
