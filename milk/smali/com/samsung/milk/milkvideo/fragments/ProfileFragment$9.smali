.class Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$9;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setupCondensableHeader(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$9;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$9;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->videoFeedList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$500(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v2, v2, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 396
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$9;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->reset()V

    .line 397
    return-void
.end method
