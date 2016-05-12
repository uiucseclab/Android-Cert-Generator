.class Lcom/samsung/milk/milkvideo/fragments/UserListFragment$2;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->displayUsers(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->slideInCells()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/UserListFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->userListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->access$100(Lcom/samsung/milk/milkvideo/fragments/UserListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 76
    return-void
.end method
