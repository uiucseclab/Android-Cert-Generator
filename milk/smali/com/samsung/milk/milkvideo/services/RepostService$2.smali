.class Lcom/samsung/milk/milkvideo/services/RepostService$2;
.super Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;
.source "RepostService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/services/RepostService;->requestUnrepost(Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

.field final synthetic val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

.field final synthetic val$video:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/services/RepostService;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    iput-object p3, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/api/BaseResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/Video;->setRepostedByMe(Z)V

    .line 107
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;->failure()V

    .line 110
    :cond_0
    return-void
.end method

.method public success(Lretrofit/client/Response;)V
    .locals 3
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/Video;->setRepostedByMe(Z)V

    .line 97
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$callback:Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-interface {v0, v1}, Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;->unreposted(Lcom/samsung/milk/milkvideo/models/Video;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->this$0:Lcom/samsung/milk/milkvideo/services/RepostService;

    # getter for: Lcom/samsung/milk/milkvideo/services/RepostService;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/services/RepostService;->access$000(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/services/RepostService$2;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
