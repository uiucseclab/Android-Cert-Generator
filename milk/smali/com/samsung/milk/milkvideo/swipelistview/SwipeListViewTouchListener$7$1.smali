.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7$1;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7$1;->this$1:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7$1;->this$1:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$7;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;->setEnabled(Z)V

    .line 688
    return-void
.end method