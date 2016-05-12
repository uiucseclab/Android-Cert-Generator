.class Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$2;
.super Ljava/lang/Object;
.source "VideoFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->setUpCondensableHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->videoFeedList:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->access$200(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v2, v2, v1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListView;->smoothScrollToPositionFromTop(III)V

    .line 153
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->reset()V

    .line 154
    return-void
.end method
