.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;
.super Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.source "ActionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->starVideo()V
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
    .line 411
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 3
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 431
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetDismissTimer()V

    .line 433
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    # setter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->currentlyStarringVideo:Z
    invoke-static {v0, v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->access$902(Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;Z)Z

    .line 434
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 5
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 415
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->starButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$800(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoStarredEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoStarredEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/milk/milkvideo/models/Video;->setStarredByMe(Z)V

    .line 418
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendStarredEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;->sendUserEngagedEvent()V

    .line 420
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendVideoStarEvent()V

    .line 421
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->resetDismissTimer()V

    .line 422
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    # setter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->currentlyStarringVideo:Z
    invoke-static {v0, v3}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->access$902(Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;Z)Z

    .line 423
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v1, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;->this$1:Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/samsung/milk/milkvideo/widgets/NachosToast;->show(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 426
    :cond_0
    return-void
.end method
