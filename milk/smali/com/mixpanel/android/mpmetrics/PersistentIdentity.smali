.class Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
.super Ljava/lang/Object;
.source "PersistentIdentity.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI PersistentIdentity"

.field private static sReferrerPrefsDirty:Z

.field private static final sReferrerPrefsLock:Ljava/lang/Object;


# instance fields
.field private mEventsDistinctId:Ljava/lang/String;

.field private mIdentitiesLoaded:Z

.field private final mLoadReferrerPreferences:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadStoredPreferences:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleDistinctId:Ljava/lang/String;

.field private final mReferrerChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mReferrerPropertiesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuperPropertiesCache:Lorg/json/JSONObject;

.field private mWaitingPeopleRecords:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsDirty:Z

    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "referrerPreferences":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/content/SharedPreferences;>;"
    .local p2, "storedPreferences":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/content/SharedPreferences;>;"
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadReferrerPreferences:Ljava/util/concurrent/Future;

    .line 70
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    .line 71
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 72
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mReferrerPropertiesCache:Ljava/util/Map;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mIdentitiesLoaded:Z

    .line 74
    new-instance v0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity$1;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity$1;-><init>(Lcom/mixpanel/android/mpmetrics/PersistentIdentity;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mReferrerChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mixpanel/android/mpmetrics/PersistentIdentity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readReferrerProperties()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsDirty:Z

    return p0
.end method

.method private readIdentities()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 328
    const/4 v2, 0x0

    .line 330
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/SharedPreferences;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    :goto_0
    if-nez v2, :cond_0

    .line 360
    :goto_1
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v4, "MixpanelAPI PersistentIdentity"

    const-string v5, "Cannot read distinct ids from sharedPreferences."

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 333
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "MixpanelAPI PersistentIdentity"

    const-string v5, "Cannot read distinct ids from sharedPreferences."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 341
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v4, "events_distinct_id"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mEventsDistinctId:Ljava/lang/String;

    .line 342
    const-string v4, "people_distinct_id"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mPeopleDistinctId:Ljava/lang/String;

    .line 343
    iput-object v7, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mWaitingPeopleRecords:Lorg/json/JSONArray;

    .line 345
    const-string v4, "waiting_array"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "storedWaitingRecord":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 348
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mWaitingPeopleRecords:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 354
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mEventsDistinctId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 355
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mEventsDistinctId:Ljava/lang/String;

    .line 356
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeIdentities()V

    .line 359
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mIdentitiesLoaded:Z

    goto :goto_1

    .line 349
    :catch_2
    move-exception v1

    .line 350
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "MixpanelAPI PersistentIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not interpret waiting people JSON record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private readReferrerProperties()V
    .locals 10

    .prologue
    .line 284
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mReferrerPropertiesCache:Ljava/util/Map;

    .line 287
    :try_start_0
    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadReferrerPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SharedPreferences;

    .line 288
    .local v6, "referrerPrefs":Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mReferrerChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 289
    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mReferrerChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 291
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 292
    .local v3, "prefsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 294
    .local v4, "prefsName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 295
    .local v5, "prefsVal":Ljava/lang/Object;
    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mReferrerPropertiesCache:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 297
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "prefsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "prefsName":Ljava/lang/String;
    .end local v5    # "prefsVal":Ljava/lang/Object;
    .end local v6    # "referrerPrefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v7, "MixpanelAPI PersistentIdentity"

    const-string v8, "Cannot load referrer properties from shared preferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    :goto_1
    return-void

    .line 299
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v7, "MixpanelAPI PersistentIdentity"

    const-string v8, "Cannot load referrer properties from shared preferences."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private readSuperProperties()V
    .locals 6

    .prologue
    .line 264
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 265
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "super_properties"

    const-string v4, "{}"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "props":Ljava/lang/String;
    sget-boolean v3, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MixpanelAPI PersistentIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading Super Properties "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 277
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 280
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "props":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Cannot load superProperties from SharedPreferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 277
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    goto :goto_0

    .line 270
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Cannot load superProperties from SharedPreferences."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 277
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 273
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Cannot parse stored superProperties"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->storeSuperProperties()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 277
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    goto :goto_0

    .line 276
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    if-nez v4, :cond_2

    .line 277
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    :cond_2
    throw v3
.end method

.method private storeSuperProperties()V
    .locals 7

    .prologue
    .line 306
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    if-nez v4, :cond_0

    .line 307
    const-string v4, "MixpanelAPI PersistentIdentity"

    const-string v5, "storeSuperProperties should not be called with uninitialized superPropertiesCache."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "props":Ljava/lang/String;
    sget-boolean v4, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MixpanelAPI PersistentIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storing Super Properties "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 316
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 317
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "super_properties"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeEdits(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 319
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v4, "MixpanelAPI PersistentIdentity"

    const-string v5, "Cannot store superProperties in shared preferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 321
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "MixpanelAPI PersistentIdentity"

    const-string v5, "Cannot store superProperties in shared preferences."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static waitingPeopleRecordsForSending(Landroid/content/SharedPreferences;)Lorg/json/JSONArray;
    .locals 11
    .param p0, "storedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v8, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    .local v5, "ret":Lorg/json/JSONArray;
    const-string v9, "people_distinct_id"

    invoke-interface {p0, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "peopleDistinctId":Ljava/lang/String;
    const-string v9, "waiting_array"

    invoke-interface {p0, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28
    .local v7, "waitingPeopleRecords":Ljava/lang/String;
    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 29
    const/4 v6, 0x0

    .line 31
    .local v6, "waitingObjects":Lorg/json/JSONArray;
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "waitingObjects":Lorg/json/JSONArray;
    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .restart local v6    # "waitingObjects":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "ret":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 38
    .restart local v5    # "ret":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 40
    :try_start_1
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 41
    .local v3, "ob":Lorg/json/JSONObject;
    const-string v8, "$distinct_id"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .end local v3    # "ob":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v2    # "i":I
    .end local v6    # "waitingObjects":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "MixpanelAPI PersistentIdentity"

    const-string v10, "Waiting people records were unreadable."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v8

    .line 43
    .restart local v2    # "i":I
    .restart local v6    # "waitingObjects":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 44
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v8, "MixpanelAPI PersistentIdentity"

    const-string v9, "Unparsable object found in waiting people records"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 48
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 49
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "waiting_array"

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeEdits(Landroid/content/SharedPreferences$Editor;)V

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i":I
    .end local v6    # "waitingObjects":Lorg/json/JSONArray;
    :cond_1
    move-object v8, v5

    .line 52
    goto :goto_2
.end method

.method private static writeEdits(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 387
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private writeIdentities()V
    .locals 6

    .prologue
    .line 365
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 366
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 368
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "events_distinct_id"

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mEventsDistinctId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string v3, "people_distinct_id"

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mPeopleDistinctId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mWaitingPeopleRecords:Lorg/json/JSONArray;

    if-nez v3, :cond_0

    .line 371
    const-string v3, "waiting_array"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    :goto_0
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeEdits(Landroid/content/SharedPreferences$Editor;)V

    .line 382
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 374
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    .restart local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v3, "waiting_array"

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mWaitingPeopleRecords:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 377
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Can\'t write distinct ids to shared preferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 379
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Can\'t write distinct ids to shared preferences."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static writeReferrerPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 57
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 58
    .local v3, "referralInfo":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 65
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "referralInfo":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 63
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "referralInfo":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeEdits(Landroid/content/SharedPreferences$Editor;)V

    .line 64
    const/4 v4, 0x1

    sput-boolean v4, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsDirty:Z

    .line 65
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized clearPreferences()V
    .locals 5

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 164
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 165
    .local v2, "prefsEdit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeEdits(Landroid/content/SharedPreferences$Editor;)V

    .line 167
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readSuperProperties()V

    .line 168
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readIdentities()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 169
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEdit":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 171
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized clearPushId()V
    .locals 6

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 207
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 208
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "push_id"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeEdits(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Can\'t write push id to shared preferences"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Can\'t write push id to shared preferences"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized clearSuperProperties()V
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 256
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->storeSuperProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsDistinctId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mIdentitiesLoaded:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readIdentities()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mEventsDistinctId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPeopleDistinctId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mIdentitiesLoaded:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readIdentities()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mPeopleDistinctId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPushId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 218
    monitor-enter p0

    const/4 v2, 0x0

    .line 220
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 221
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "push_id"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 227
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Can\'t write push id to shared preferences"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Can\'t write push id to shared preferences"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getReferrerProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v1, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-boolean v0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mReferrerPropertiesCache:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readReferrerProperties()V

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->sReferrerPrefsDirty:Z

    .line 98
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mReferrerPropertiesCache:Ljava/util/Map;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSuperProperties()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readSuperProperties()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mSuperPropertiesCache:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerSuperProperties(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "superProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getSuperProperties()Lorg/json/JSONObject;

    move-result-object v3

    .line 179
    .local v3, "propCache":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .local v2, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v4, "MixpanelAPI PersistentIdentity"

    const-string v5, "Exception registering super property."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 177
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "propCache":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 188
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v3    # "propCache":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->storeSuperProperties()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerSuperPropertiesOnce(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "superProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getSuperProperties()Lorg/json/JSONObject;

    move-result-object v3

    .line 240
    .local v3, "propCache":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 244
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v4, "MixpanelAPI PersistentIdentity"

    const-string v5, "Exception registering super property."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 238
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "propCache":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 251
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v3    # "propCache":Lorg/json/JSONObject;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->storeSuperProperties()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setEventsDistinctId(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventsDistinctId"    # Ljava/lang/String;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mIdentitiesLoaded:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readIdentities()V

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mEventsDistinctId:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeIdentities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPeopleDistinctId(Ljava/lang/String;)V
    .locals 1
    .param p1, "peopleDistinctId"    # Ljava/lang/String;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mIdentitiesLoaded:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readIdentities()V

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mPeopleDistinctId:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeIdentities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storePushId(Ljava/lang/String;)V
    .locals 6
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 194
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 195
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "push_id"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeEdits(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Can\'t write push id to shared preferences"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 199
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Can\'t write push id to shared preferences"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized storeWaitingPeopleRecord(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "record"    # Lorg/json/JSONObject;

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mIdentitiesLoaded:Z

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readIdentities()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mWaitingPeopleRecords:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mWaitingPeopleRecords:Lorg/json/JSONArray;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mWaitingPeopleRecords:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 140
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->writeIdentities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterSuperProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "superPropertyName"    # Ljava/lang/String;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getSuperProperties()Lorg/json/JSONObject;

    move-result-object v0

    .line 232
    .local v0, "propCache":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->storeSuperProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 231
    .end local v0    # "propCache":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized waitingPeopleRecordsForSending()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 144
    monitor-enter p0

    const/4 v2, 0x0

    .line 146
    .local v2, "ret":Lorg/json/JSONArray;
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 147
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->waitingPeopleRecordsForSending(Landroid/content/SharedPreferences;)Lorg/json/JSONArray;

    move-result-object v2

    .line 148
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->readIdentities()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Couldn\'t read waiting people records from shared preferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 151
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "MixpanelAPI PersistentIdentity"

    const-string v4, "Couldn\'t read waiting people records from shared preferences."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
