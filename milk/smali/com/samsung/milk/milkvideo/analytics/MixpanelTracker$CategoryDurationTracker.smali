.class public Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;
.super Ljava/lang/Object;
.source "MixpanelTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryDurationTracker"
.end annotation


# instance fields
.field currCategory:Ljava/lang/String;

.field currCategoryTime:J

.field newCategoryTime:J

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendCategoryEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "srcCategory"    # Ljava/lang/String;
    .param p2, "targetCategory"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .prologue
    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # invokes: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$200(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lorg/json/JSONObject;

    move-result-object v1

    .line 283
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "Duration"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 284
    const-string v2, "TargetCategory"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v2, "SourceCategory"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # getter for: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$100(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v2

    const-string v3, "CategoryEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public startTrackingCurrCategoryOnResume()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # getter for: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$000(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/samsung/milk/milkvideo/utils/TimeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategoryTime:J

    .line 278
    :cond_0
    return-void
.end method

.method public startTrackingNewCategory(Ljava/lang/String;)V
    .locals 5
    .param p1, "newCategory"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # getter for: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$000(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/samsung/milk/milkvideo/utils/TimeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->newCategoryTime:J

    .line 249
    iget-wide v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategoryTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 250
    iget-wide v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->newCategoryTime:J

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategoryTime:J

    .line 251
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategory:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategory:Ljava/lang/String;

    iget-wide v1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->newCategoryTime:J

    iget-wide v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategoryTime:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->sendCategoryEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 257
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategory:Ljava/lang/String;

    .line 258
    iget-wide v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->newCategoryTime:J

    iput-wide v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategoryTime:J

    goto :goto_0
.end method

.method public stopTrackingCurrCategory()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 263
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->this$0:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    # getter for: Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->access$000(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/samsung/milk/milkvideo/utils/TimeService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    .line 264
    .local v0, "endTime":J
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategory:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategory:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategory:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategoryTime:J

    sub-long v4, v0, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->sendCategoryEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 269
    iput-wide v6, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->currCategoryTime:J

    .line 270
    iput-wide v6, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->newCategoryTime:J

    .line 272
    :cond_0
    return-void
.end method
