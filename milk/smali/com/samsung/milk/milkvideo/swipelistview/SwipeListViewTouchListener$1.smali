.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$1;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setFrontView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$1;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$1;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->swipeListView:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$100(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$1;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    # getter for: Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->downPosition:I
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->access$000(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->onClickFrontView(I)V

    .line 142
    return-void
.end method
