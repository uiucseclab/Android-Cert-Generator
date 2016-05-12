.class public Lcom/samsung/milk/milkvideo/api/CategoryListResponse;
.super Ljava/lang/Object;
.source "CategoryListResponse.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/api/CategoryListResponse;->categories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/CategoryListResponse;->categories:Ljava/util/List;

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/Category;>;"
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/CategoryListResponse;->categories:Ljava/util/List;

    .line 19
    return-void
.end method
