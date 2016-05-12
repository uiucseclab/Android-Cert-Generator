.class Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "NuxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/NuxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NuxPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/NuxView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/NuxView;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;->this$0:Lcom/samsung/milk/milkvideo/views/NuxView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/NuxView;Lcom/samsung/milk/milkvideo/views/NuxView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/NuxView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/NuxView$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;-><init>(Lcom/samsung/milk/milkvideo/views/NuxView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p3, Lcom/samsung/milk/milkvideo/views/NuxPageView;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 68
    new-instance v0, Lcom/samsung/milk/milkvideo/views/NuxPageView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;->this$0:Lcom/samsung/milk/milkvideo/views/NuxView;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/NuxView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/views/NuxPageView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "nuxPage":Lcom/samsung/milk/milkvideo/views/NuxPageView;
    invoke-virtual {v0, p2}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->drawForPosition(I)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 63
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
