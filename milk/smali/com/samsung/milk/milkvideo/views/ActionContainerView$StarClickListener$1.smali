.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;
.super Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.source "ActionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->unstarVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 3
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 403
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetDismissTimer()V

    .line 405
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    # setter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->currentlyStarringVideo:Z
    invoke-static {v0, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->access$902(Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;Z)Z

    .line 406
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 4
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 393
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoUnstarredEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoUnstarredEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/milk/milkvideo/models/Video;->setStarredByMe(Z)V

    .line 396
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetDismissTimer()V

    .line 397
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    # setter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->currentlyStarringVideo:Z
    invoke-static {v0, v3}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->access$902(Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;Z)Z

    .line 398
    return-void
.end method
