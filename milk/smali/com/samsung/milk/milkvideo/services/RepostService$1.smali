.class Lcom/samsung/milk/milkvideo/services/RepostService$1;
.super Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.source "RepostService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/services/RepostService;->requestRepost(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

.field final synthetic val$video:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/services/RepostService;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    iput-object p3, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    iput-object p4, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/Video;->setRepostedByMe(Z)V

    .line 85
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;->failure()V

    .line 88
    :cond_0
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 5
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v4, 0x1

    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0, v4}, Lcom/samsung/milk/milkvideo/models/Video;->setRepostedByMe(Z)V

    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-interface {v0, v1}, Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;->reposted(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

    # getter for: Lcom/samsung/milk/milkvideo/services/RepostService;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/services/RepostService;->access$000(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoRepostedEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoRepostedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

    # getter for: Lcom/samsung/milk/milkvideo/services/RepostService;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/services/RepostService;->access$100(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendRepostedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

    # getter for: Lcom/samsung/milk/milkvideo/services/RepostService;->googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/services/RepostService;->access$200(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;->sendUserEngagedEvent()V

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

    # getter for: Lcom/samsung/milk/milkvideo/services/RepostService;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/services/RepostService;->access$300(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendVideoRepostedEvent()V

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

    # getter for: Lcom/samsung/milk/milkvideo/services/RepostService;->nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/services/RepostService;->access$400(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/services/RepostService$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/milk/milkvideo/widgets/NachosToast;->show(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 79
    return-void
.end method
