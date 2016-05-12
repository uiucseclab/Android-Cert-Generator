.class public Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
.super Ljava/lang/Object;
.source "MixpanelTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;
    }
.end annotation


# static fields
.field private static final APP_CLOSE_EVENT:Ljava/lang/String; = "AppClose"

.field private static final APP_IN_FOCUS_EVENT:Ljava/lang/String; = "AppInFocus"

.field private static final APP_LOST_FOCUS_EVENT:Ljava/lang/String; = "AppLostFocus"

.field private static final APP_OPEN_EVENT:Ljava/lang/String; = "AppOpen"

.field private static final CATEGORY_CHANGED_EVENT:Ljava/lang/String; = "CategoryEvent"

.field private static final CHANNEL_FOLLOWED_ONBOARDING_EVENT:Ljava/lang/String; = "ChannelFollowedOnboarding"

.field private static final FACEPILE_CLICKED_EVENT:Ljava/lang/String; = "FacepileClickedEvent"

.field private static final FOLLOW_EVENT:Ljava/lang/String; = "FollowEvent"

.field private static final LOGIN_EVENT:Ljava/lang/String; = "LoginEvent"

.field private static final LOGOUT_EVENT:Ljava/lang/String; = "LogOutEvent"

.field private static final NUX_COMPLETED_EVENT:Ljava/lang/String; = "NuxCompletedEvent"

.field private static final NUX_STARTED_EVENT:Ljava/lang/String; = "NuxStartedEvent"

.field private static final PLAY_SERVICES_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gms"

.field private static final REPOSTED_EVENT:Ljava/lang/String; = "RepostedEvent"

.field private static final SHARE_EVENT:Ljava/lang/String; = "ShareEvent"

.field private static final STARRED_EVENT:Ljava/lang/String; = "StarredEvent"

.field private static final UNFOLLOW_EVENT:Ljava/lang/String; = "UnFollowEvent"

.field private static final USER_ENGAGED_EVENT:Ljava/lang/String; = "UserEngagedEvent"

.field private static final VIDEO_BUFFERING_EVENT:Ljava/lang/String; = "VideoBuffering"

.field private static final VIDEO_HIDE_EVENT:Ljava/lang/String; = "VideoHideEvent"

.field private static final VIDEO_PLAY_EVENT:Ljava/lang/String; = "PlayEvent"

.field private static final YOUTUBE_INITIALIZER_FAILURE_POINT:Ljava/lang/String; = "InitYouTubeFailurePoint"

.field public static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"


# instance fields
.field private appSessionStartTime:J

.field private final categoryTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;

.field private final mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

.field private final nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

.field private nuxStartTime:J

.field private final packageUtilInfo:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

.field private final timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/utils/TimeService;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;)V
    .locals 1
    .param p1, "timeService"    # Lcom/samsung/milk/milkvideo/utils/TimeService;
    .param p2, "instance"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .param p3, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p4, "util"    # Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .line 54
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    .line 55
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 56
    new-instance v0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;-><init>(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->categoryTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;

    .line 57
    iput-object p4, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->packageUtilInfo:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/samsung/milk/milkvideo/utils/TimeService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private createEventDataJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    .local v0, "eventData":Lorg/json/JSONObject;
    const-string v1, "EventTime"

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    return-object v0
.end method

.method private setEngagedSuperProperty(Z)V
    .locals 5
    .param p1, "engaged"    # Z

    .prologue
    .line 87
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .local v1, "props":Lorg/json/JSONObject;
    const-string v2, "engaged"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 89
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v2, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->registerSuperProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "props":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to initialize analytics because of a JSON error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateFollowingCount(Z)V
    .locals 4
    .param p1, "isFollowing"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v2

    const-string v3, "FollowingCount"

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-interface {v2, v3, v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->increment(Ljava/lang/String;D)V

    .line 97
    return-void

    .line 96
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method


# virtual methods
.method public flushData()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->flush()V

    .line 101
    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "userAnalyticsId"    # Ljava/lang/String;
    .param p2, "userDeviceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 61
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v2, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->identify(Ljava/lang/String;)V

    .line 64
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v1, "props":Lorg/json/JSONObject;
    const-string v2, "device_id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "play_services_version"

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->packageUtilInfo:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;->getVersionForPackageInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "youtube_version"

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->packageUtilInfo:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    const-string v4, "com.google.android.youtube"

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;->getVersionForPackageInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v2, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->registerSuperPropertiesOnce(Lorg/json/JSONObject;)V

    .line 69
    const-string v2, "Analytics initialized"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "props":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to initialize analytics because of a JSON error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCategoryChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "newCategory"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->categoryTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->startTrackingNewCategory(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public sendAppClosedEvent()V
    .locals 5

    .prologue
    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 185
    .local v1, "eventData":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "AppClose"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to send app closed event because of a JSON error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendAppInFocusEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->setEngagedSuperProperty(Z)V

    .line 194
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 195
    .local v1, "eventData":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "AppInFocus"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 196
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->categoryTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->startTrackingCurrCategoryOnResume()V

    .line 197
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->appSessionStartTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to send app in focus event because of a JSON error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendAppLostFocusEvent()V
    .locals 7

    .prologue
    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 206
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "SessionLengthMillis"

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->appSessionStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 207
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->appSessionStartTime:J

    .line 208
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "AppLostFocus"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 209
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->categoryTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$CategoryDurationTracker;->stopTrackingCurrCategory()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to send app lost focus event because of a JSON error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendAppOpenedEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->setEngagedSuperProperty(Z)V

    .line 175
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 176
    .local v1, "eventData":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "AppOpen"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to send app opened event because of a JSON error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendChannelFollowedOnboardingEvent(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 318
    .local v3, "uuid":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 319
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v4, "ChannelUuid"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v5, "ChannelFollowedOnboarding"

    invoke-virtual {v4, v5, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "uuid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public sendFacePileClickedEvent()V
    .locals 4

    .prologue
    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 330
    .local v1, "eventData":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "FacepileClickedEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendFollowOrUnfollowEvent(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "targetUserId"    # Ljava/lang/String;
    .param p2, "isBrand"    # Z
    .param p3, "isFollowEvent"    # Z
    .param p4, "isFBFriend"    # Z

    .prologue
    .line 149
    :try_start_0
    invoke-direct {p0, p3}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->updateFollowingCount(Z)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 151
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "TargetUserId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v2, "isFacebookFriend"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 153
    const-string v3, "TargetType"

    if-eqz p2, :cond_0

    const-string v2, "Brand"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz p3, :cond_1

    const-string v2, "FollowEvent"

    :goto_1
    invoke-virtual {v3, v2, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 158
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 153
    .restart local v1    # "eventData":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "User"

    goto :goto_0

    .line 154
    :cond_1
    const-string v2, "UnFollowEvent"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to send (un)follow event because of a JSON error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public sendLoginEvent(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "isFromUserActions"    # Z

    .prologue
    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 359
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "AccountType"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v2, "FromUserActions"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 361
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "LoginEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendLogoutEvent()V
    .locals 4

    .prologue
    .line 369
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 370
    .local v1, "eventData":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "LogOutEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendNuxCompletedEvent()V
    .locals 7

    .prologue
    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 349
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "TimeSpentInNux"

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->nuxStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 350
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "NuxCompletedEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendNuxStartedEvent()V
    .locals 4

    .prologue
    .line 338
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 339
    .local v1, "eventData":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->nuxStartTime:J

    .line 340
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "NuxStartedEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRepostedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 123
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->setEngagedSuperProperty(Z)V

    .line 124
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 125
    .local v1, "repostedData":Lorg/json/JSONObject;
    const-string v2, "ContentId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v2, "Provider"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "RepostedEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 128
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "UserEngagedEvent"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "repostedData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to send repost event because of a JSON error"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendShareEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 162
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->setEngagedSuperProperty(Z)V

    .line 163
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "ContentId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "ShareEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 166
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "UserEngagedEvent"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to send share event because of a JSON error"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendStarredEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 136
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->setEngagedSuperProperty(Z)V

    .line 137
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 138
    .local v1, "starredData":Lorg/json/JSONObject;
    const-string v2, "ContentId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v2, "Provider"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "StarredEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 141
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "UserEngagedEvent"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "starredData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Unable to send star event because of a JSON error"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendVideoBufferingEvent(Ljava/lang/String;J)V
    .locals 4
    .param p1, "embedCode"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .prologue
    .line 296
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 297
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "EmbedCode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v2, "BufferingDuration"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "VideoBuffering"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendVideoHideEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "embedCode"    # Ljava/lang/String;

    .prologue
    .line 307
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 308
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "EmbedCode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "VideoHideEvent"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendVideoPlayedEvent(Lcom/samsung/milk/milkvideo/api/PlayEvent;)V
    .locals 4
    .param p1, "playEvent"    # Lcom/samsung/milk/milkvideo/api/PlayEvent;

    .prologue
    .line 104
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->setEngagedSuperProperty(Z)V

    .line 105
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/api/PlayEvent;->getBrandUUID()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "brandUUID":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker$1;-><init>(Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;Lcom/samsung/milk/milkvideo/api/PlayEvent;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getUser(Ljava/lang/String;Lretrofit/Callback;)V

    .line 118
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v2, "UserEngagedEvent"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 119
    return-void
.end method

.method public sendYouTubeInitFailureEvent()V
    .locals 5

    .prologue
    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->createEventDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 218
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v2, "PlayServicesVersion"

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->packageUtilInfo:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;->getVersionForPackageInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v2, "YouTubeAppVersion"

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->packageUtilInfo:Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    const-string v4, "com.google.android.youtube"

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;->getVersionForPackageInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v3, "InitYouTubeFailurePoint"

    invoke-virtual {v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException while trying to send YT Failure."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUserProfile(Lcom/samsung/milk/milkvideo/models/User;Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "userAnalyticsId"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->identify(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    const-string v1, "Uuid"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    const-string v1, "FirstName"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    const-string v1, "LastName"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v1

    const-string v2, "UserType"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->isBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Brand"

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    const-string v1, "FollowingCount"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getFollowingCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void

    .line 81
    :cond_0
    const-string v0, "User"

    goto :goto_0
.end method
