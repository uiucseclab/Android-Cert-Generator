.class Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;
.super Lcom/facebook/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetEngagementRequestWrapper"
.end annotation


# instance fields
.field likeCountStringWithLike:Ljava/lang/String;

.field likeCountStringWithoutLike:Ljava/lang/String;

.field socialSentenceStringWithLike:Ljava/lang/String;

.field socialSentenceStringWithoutLike:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V
    .locals 4
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/internal/LikeActionController;

    .line 1213
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 1215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1216
    .local v0, "requestParams":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    new-instance v1, Lcom/facebook/Request;

    # getter for: Lcom/facebook/internal/LikeActionController;->session:Lcom/facebook/Session;
    invoke-static {p1}, Lcom/facebook/internal/LikeActionController;->access$2700(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/Session;

    move-result-object v2

    sget-object v3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    invoke-virtual {p0, v1}, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->setRequest(Lcom/facebook/Request;)V

    .line 1225
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1240
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1241
    # getter for: Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching engagement for object \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1240
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v1, "get_engagement"

    # invokes: Lcom/facebook/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/LikeActionController;->access$2600(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1244
    return-void
.end method

.method protected processSuccess(Lcom/facebook/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 1229
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    const-string v2, "engagement"

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1230
    .local v0, "engagementResults":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1231
    const-string v1, "count_string_with_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    .line 1232
    const-string v1, "count_string_without_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 1233
    const-string v1, "social_sentence_with_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    .line 1234
    const-string v1, "social_sentence_without_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    .line 1236
    :cond_0
    return-void
.end method
