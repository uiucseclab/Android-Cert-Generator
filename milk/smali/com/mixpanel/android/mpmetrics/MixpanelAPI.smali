.class public Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/MixpanelAPI$2;,
        Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;,
        Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;,
        Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;,
        Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
    }
.end annotation


# static fields
.field private static final ENGAGE_DATE_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"

.field public static final VERSION:Ljava/lang/String; = "4.2.1"

.field private static final sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/mixpanel/android/mpmetrics/MixpanelAPI;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPrefsLoader:Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader;

.field private static sReferrerPrefs:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

.field private final mContext:Landroid/content/Context;

.field private mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;

.field private final mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

.field private final mPeople:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

.field private final mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

.field private final mToken:Ljava/lang/String;

.field private final mUpdatesListener:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sInstanceMap:Ljava/util/Map;

    .line 1537
    new-instance v0, Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "referrerPreferences":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/content/SharedPreferences;>;"
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mToken:Ljava/lang/String;

    .line 115
    new-instance v1, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    invoke-direct {v1, p0, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/MixpanelAPI$1;)V

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPeople:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    .line 116
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getAnalyticsMessages()Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-result-object v1

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    .line 117
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getConfig()Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPersistentIdentity(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    move-result-object v1

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    .line 120
    new-instance v1, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;

    invoke-direct {v1, p0, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/MixpanelAPI$1;)V

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mUpdatesListener:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;

    .line 121
    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .line 125
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getPeopleDistinctId()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "peopleId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mUpdatesListener:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;

    invoke-virtual {p0, p3, v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->constructDecideUpdates(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v1

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->registerMixpanelActivityLifecycleCallbacks()V

    .line 132
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    invoke-virtual {v1, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->installDecideCheck(Lcom/mixpanel/android/mpmetrics/DecideUpdates;)V

    .line 135
    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->recordPeopleMessage(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MPConfig;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sendAllPeopleRecords(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/DecideUpdates;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .param p1, "x1"    # Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mUpdatesListener:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->pushWaitingPeopleRecord()V

    return-void
.end method

.method static synthetic access$900(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static allInstances(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;)V
    .locals 6
    .param p0, "processor"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;

    .prologue
    .line 926
    sget-object v5, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sInstanceMap:Ljava/util/Map;

    monitor-enter v5

    .line 927
    :try_start_0
    sget-object v4, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 928
    .local v0, "contextInstances":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .line 929
    .local v3, "instance":Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    invoke-interface {p0, v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;->process(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V

    goto :goto_0

    .line 932
    .end local v0    # "contextInstances":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "instance":Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    return-void
.end method

.method public static enableFallbackServer(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enableIfTrue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    const-string v1, "MixpanelAPI"

    const-string v2, "MixpanelAPI.enableFallbackServer is deprecated.\n    To enable fallback in your application, add\n    <meta-data android:name=\"com.mixpanel.android.MPConfig.DisableFallback\" android:value=\"false\" />\n    to the <application> section of your AndroidManifest.xml."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-result-object v0

    .line 240
    .local v0, "msgs":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->setDisableFallback(Z)V

    .line 241
    return-void

    .line 240
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 164
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v1

    .line 167
    :cond_1
    sget-object v4, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "appContext":Landroid/content/Context;
    sget-object v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sReferrerPrefs:Ljava/util/concurrent/Future;

    if-nez v3, :cond_2

    .line 171
    sget-object v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader;

    const-string v5, "com.mixpanel.android.mpmetrics.ReferralInfo"

    const/4 v6, 0x0

    invoke-virtual {v3, p0, v5, v6}, Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader$OnPrefsLoadedListener;)Ljava/util/concurrent/Future;

    move-result-object v3

    sput-object v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sReferrerPrefs:Ljava/util/concurrent/Future;

    .line 174
    :cond_2
    sget-object v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 175
    .local v2, "instances":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;>;"
    if-nez v2, :cond_3

    .line 176
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "instances":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 177
    .restart local v2    # "instances":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;>;"
    sget-object v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .line 181
    .local v1, "instance":Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    if-nez v1, :cond_4

    .line 182
    new-instance v1, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .end local v1    # "instance":Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    sget-object v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sReferrerPrefs:Ljava/util/concurrent/Future;

    invoke-direct {v1, v0, v3, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)V

    .line 183
    .restart local v1    # "instance":Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_4
    monitor-exit v4

    goto :goto_0

    .line 186
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "instance":Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .end local v2    # "instances":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private pushWaitingPeopleRecord()V
    .locals 2

    .prologue
    .line 1503
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->waitingPeopleRecordsForSending()Lorg/json/JSONArray;

    move-result-object v0

    .line 1504
    .local v0, "records":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 1505
    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sendAllPeopleRecords(Lorg/json/JSONArray;)V

    .line 1507
    :cond_0
    return-void
.end method

.method private recordPeopleMessage(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 1495
    const-string v0, "$distinct_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->peopleMessage(Lorg/json/JSONObject;)V

    .line 1500
    :goto_0
    return-void

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->storeWaitingPeopleRecord(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private sendAllPeopleRecords(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "records"    # Lorg/json/JSONArray;

    .prologue
    .line 1512
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1514
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1515
    .local v2, "message":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-virtual {v3, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->peopleMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    .end local v2    # "message":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "MixpanelAPI"

    const-string v4, "Malformed people record stored pending identity, will not send it."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1520
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public static setFlushInterval(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milliseconds"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    const-string v1, "MixpanelAPI"

    const-string v2, "MixpanelAPI.setFlushInterval is deprecated.\n    To set a custom Mixpanel flush interval for your application, add\n    <meta-data android:name=\"com.mixpanel.android.MPConfig.FlushInterval\" android:value=\"YOUR_INTERVAL\" />\n    to the <application> section of your AndroidManifest.xml."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-result-object v0

    .line 217
    .local v0, "msgs":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    invoke-virtual {v0, p1, p2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->setFlushInterval(J)V

    .line 218
    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "original"    # Ljava/lang/String;

    .prologue
    .line 255
    if-nez p2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getDistinctId()Ljava/lang/String;

    move-result-object p2

    .line 258
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    const-string v2, "MixpanelAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to alias identical distinct_ids "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 264
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 265
    .local v1, "j":Lorg/json/JSONObject;
    const-string v2, "alias"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v2, "original"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v2, "$create_alias"

    invoke-virtual {p0, v2, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "j":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->flush()V

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "MixpanelAPI"

    const-string v3, "Failed to alias"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method clearPreferences()V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->clearPreferences()V

    .line 972
    return-void
.end method

.method public clearSuperProperties()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->clearSuperProperties()V

    .line 454
    return-void
.end method

.method constructDecideUpdates(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "peopleId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;

    .prologue
    .line 964
    new-instance v0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    invoke-direct {v0, p1, p2, p3}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;)V

    return-object v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->postToServer()V

    .line 372
    return-void
.end method

.method getAnalyticsMessages()Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-result-object v0

    return-object v0
.end method

.method getConfig()Lcom/mixpanel/android/mpmetrics/MPConfig;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getEventsDistinctId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPeople:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    return-object v0
.end method

.method getPersistentIdentity(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mixpanel/android/mpmetrics/PersistentIdentity;"
        }
    .end annotation

    .prologue
    .line 948
    .local p2, "referrerPreferences":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/content/SharedPreferences;>;"
    new-instance v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$1;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$1;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V

    .line 958
    .local v0, "listener":Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader$OnPrefsLoadedListener;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.mixpanel.android.mpmetrics.MixpanelAPI_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "prefsName":Ljava/lang/String;
    sget-object v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader;

    invoke-virtual {v3, p1, v1, v0}, Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader$OnPrefsLoadedListener;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 960
    .local v2, "storedPreferences":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/content/SharedPreferences;>;"
    new-instance v3, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-direct {v3, p2, v2}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    return-object v3
.end method

.method public identify(Ljava/lang/String;)V
    .locals 1
    .param p1, "distinctId"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->setEventsDistinctId(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public logPosts()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 886
    const-string v0, "MixpanelAPI"

    const-string v1, "MixpanelAPI.logPosts() is deprecated.\n    To get verbose debug level logging, add\n    <meta-data android:name=\"com.mixpanel.android.MPConfig.EnableDebugLogging\" />\n    to the <application> section of your AndroidManifest.xml."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method registerMixpanelActivityLifecycleCallbacks()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 909
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getAutoShowMixpanelUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 912
    .local v0, "app":Landroid/app/Application;
    new-instance v1, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;

    invoke-direct {v1, p0}, Lcom/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 917
    .end local v0    # "app":Landroid/app/Application;
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    sget-boolean v1, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MixpanelAPI"

    const-string v2, "Context is NOT instanceof Application, AutoShowMixpanelUpdates will be disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerSuperProperties(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "superProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->registerSuperProperties(Lorg/json/JSONObject;)V

    .line 412
    return-void
.end method

.method public registerSuperPropertiesOnce(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "superProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->registerSuperPropertiesOnce(Lorg/json/JSONObject;)V

    .line 439
    return-void
.end method

.method public track(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .prologue
    .line 321
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 323
    .local v6, "messageProps":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v14}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getReferrerProperties()Ljava/util/Map;

    move-result-object v8

    .line 324
    .local v8, "referrerProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 325
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 326
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 327
    .local v13, "value":Ljava/lang/String;
    invoke-virtual {v6, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "messageProps":Lorg/json/JSONObject;
    .end local v8    # "referrerProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Lorg/json/JSONException;
    const-string v14, "MixpanelAPI"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception tracking event "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 330
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "messageProps":Lorg/json/JSONObject;
    .restart local v8    # "referrerProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v14}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getSuperProperties()Lorg/json/JSONObject;

    move-result-object v10

    .line 331
    .local v10, "superProperties":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 332
    .local v9, "superIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 333
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 334
    .restart local v5    # "key":Ljava/lang/String;
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 339
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v11, v14, v16

    .line 340
    .local v11, "time":J
    const-string v14, "time"

    invoke-virtual {v6, v14, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 341
    const-string v14, "distinct_id"

    invoke-virtual/range {p0 .. p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getDistinctId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    if-eqz p2, :cond_2

    .line 344
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 345
    .local v7, "propIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 346
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 347
    .restart local v5    # "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 351
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "propIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    new-instance v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mToken:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v6, v14}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 353
    .local v3, "eventDescription":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-virtual {v14, v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->eventsMessage(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public unregisterSuperProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "superPropertyName"    # Ljava/lang/String;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->unregisterSuperProperty(Ljava/lang/String;)V

    .line 426
    return-void
.end method
