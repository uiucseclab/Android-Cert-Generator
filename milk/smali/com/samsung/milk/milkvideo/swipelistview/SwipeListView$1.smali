.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView$1;
.super Landroid/database/DataSetObserver;
.source "SwipeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView$1;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 302
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView$1;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onListChanged()V

    .line 303
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView$1;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->touchListener:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->access$000(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->resetItems()V

    .line 304
    return-void
.end method
