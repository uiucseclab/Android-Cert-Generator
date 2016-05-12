.class Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scrollState:I

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 256
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->scrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    instance-of v0, v0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    check-cast v0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->flingInProgressTabCheck()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->updateVideosForScroll()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$400(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    .line 262
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 245
    iput p2, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->scrollState:I

    .line 246
    if-nez p2, :cond_1

    .line 247
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    instance-of v0, v0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    check-cast v0, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;->scrollStateIdleTabCheck()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$3;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->updateVideosForScroll()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$400(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V

    .line 252
    :cond_1
    return-void
.end method
