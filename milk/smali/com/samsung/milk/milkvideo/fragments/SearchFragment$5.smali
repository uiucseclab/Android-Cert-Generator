.class Lcom/samsung/milk/milkvideo/fragments/SearchFragment$5;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->updateVideosForScroll()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$700(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    .line 143
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$5;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->updateVideosForScroll()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$700(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    .line 138
    :cond_0
    return-void
.end method
