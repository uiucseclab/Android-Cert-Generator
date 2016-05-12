.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;
.super Ljava/lang/Object;
.source "ActionContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentlyReposting:Z

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;
    .param p1, "x1"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->currentlyReposting:Z

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 249
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->currentlyReposting:Z

    if-eqz v1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 252
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->currentlyReposting:Z

    .line 253
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->isRepostLit()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    # invokes: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateRepostViewImmediately(Z)V
    invoke-static {v1, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$300(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Z)V

    .line 255
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v1, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->repostService:Lcom/samsung/milk/milkvideo/services/RepostService;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$3$1;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView$3;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/milk/milkvideo/services/RepostService;->dispatchRepostRequest(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
