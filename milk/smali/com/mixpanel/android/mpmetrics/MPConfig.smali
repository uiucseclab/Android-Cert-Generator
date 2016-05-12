.class public Lcom/mixpanel/android/mpmetrics/MPConfig;
.super Ljava/lang/Object;
.source "MPConfig.java"


# static fields
.field public static DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.MPConfig"

.field static final MAX_NOTIFICATION_CACHE_COUNT:I = 0x2

.field static final REFERRER_PREFS_NAME:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.ReferralInfo"

.field public static final VERSION:Ljava/lang/String; = "4.2.1"

.field private static sInstance:Lcom/mixpanel/android/mpmetrics/MPConfig;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mAutoShowMixpanelUpdates:Z

.field private final mBulkUploadLimit:I

.field private final mDataExpiration:I

.field private final mDecideEndpoint:Ljava/lang/String;

.field private final mDecideFallbackEndpoint:Ljava/lang/String;

.field private final mDisableFallback:Z

.field private final mEventsEndpoint:Ljava/lang/String;

.field private final mEventsFallbackEndpoint:Ljava/lang/String;

.field private final mFlushInterval:I

.field private final mPeopleEndpoint:Ljava/lang/String;

.field private final mPeopleFallbackEndpoint:Ljava/lang/String;

.field private final mTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPConfig;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "metaData"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v10, "com.mixpanel.android.MPConfig.EnableDebugLogging"

    invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    .line 40
    const-string v10, "com.mixpanel.android.MPConfig.AutoCheckForSurveys"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 41
    const-string v10, "MixpanelAPI.MPConfig"

    const-string v11, "com.mixpanel.android.MPConfig.AutoCheckForSurveys has been deprecated in favor of com.mixpanel.android.MPConfig.AutoShowMixpanelUpdates. Please update this key as soon as possible."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    const-string v10, "com.mixpanel.android.MPConfig.BulkUploadLimit"

    const/16 v11, 0x28

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mBulkUploadLimit:I

    .line 46
    const-string v10, "com.mixpanel.android.MPConfig.FlushInterval"

    const v11, 0xea60

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mFlushInterval:I

    .line 47
    const-string v10, "com.mixpanel.android.MPConfig.DataExpiration"

    const v11, 0x19bfcc00

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mDataExpiration:I

    .line 48
    const-string v10, "com.mixpanel.android.MPConfig.DisableFallback"

    invoke-virtual {p1, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mDisableFallback:Z

    .line 51
    const-string v10, "com.mixpanel.android.MPConfig.AutoCheckForSurveys"

    invoke-virtual {p1, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 52
    .local v7, "surveysAutoCheck":Z
    const-string v10, "com.mixpanel.android.MPConfig.AutoShowMixpanelUpdates"

    invoke-virtual {p1, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 53
    .local v4, "mixpanelUpdatesAutoShow":Z
    if-eqz v7, :cond_8

    if-eqz v4, :cond_8

    :goto_0
    iput-boolean v8, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mAutoShowMixpanelUpdates:Z

    .line 55
    const-string v8, "com.mixpanel.android.MPConfig.TestMode"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mTestMode:Z

    .line 57
    const-string v8, "com.mixpanel.android.MPConfig.EventsEndpoint"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "eventsEndpoint":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 59
    const-string v2, "https://api.mixpanel.com/track?ip=1"

    .line 61
    :cond_1
    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mEventsEndpoint:Ljava/lang/String;

    .line 63
    const-string v8, "com.mixpanel.android.MPConfig.EventsFallbackEndpoint"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "eventsFallbackEndpoint":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 65
    const-string v3, "http://api.mixpanel.com/track?ip=1"

    .line 67
    :cond_2
    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mEventsFallbackEndpoint:Ljava/lang/String;

    .line 69
    const-string v8, "com.mixpanel.android.MPConfig.PeopleEndpoint"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "peopleEndpoint":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 71
    const-string v5, "https://api.mixpanel.com/engage"

    .line 73
    :cond_3
    iput-object v5, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mPeopleEndpoint:Ljava/lang/String;

    .line 75
    const-string v8, "com.mixpanel.android.MPConfig.PeopleFallbackEndpoint"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "peopleFallbackEndpoint":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 77
    const-string v6, "http://api.mixpanel.com/engage"

    .line 79
    :cond_4
    iput-object v6, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mPeopleFallbackEndpoint:Ljava/lang/String;

    .line 81
    const-string v8, "com.mixpanel.android.MPConfig.DecideEndpoint"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "decideEndpoint":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 83
    const-string v0, "https://decide.mixpanel.com/decide"

    .line 85
    :cond_5
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mDecideEndpoint:Ljava/lang/String;

    .line 87
    const-string v8, "com.mixpanel.android.MPConfig.DecideFallbackEndpoint"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "decideFallbackEndpoint":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 89
    const-string v1, "http://decide.mixpanel.com/decide"

    .line 91
    :cond_6
    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mDecideFallbackEndpoint:Ljava/lang/String;

    .line 93
    sget-boolean v8, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v8, :cond_7

    .line 94
    const-string v8, "MixpanelAPI.MPConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mixpanel configured with:\n    AutoShowMixpanelUpdates "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getAutoShowMixpanelUpdates()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    BulkUploadLimit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getBulkUploadLimit()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    FlushInterval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getFlushInterval()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    DataExpiration "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDataExpiration()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    DisableFallback "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDisableFallback()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    EnableDebugLogging "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    TestMode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getTestMode()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    EventsEndpoint "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getEventsEndpoint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    PeopleEndpoint "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getPeopleEndpoint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    DecideEndpoint "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDecideEndpoint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    EventsFallbackEndpoint "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getEventsFallbackEndpoint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    PeopleFallbackEndpoint "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getPeopleFallbackEndpoint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    DecideFallbackEndpoint "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDecideFallbackEndpoint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_7
    return-void

    .end local v0    # "decideEndpoint":Ljava/lang/String;
    .end local v1    # "decideFallbackEndpoint":Ljava/lang/String;
    .end local v2    # "eventsEndpoint":Ljava/lang/String;
    .end local v3    # "eventsFallbackEndpoint":Ljava/lang/String;
    .end local v5    # "peopleEndpoint":Ljava/lang/String;
    .end local v6    # "peopleFallbackEndpoint":Ljava/lang/String;
    :cond_8
    move v8, v9

    .line 53
    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v2, Lcom/mixpanel/android/mpmetrics/MPConfig;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 28
    :try_start_0
    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPConfig;->sInstance:Lcom/mixpanel/android/mpmetrics/MPConfig;

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->readConfig(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v1

    sput-object v1, Lcom/mixpanel/android/mpmetrics/MPConfig;->sInstance:Lcom/mixpanel/android/mpmetrics/MPConfig;

    .line 32
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPConfig;->sInstance:Lcom/mixpanel/android/mpmetrics/MPConfig;

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static readConfig(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;
    .locals 7
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 178
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 179
    .local v1, "configBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 180
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "configBundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 182
    .restart local v1    # "configBundle":Landroid/os/Bundle;
    :cond_0
    new-instance v4, Lcom/mixpanel/android/mpmetrics/MPConfig;

    invoke-direct {v4, v1}, Lcom/mixpanel/android/mpmetrics/MPConfig;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 183
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "configBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t configure Mixpanel with package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public getAutoShowMixpanelUpdates()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mAutoShowMixpanelUpdates:Z

    return v0
.end method

.method public getBulkUploadLimit()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mBulkUploadLimit:I

    return v0
.end method

.method public getDataExpiration()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mDataExpiration:I

    return v0
.end method

.method public getDecideEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mDecideEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getDecideFallbackEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mDecideFallbackEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableFallback()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mDisableFallback:Z

    return v0
.end method

.method public getEventsEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mEventsEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getEventsFallbackEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mEventsFallbackEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getFlushInterval()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mFlushInterval:I

    return v0
.end method

.method public getPeopleEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mPeopleEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleFallbackEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mPeopleFallbackEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getTestMode()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/MPConfig;->mTestMode:Z

    return v0
.end method
