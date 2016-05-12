.class Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;
.super Lcom/samsung/milk/milkvideo/support/BaseCallback;
.source "MixpanelTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendVideoPlayedEvent(Lcom/samsung/milk/milkvideo/api/PlayEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/milk/milkvideo/support/BaseCallback",
        "<",
        "Lcom/samsung/milk/milkvideo/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

.field final synthetic val$playEvent:Lcom/samsung/milk/milkvideo/api/PlayEvent;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;Lcom/samsung/milk/milkvideo/api/PlayEvent;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->val$playEvent:Lcom/samsung/milk/milkvideo/api/PlayEvent;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/support/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 6
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # getter for: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$100(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v0

    const-string v1, "PlayEvent"

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->val$playEvent:Lcom/samsung/milk/milkvideo/api/PlayEvent;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # getter for: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    invoke-static {v3}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$000(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/samsung/milk/milkvideo/utils/TimeService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/milk/milkvideo/api/PlayEvent;->forMixpanel(JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 116
    return-void
.end method

.method public success(Lcom/samsung/milk/milkvideo/models/User;Lretrofit/client/Response;)V
    .locals 6
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "brandName":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # getter for: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$100(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v1

    const-string v2, "PlayEvent"

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->val$playEvent:Lcom/samsung/milk/milkvideo/api/PlayEvent;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # getter for: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$000(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/samsung/milk/milkvideo/utils/TimeService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lcom/samsung/milk/milkvideo/api/PlayEvent;->forMixpanel(JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 111
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 106
    check-cast p1, Lcom/samsung/milk/milkvideo/models/User;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;->success(Lcom/samsung/milk/milkvideo/models/User;Lretrofit/client/Response;)V

    return-void
.end method
