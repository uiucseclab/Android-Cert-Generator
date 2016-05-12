.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;
.super Ljava/lang/Object;
.source "ActionContainerView.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    iget-object v2, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->isRepostLit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateRepostViewImmediately(Z)V
    invoke-static {v2, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$300(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Z)V

    .line 273
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    # setter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->currentlyReposting:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->access$502(Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;Z)Z

    .line 274
    return-void

    :cond_0
    move v0, v1

    .line 272
    goto :goto_0
.end method

.method public reposted(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateRepostView(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->currentlyReposting:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->access$502(Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;Z)Z

    .line 260
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetDismissTimer()V

    .line 261
    return-void
.end method

.method public unreposted(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateRepostView(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->currentlyReposting:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->access$502(Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;Z)Z

    .line 267
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetDismissTimer()V

    .line 268
    return-void
.end method
