.class public Lcom/appsflyer/AppsFlyerLib;
.super Landroid/content/BroadcastReceiver;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;,
        Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;,
        Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;,
        Lcom/appsflyer/AppsFlyerLib$DataCollector;
    }
.end annotation


# static fields
.field static final AF_COUNTER_PREF:Ljava/lang/String; = "appsFlyerCount"

.field protected static final AF_SHARED_PREF:Ljava/lang/String; = "appsflyer-data"

.field private static final ANDROID_ID_CACHED_PREF:Ljava/lang/String; = "androidIdCached"

.field public static final APPS_TRACKING_URL:Ljava/lang/String; = "https://track.appsflyer.com/api/v2.3/androidevent?buildnumber=1.14&app_id="

.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field static final ATTRIBUTION_ID_PREF:Ljava/lang/String; = "attributionId"

.field private static final CACHED_CHANNEL_PREF:Ljava/lang/String; = "CACHED_CHANNEL"

.field private static final CACHED_URL_PARAMTER:Ljava/lang/String; = "&isCachedRequest=true"

.field private static final CALL_SERVER_ACTION:Ljava/lang/String; = "call server."

.field private static final DEEPLINK_ATTR_PREF:Ljava/lang/String; = "deeplinkAttribution"

.field private static final ERROR_PREFIX:Ljava/lang/String; = "ERROR:"

.field static final FIRST_INSTALL_PREF:Ljava/lang/String; = "appsFlyerFirstInstall"

.field private static final IGNORABLE_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMEI_CACHED_PREF:Ljava/lang/String; = "imeiCached"

.field private static final INSTALL_STORE_PREF:Ljava/lang/String; = "INSTALL_STORE"

.field private static final INSTALL_UPDATE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd_hhmmZ"

.field public static final LOG_TAG:Ljava/lang/String; = "AppsFlyer_1.14"

.field private static final ON_RECIEVE_CALLED:Ljava/lang/String; = "onRecieve called. refferer="

.field private static final PREPARE_DATA_ACTION:Ljava/lang/String; = "collect data for server"

.field private static final PRE_INSTALL_PREF:Ljava/lang/String; = "preInstallName"

.field protected static final REFERRER_PREF:Ljava/lang/String; = "referrer"

.field public static final SDK_BUILD_NUMBER:Ljava/lang/String; = "1.14"

.field static final SENT_SUCCESSFULLY_PREF:Ljava/lang/String; = "sentSuccessfully"

.field public static final SERVER_BUILD_NUMBER:Ljava/lang/String; = "2.3"

.field private static final SERVER_RESPONDED_ACTION:Ljava/lang/String; = "response from server. status="

.field private static final UNINSTALL_URL:Ljava/lang/String; = "https://track.appsflyer.com/api/v2.3/uninsall?buildnumber=1.14"

.field private static final WARNING_PREFIX:Ljava/lang/String; = "WARNING:"

.field private static cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private static conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

.field private static isDuringCheckCache:Z

.field private static lastCacheCheck:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "is_cache"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->IGNORABLE_KEYS:Ljava/util/List;

    .line 70
    sput-object v3, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 71
    sput-boolean v2, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    .line 74
    sput-object v3, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1342
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Lcom/appsflyer/AppsFlyerConversionListener;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    return p0
.end method

.method static synthetic access$1302(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 32
    sput-wide p0, Lcom/appsflyer/AppsFlyerLib;->lastCacheCheck:J

    return-wide p0
.end method

.method static synthetic access$1400()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 32
    sput-object p0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->getEventTag(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/ref/WeakReference;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static/range {p0 .. p6}, Lcom/appsflyer/AppsFlyerLib;->sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static addAdvertiserIDData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 917
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v4, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 918
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 919
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "advertiserId":Ljava/lang/String;
    const-string v4, "advertiserId"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "advertiserIdEnabled":Ljava/lang/String;
    const-string v4, "advertiserIdEnabled"

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v5, "advertiserId"

    invoke-virtual {v4, v5, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v5, "advertiserIdEnabled"

    invoke-virtual {v4, v5, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 947
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .end local v1    # "advertiserId":Ljava/lang/String;
    .end local v2    # "advertiserIdEnabled":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 921
    .restart local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .restart local v1    # "advertiserId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 925
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .end local v1    # "advertiserId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 926
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 927
    const-string v4, "AppsFlyer_1.14"

    const-string v5, "WARNING:Google Play services SDK jar is missing."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 929
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 930
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v5, "advertiserId"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 931
    .restart local v1    # "advertiserId":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 932
    const-string v4, "advertiserId"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v5, "advertiserIdEnabled"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 936
    .restart local v2    # "advertiserIdEnabled":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 937
    const-string v4, "advertiserIdEnabled"

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 940
    const-string v4, "AppsFlyer_1.14"

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :goto_2
    const-string v4, "Could not fetch advertiser id: "

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 942
    :cond_4
    const-string v4, "AppsFlyer_1.14"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static addDeviceTracking(Landroid/content/Context;Ljava/util/Map;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    const-string v12, "deviceTrackingDisabled"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 706
    .local v4, "deviceTrackingDisabled":Z
    if-eqz v4, :cond_1

    .line 707
    const-string v11, "deviceTrackingDisabled"

    const-string v12, "true"

    invoke-interface {p1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const-string v11, "appsflyer-data"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 710
    .local v10, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    const-string v12, "collectIMEI"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 711
    .local v3, "collectIMEI":Z
    const-string v11, "imeiCached"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 712
    .local v8, "imeiCachedString":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 714
    :try_start_0
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 715
    .local v9, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getDeviceId"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v11, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 716
    .local v7, "imei":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 717
    move-object v7, v8

    .line 727
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 728
    const-string v11, "imei"

    invoke-interface {p1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 737
    .end local v7    # "imei":Ljava/lang/String;
    .end local v9    # "manager":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    const-string v12, "collectAndroidId"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 738
    .local v2, "collectAndroidId":Z
    const-string v11, "androidIdCached"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "androidIdCachedString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 741
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "android_id"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 743
    move-object v0, v1

    .line 753
    :goto_3
    if-eqz v0, :cond_0

    .line 754
    const-string v11, "android_id"

    invoke-interface {p1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 756
    .end local v0    # "androidId":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_0

    .line 718
    .end local v1    # "androidIdCachedString":Ljava/lang/String;
    .end local v2    # "collectAndroidId":Z
    .restart local v7    # "imei":Ljava/lang/String;
    .restart local v9    # "manager":Landroid/telephony/TelephonyManager;
    :cond_4
    if-nez v8, :cond_2

    .line 719
    :try_start_2
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 720
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "imeiCached"

    invoke-interface {v6, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 721
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x9

    if-lt v11, v12, :cond_5

    .line 722
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 731
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "imei":Ljava/lang/String;
    .end local v9    # "manager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v5

    .line 733
    .local v5, "e":Ljava/lang/Exception;
    const-string v11, "AppsFlyer_1.14"

    const-string v12, "WARNING:READ_PHONE_STATE is missing"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 724
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "imei":Ljava/lang/String;
    .restart local v9    # "manager":Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_3
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 745
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "imei":Ljava/lang/String;
    .end local v9    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "androidIdCachedString":Ljava/lang/String;
    .restart local v2    # "collectAndroidId":Z
    :cond_6
    :try_start_4
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 746
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "androidIdCached"

    invoke-interface {v6, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 747
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x9

    if-lt v11, v12, :cond_7

    .line 748
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 750
    :cond_7
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method private static attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v0, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 399
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 400
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 402
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/appsflyer/AppsFlyerLib;->IGNORABLE_KEYS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 403
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "AppsFlyer_1.14"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    const/4 v0, 0x0

    .line 411
    .end local v0    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v0
.end method

.method private static callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "postData"    # Ljava/lang/String;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "eventLogTag"    # Ljava/lang/String;
    .param p6, "shouldRequestConvesrion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    .local p3, "ctxReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 1050
    .local v3, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1052
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 1054
    const-string v11, "POST"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v2, v11

    .line 1056
    .local v2, "contentLength":I
    const-string v11, "Content-Length"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v11, "Connection"

    const-string v12, "close"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1059
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1060
    const/4 v6, 0x0

    .line 1062
    .local v6, "out":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    .end local v6    # "out":Ljava/io/OutputStreamWriter;
    .local v7, "out":Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1065
    if-eqz v7, :cond_0

    .line 1066
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 1069
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 1070
    .local v10, "statusCode":I
    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1071
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "response code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_1
    const-string v11, "SERVER_RESPONSE_CODE"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-static {v3, v0, v11, v12}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v11, "response from server. status="

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1075
    const-string v11, "appsflyer-data"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1076
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v11, 0xc8

    if-ne v10, v11, :cond_3

    .line 1077
    if-eqz p4, :cond_2

    .line 1078
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v3}, Lcom/appsflyer/cache/CacheManager;->deleteRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 1080
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    if-nez p4, :cond_3

    .line 1082
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1083
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "sentSuccessfully"

    const-string v12, "true"

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1084
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1085
    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLib;->checkCache(Landroid/content/Context;)V

    .line 1089
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v11, "attributionId"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    if-eqz p2, :cond_8

    if-eqz p6, :cond_8

    .line 1091
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 1093
    .local v8, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v11, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0, v8}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    const-wide/16 v12, 0xa

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v11, v12, v13, v14}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1112
    .end local v8    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 1113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1116
    :cond_5
    return-void

    .line 1065
    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .end local v9    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v10    # "statusCode":I
    .restart local v6    # "out":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v11

    :goto_1
    if-eqz v6, :cond_6

    .line 1066
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    :cond_6
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1112
    .end local v2    # "contentLength":I
    .end local v6    # "out":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v11

    if-eqz v1, :cond_7

    .line 1113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v11

    .line 1094
    .restart local v2    # "contentLength":I
    .restart local v7    # "out":Ljava/io/OutputStreamWriter;
    .restart local v9    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v10    # "statusCode":I
    :cond_8
    if-nez p2, :cond_9

    .line 1095
    :try_start_5
    const-string v11, "AppsFlyer dev key is missing."

    move-object/from16 v0, p5

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1096
    :cond_9
    if-eqz p6, :cond_4

    sget-object v11, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v11, :cond_4

    const-string v11, "attributionId"

    const/4 v12, 0x0

    .line 1098
    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    .line 1099
    invoke-static {v3, v11}, Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/Context;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 1103
    :try_start_6
    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 1104
    .local v4, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    .line 1105
    sget-object v11, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v11, v4}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionDataLoaded(Ljava/util/Map;)V
    :try_end_6
    .catch Lcom/appsflyer/AttributionIDNotReady; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 1107
    .end local v4    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    goto :goto_0

    .line 1065
    .end local v9    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v10    # "statusCode":I
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .restart local v6    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method

.method private static checkCache(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 834
    sget-boolean v0, Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/appsflyer/AppsFlyerLib;->lastCacheCheck:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 840
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 841
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;

    invoke-direct {v1, p0}, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private static debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "actionMsg"    # Ljava/lang/String;
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    if-eqz p2, :cond_0

    const-string v0, "com.appsflyer"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/appsflyer/DebugLogQueue;->getInstance()Lcom/appsflyer/DebugLogQueue;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/DebugLogQueue;->push(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method private static fixKeyNameToV3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    const-string p0, "campaign"

    .line 391
    .end local p0    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 388
    .restart local p0    # "key":Ljava/lang/String;
    :cond_1
    const-string v0, "pid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string p0, "media_source"

    goto :goto_0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-string v0, "appid"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string v0, "AppUserId"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1005
    invoke-static {p0}, Lcom/appsflyer/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 951
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 952
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 953
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 955
    .local v6, "attributionId":Ljava/lang/String;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 964
    :cond_0
    if-eqz v7, :cond_1

    .line 965
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 971
    :cond_1
    :goto_0
    return-object v3

    .line 958
    :cond_2
    :try_start_2
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 964
    if-eqz v7, :cond_3

    .line 965
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_1
    move-object v3, v6

    .line 971
    goto :goto_0

    .line 960
    :catch_0
    move-exception v8

    .line 961
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "AppsFlyer_1.14"

    const-string v1, "Could not collect cursor attribution"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 964
    if-eqz v7, :cond_3

    .line 965
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 967
    :catch_1
    move-exception v0

    goto :goto_1

    .line 963
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 964
    if-eqz v7, :cond_4

    .line 965
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 969
    :cond_4
    :goto_2
    throw v0

    .line 967
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private static getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentChannel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 882
    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 883
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "CACHED_CHANNEL"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 884
    const-string v2, "CACHED_CHANNEL"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 889
    .end local p1    # "currentChannel":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 886
    .restart local p1    # "currentChannel":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 887
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CACHED_CHANNEL"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 888
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static getCachedStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 770
    const-string v4, "appsflyer-data"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 771
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "INSTALL_STORE"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    const-string v4, "INSTALL_STORE"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 779
    :goto_0
    return-object v3

    .line 774
    :cond_0
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v1

    .line 775
    .local v1, "isFirstLaunch":Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 776
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->getCurrentStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, "store":Ljava/lang/String;
    :cond_1
    const-string v4, "INSTALL_STORE"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 778
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 846
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "channel"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "channel":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 849
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 850
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 851
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 852
    const-string v5, "CHANNEL"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 853
    .local v3, "channelObj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 854
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v3, Ljava/lang/String;

    .end local v3    # "channelObj":Ljava/lang/Object;
    move-object v2, v3

    .line 861
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 854
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "channelObj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 857
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "channelObj":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 858
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "AppsFlyer_1.14"

    const-string v6, "Could not load CHANNEL value"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getConversionData(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/AttributionIDNotReady;
        }
    .end annotation

    .prologue
    .line 307
    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 308
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "referrer":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "af_tranid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    invoke-static {v1, p0}, Lcom/appsflyer/AppsFlyerLib;->referrerStringToMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 315
    :goto_0
    return-object v3

    .line 312
    :cond_0
    const-string v3, "attributionId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "attributionString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 315
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    .line 317
    :cond_1
    new-instance v3, Lcom/appsflyer/AttributionIDNotReady;

    invoke-direct {v3}, Lcom/appsflyer/AttributionIDNotReady;-><init>()V

    throw v3
.end method

.method public static getConversionData(Landroid/content/Context;Lcom/appsflyer/ConversionDataListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversionDataListener"    # Lcom/appsflyer/ConversionDataListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$1;

    invoke-direct {v0, p1}, Lcom/appsflyer/AppsFlyerLib$1;-><init>(Lcom/appsflyer/ConversionDataListener;)V

    invoke-static {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V

    .line 354
    return-void
.end method

.method private static getCounter(Landroid/content/Context;Z)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isIncrease"    # Z

    .prologue
    const/4 v4, 0x0

    .line 975
    const-string v3, "appsflyer-data"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 977
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "appsFlyerCount"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 979
    .local v0, "counter":I
    if-eqz p1, :cond_0

    .line 980
    add-int/lit8 v0, v0, 0x1

    .line 981
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 982
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "appsFlyerCount"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 983
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 986
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v0
.end method

.method private static getCurrentStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 786
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 787
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 788
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 789
    const-string v4, "AF_STORE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 790
    .local v3, "storeObj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 791
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    .line 799
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "storeObj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 791
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "storeObj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 794
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "storeObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 795
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 796
    const-string v4, "AppsFlyer_1.14"

    const-string v5, "Could not find AF_STORE value in the manifest"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getEventTag(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "af_timestamp"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    .local v0, "timestamp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 431
    :cond_0
    const-string v1, "AppsFlyer_1.14"

    .line 433
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppsFlyer_1.14-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFirstInstallDate(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "dateFormat"    # Ljava/text/SimpleDateFormat;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 894
    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 895
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "appsFlyerFirstInstall"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "firstLaunchDate":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 897
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 898
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 899
    const-string v3, "AppsFlyer_1.14"

    const-string v4, "AppsFlyer: first launch detected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 905
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 906
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "appsFlyerFirstInstall"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 907
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 909
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 910
    const-string v3, "AppsFlyer_1.14"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppsFlyer: first launch date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2
    return-object v1

    .line 903
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method private static getNetwork(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 991
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 993
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 994
    .local v2, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 995
    const-string v3, "WIFI"

    .line 1001
    :goto_0
    return-object v3

    .line 997
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 998
    .local v1, "mobile":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 999
    const-string v3, "MOBILE"

    goto :goto_0

    .line 1001
    :cond_1
    const-string v3, "unkown"

    goto :goto_0
.end method

.method private static getPreInstallName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 803
    const-string v8, "appsflyer-data"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 804
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "preInstallName"

    invoke-interface {v6, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 805
    const-string v8, "preInstallName"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 828
    :goto_0
    return-object v5

    .line 807
    :cond_0
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->isAppsFlyerFirstLaunch(Landroid/content/Context;)Z

    move-result v4

    .line 808
    .local v4, "isFirstLaunch":Z
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 809
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 810
    .local v5, "preInstallProviderName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 812
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 813
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 814
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 815
    const-string v8, "AF_PRE_INSTALL_NAME"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 816
    .local v7, "storeObj":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 817
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "storeObj":Ljava/lang/Object;
    move-object v5, v7

    .line 826
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    const-string v8, "preInstallName"

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 827
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 817
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "storeObj":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 820
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "storeObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 821
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 822
    const-string v8, "AppsFlyer_1.14"

    const-string v9, "Could not find AF_PRE_INSTALL_NAME value in the manifest"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAppsFlyerFirstLaunch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 764
    const-string v2, "appsflyer-data"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 766
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "appsFlyerCount"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPreInstalledApp(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 867
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 872
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 873
    const/4 v2, 0x1

    .line 878
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 875
    :catch_0
    move-exception v1

    .line 876
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppsFlyer_1.14"

    const-string v4, "Could not check if app is pre installed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1204
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    .local v1, "postData":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1206
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1207
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v2, ""

    .line 1208
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1209
    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1211
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1207
    :cond_1
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1215
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventIdentifier"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "shouldMonitor"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.appsflyer.MonitorBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v1, "com.appsflyer.nightvision"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "packageName"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "pid"

    new-instance v2, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 282
    const-string v1, "eventIdentifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "sdk"

    const-string v2, "2.3.1.14"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    .end local v0    # "localIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static referrerStringToMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 17
    .param p0, "referrer"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v1, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v13, 0x26

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 359
    .local v11, "separator":I
    if-ltz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v14, v11, 0x1

    if-le v13, v14, :cond_3

    .line 360
    const-string v13, "\\&"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 361
    .local v10, "params":[Ljava/lang/String;
    array-length v14, v10

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v9, v10, v13

    .line 362
    .local v9, "param":Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "keyAndValue":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-static {v15}, Lcom/appsflyer/AppsFlyerLib;->fixKeyNameToV3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "name":Ljava/lang/String;
    array-length v15, v6

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    const/4 v15, 0x1

    aget-object v12, v6, v15

    .line 365
    .local v12, "value":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 364
    .end local v12    # "value":Ljava/lang/String;
    :cond_0
    const-string v12, ""

    goto :goto_1

    .line 368
    .end local v6    # "keyAndValue":[Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "param":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v13, "install_time"

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 371
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v4, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 372
    .local v4, "firstInstallTime":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 373
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v13, "install_time"

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "firstInstallTime":J
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_2
    const-string v13, "af_status"

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 379
    const-string v13, "af_status"

    const-string v14, "Non-organic"

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v10    # "params":[Ljava/lang/String;
    :cond_3
    return-object v1

    .line 375
    .restart local v10    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "AppsFlyer_1.14"

    const-string v14, "Could not fetch install time"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversionDataListener"    # Lcom/appsflyer/AppsFlyerConversionListener;

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 325
    :cond_0
    sput-object p1, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    goto :goto_0
.end method

.method private static runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appsFlyerKey"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventValue"    # Ljava/lang/String;
    .param p4, "referrer"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 424
    .local v6, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$DataCollector;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 426
    return-void
.end method

.method private static sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "postDataString"    # Ljava/lang/String;
    .param p2, "afDevKey"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "eventLogTag"    # Ljava/lang/String;
    .param p6, "shouldRequestConversion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    .local p3, "ctxReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    const-string v2, "call server."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nPOST:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1019
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "EVENT_DATA"

    invoke-static {v1, p5, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    if-eqz p6, :cond_2

    .line 1024
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerProperties;->setLaunchCollectedReferrer()V

    :cond_2
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 1027
    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v8

    .line 1030
    .local v8, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "useHttpFallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1031
    .local v9, "useHttpFallback":Z
    if-eqz v9, :cond_3

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1033
    new-instance v1, Ljava/net/URL;

    const-string v2, "https:"

    const-string v3, "http:"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/appsflyer/AppsFlyerLib;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1035
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to send requeset to server. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "ERROR"

    invoke-virtual {v8}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p5, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendTracking(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "AppsFlyer_1.14"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracking package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    return-void
.end method

.method public static sendTracking(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appsFlyerKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-static {p0, p1, v0, v0}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appsFlyerKey"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventValue"    # Ljava/lang/String;

    .prologue
    .line 415
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const-string v1, "AppsFlyer_1.14"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppsFLyer: numeric value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for event \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' will be categorized as a revenue event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "referrer":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "referrer":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/appsflyer/AppsFlyerLib;->runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 50
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appsFlyerKey"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventValue"    # Ljava/lang/String;
    .param p4, "referrer"    # Ljava/lang/String;

    .prologue
    .line 438
    if-nez p2, :cond_11

    const/4 v6, 0x1

    .line 440
    .local v6, "isLaunchEvent":Z
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 441
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "af_timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->getEventTag(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v35

    .line 445
    .local v35, "logTag":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    const-string v2, "collect data for server"

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* sendTrackingWithEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v6, :cond_12

    const-string v2, "Launch"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v3, "********* sendTrackingWithEvent: "

    if-eqz v6, :cond_13

    const-string v2, "Launch"

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v3, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 451
    :cond_0
    const-string v3, "EVENT_CREATED_WITH_NAME"

    if-eqz v6, :cond_14

    const-string v2, "Launch"

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1, v3, v2}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/appsflyer/cache/CacheManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1000

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v38

    .line 457
    .local v38, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v38

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    .line 458
    .local v40, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.permission.INTERNET"

    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    const-string v2, "AppsFlyer_1.14"

    const-string v3, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v2, 0x0

    const-string v3, "PERMISSION_INTERNET_MISSING"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v5}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_1
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 463
    const-string v2, "AppsFlyer_1.14"

    const-string v3, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 466
    const-string v2, "AppsFlyer_1.14"

    const-string v3, "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 472
    .end local v38    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v40    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_4
    :try_start_2
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v45, "urlString":Ljava/lang/StringBuilder;
    const-string v2, "https://track.appsflyer.com/api/v2.3/androidevent?buildnumber=1.14&app_id="

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v2, "brand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v2, "product"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v2, "sdk"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v2, "deviceType"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "sdkExtension"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 483
    .local v41, "sdkExtension":Ljava/lang/String;
    if-eqz v41, :cond_4

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 484
    const-string v2, "sdkExtension"

    move-object/from16 v0, v41

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 489
    .local v14, "currentChannel":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/appsflyer/AppsFlyerLib;->getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 490
    .local v37, "originalChannel":Ljava/lang/String;
    if-eqz v37, :cond_5

    .line 491
    const-string v2, "channel"

    move-object/from16 v0, v37

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_5
    if-eqz v37, :cond_6

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-nez v37, :cond_8

    if-eqz v14, :cond_8

    .line 496
    :cond_7
    const-string v2, "af_latestchannel"

    invoke-interface {v4, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getCachedStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 500
    .local v26, "installStore":Ljava/lang/String;
    if-eqz v26, :cond_9

    .line 501
    const-string v2, "af_installstore"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getPreInstallName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v39

    .line 505
    .local v39, "preInstallName":Ljava/lang/String;
    if-eqz v39, :cond_a

    .line 506
    const-string v2, "af_preinstall_name"

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getCurrentStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 510
    .local v15, "currentStore":Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 511
    const-string v2, "af_currentstore"

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_b
    move-object/from16 v9, p1

    .line 515
    .local v9, "afKEy":Ljava/lang/String;
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 516
    :cond_c
    const-string v2, "AppsFlyerKey"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 518
    :cond_d
    if-eqz v9, :cond_15

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    .line 519
    const-string v2, "appsflyerKey"

    invoke-interface {v4, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_e

    .line 521
    const-string v2, "dkh"

    const/4 v3, 0x0

    const/16 v5, 0x8

    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_e
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getAppUserId()Ljava/lang/String;

    move-result-object v10

    .line 531
    .local v10, "appUserId":Ljava/lang/String;
    if-eqz v10, :cond_f

    .line 532
    const-string v2, "appUserId"

    invoke-interface {v4, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_f
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "userEmails"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .line 536
    .local v47, "userEmails":[Ljava/lang/String;
    if-eqz v47, :cond_24

    .line 537
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v21, "emailsSH1AsString":Ljava/lang/StringBuilder;
    move-object/from16 v0, v47

    array-length v3, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_16

    aget-object v20, v47, v2

    .line 539
    .local v20, "email":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_10

    .line 540
    const/16 v5, 0x2c

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    :cond_10
    invoke-static/range {v20 .. v20}, Lcom/appsflyer/HashUtils;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 438
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "isLaunchEvent":Z
    .end local v9    # "afKEy":Ljava/lang/String;
    .end local v10    # "appUserId":Ljava/lang/String;
    .end local v14    # "currentChannel":Ljava/lang/String;
    .end local v15    # "currentStore":Ljava/lang/String;
    .end local v20    # "email":Ljava/lang/String;
    .end local v21    # "emailsSH1AsString":Ljava/lang/StringBuilder;
    .end local v26    # "installStore":Ljava/lang/String;
    .end local v35    # "logTag":Ljava/lang/String;
    .end local v37    # "originalChannel":Ljava/lang/String;
    .end local v39    # "preInstallName":Ljava/lang/String;
    .end local v41    # "sdkExtension":Ljava/lang/String;
    .end local v45    # "urlString":Ljava/lang/StringBuilder;
    .end local v47    # "userEmails":[Ljava/lang/String;
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "isLaunchEvent":Z
    .restart local v35    # "logTag":Ljava/lang/String;
    :cond_12
    move-object/from16 v2, p2

    .line 448
    goto/16 :goto_1

    :cond_13
    move-object/from16 v2, p2

    .line 449
    goto/16 :goto_2

    :cond_14
    move-object/from16 v2, p2

    .line 451
    goto/16 :goto_3

    .line 524
    .restart local v9    # "afKEy":Ljava/lang/String;
    .restart local v14    # "currentChannel":Ljava/lang/String;
    .restart local v15    # "currentStore":Ljava/lang/String;
    .restart local v26    # "installStore":Ljava/lang/String;
    .restart local v37    # "originalChannel":Ljava/lang/String;
    .restart local v39    # "preInstallName":Ljava/lang/String;
    .restart local v41    # "sdkExtension":Ljava/lang/String;
    .restart local v45    # "urlString":Ljava/lang/StringBuilder;
    :cond_15
    const-string v2, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.setAppsFlyerKey(...) to set it. "

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v2, "DEV_KEY_MISSING"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v2, "AppsFlyer will not track this event."

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v9    # "afKEy":Ljava/lang/String;
    .end local v14    # "currentChannel":Ljava/lang/String;
    .end local v15    # "currentStore":Ljava/lang/String;
    .end local v26    # "installStore":Ljava/lang/String;
    .end local v37    # "originalChannel":Ljava/lang/String;
    .end local v39    # "preInstallName":Ljava/lang/String;
    .end local v41    # "sdkExtension":Ljava/lang/String;
    .end local v45    # "urlString":Ljava/lang/StringBuilder;
    :goto_6
    return-void

    .line 544
    .restart local v9    # "afKEy":Ljava/lang/String;
    .restart local v10    # "appUserId":Ljava/lang/String;
    .restart local v14    # "currentChannel":Ljava/lang/String;
    .restart local v15    # "currentStore":Ljava/lang/String;
    .restart local v21    # "emailsSH1AsString":Ljava/lang/StringBuilder;
    .restart local v26    # "installStore":Ljava/lang/String;
    .restart local v37    # "originalChannel":Ljava/lang/String;
    .restart local v39    # "preInstallName":Ljava/lang/String;
    .restart local v41    # "sdkExtension":Ljava/lang/String;
    .restart local v45    # "urlString":Ljava/lang/StringBuilder;
    .restart local v47    # "userEmails":[Ljava/lang/String;
    :cond_16
    const-string v2, "sha1_el_arr"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .end local v21    # "emailsSH1AsString":Ljava/lang/StringBuilder;
    :cond_17
    :goto_7
    if-eqz p2, :cond_18

    .line 553
    const-string v2, "eventName"

    move-object/from16 v0, p2

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    if-eqz p3, :cond_18

    .line 555
    const-string v2, "eventValue"

    move-object/from16 v0, p3

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_18
    const-string v2, "appid"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 560
    const-string v2, "appid"

    const-string v3, "appid"

    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_19
    const-string v2, "currencyCode"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 563
    .local v13, "currencyCode":Ljava/lang/String;
    if-eqz v13, :cond_1b

    .line 564
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1a

    .line 565
    const-string v2, "AppsFlyer_1.14"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING:currency code should be 3 characters!!! \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' is not a legal value."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1a
    const-string v2, "currency"

    invoke-interface {v4, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_1b
    const-string v2, "IS_UPDATE"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 571
    .local v31, "isUpdate":Ljava/lang/String;
    if-eqz v31, :cond_1c

    .line 572
    const-string v2, "isUpdate"

    move-object/from16 v0, v31

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_1c
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v30

    .line 575
    .local v30, "isPreInstall":Z
    const-string v2, "af_preinstalled"

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v22

    .line 578
    .local v22, "facebookAttributeId":Ljava/lang/String;
    if-eqz v22, :cond_1d

    .line 579
    const-string v2, "fb"

    move-object/from16 v0, v22

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_1d
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/appsflyer/AppsFlyerLib;->addDeviceTracking(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 585
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v43

    .line 586
    .local v43, "uid":Ljava/lang/String;
    if-eqz v43, :cond_1e

    .line 587
    const-string v2, "uid"

    move-object/from16 v0, v43

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 594
    .end local v43    # "uid":Ljava/lang/String;
    :cond_1e
    :goto_8
    :try_start_4
    const-string v2, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 599
    :goto_9
    :try_start_5
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/telephony/TelephonyManager;

    .line 600
    .local v36, "manager":Landroid/telephony/TelephonyManager;
    const-string v2, "operator"

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v2, "carrier"

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 607
    .end local v36    # "manager":Landroid/telephony/TelephonyManager;
    :goto_a
    :try_start_6
    const-string v2, "network"

    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 626
    :goto_b
    :try_start_7
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/appsflyer/AppsFlyerLib;->addAdvertiserIDData(Landroid/content/Context;Ljava/util/Map;)V

    .line 628
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_hhmmZ"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 629
    .local v16, "dateFormat":Ljava/text/SimpleDateFormat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1f

    .line 631
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v27, v0

    .line 632
    .local v27, "installed":J
    const-string v2, "installDate"

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, v27

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 639
    .end local v27    # "installed":J
    :cond_1f
    :goto_c
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v38

    .line 640
    .restart local v38    # "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, "app_version_code"

    move-object/from16 v0, v38

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v2, "app_version_name"

    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    move-object/from16 v0, v38

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v24, v0

    .line 645
    .local v24, "firstInstallTime":J
    move-object/from16 v0, v38

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v33, v0

    .line 646
    .local v33, "lastUpdateTime":J
    const-string v2, "date1"

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, v24

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v2, "date2"

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, v33

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getFirstInstallDate(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 649
    .local v23, "firstInstallDate":Ljava/lang/String;
    const-string v2, "firstLaunchDate"

    move-object/from16 v0, v23

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 656
    .end local v23    # "firstInstallDate":Ljava/lang/String;
    .end local v24    # "firstInstallTime":J
    .end local v33    # "lastUpdateTime":J
    .end local v38    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_d
    :try_start_a
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 657
    const-string v2, "referrer"

    move-object/from16 v0, p4

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_20
    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v42

    .line 661
    .local v42, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "attributionId"

    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 662
    .local v12, "attributionString":Ljava/lang/String;
    if-eqz v12, :cond_21

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 663
    const-string v2, "installAttribution"

    invoke-interface {v4, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_21
    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_25

    .line 667
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    .line 668
    .local v29, "intent":Landroid/content/Intent;
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 669
    .local v8, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.VIEW"

    if-ne v8, v2, :cond_23

    .line 670
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v44

    .line 672
    .local v44, "uri":Landroid/net/Uri;
    const-string v2, "af_deeplink"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 673
    const-string v2, "af_deeplink_launch"

    const-string v3, "true"

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/appsflyer/AppsFlyerLib;->referrerStringToMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    .line 675
    .local v11, "attributionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v11}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    .line 676
    .local v32, "json":Ljava/lang/String;
    const-string v2, "af_deeplink_attr"

    move-object/from16 v0, v32

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-interface/range {v42 .. v42}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 679
    .local v19, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "deeplinkAttribution"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 680
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 682
    sget-object v2, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v2, :cond_22

    .line 683
    sget-object v2, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v2, v11}, Lcom/appsflyer/AppsFlyerConversionListener;->onAppOpenAttribution(Ljava/util/Map;)V

    .line 687
    .end local v11    # "attributionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v32    # "json":Ljava/lang/String;
    :cond_22
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "AppsFlyerLib.sendTrackingWithEvent"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 696
    .end local v8    # "action":Ljava/lang/String;
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v44    # "uri":Landroid/net/Uri;
    :cond_23
    :goto_e
    new-instance v2, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->run()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_6

    .line 698
    .end local v9    # "afKEy":Ljava/lang/String;
    .end local v10    # "appUserId":Ljava/lang/String;
    .end local v12    # "attributionString":Ljava/lang/String;
    .end local v13    # "currencyCode":Ljava/lang/String;
    .end local v14    # "currentChannel":Ljava/lang/String;
    .end local v15    # "currentStore":Ljava/lang/String;
    .end local v16    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v22    # "facebookAttributeId":Ljava/lang/String;
    .end local v26    # "installStore":Ljava/lang/String;
    .end local v30    # "isPreInstall":Z
    .end local v31    # "isUpdate":Ljava/lang/String;
    .end local v37    # "originalChannel":Ljava/lang/String;
    .end local v39    # "preInstallName":Ljava/lang/String;
    .end local v41    # "sdkExtension":Ljava/lang/String;
    .end local v42    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v45    # "urlString":Ljava/lang/StringBuilder;
    .end local v47    # "userEmails":[Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 699
    .local v18, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 546
    .end local v18    # "e":Ljava/lang/Throwable;
    .restart local v9    # "afKEy":Ljava/lang/String;
    .restart local v10    # "appUserId":Ljava/lang/String;
    .restart local v14    # "currentChannel":Ljava/lang/String;
    .restart local v15    # "currentStore":Ljava/lang/String;
    .restart local v26    # "installStore":Ljava/lang/String;
    .restart local v37    # "originalChannel":Ljava/lang/String;
    .restart local v39    # "preInstallName":Ljava/lang/String;
    .restart local v41    # "sdkExtension":Ljava/lang/String;
    .restart local v45    # "urlString":Ljava/lang/StringBuilder;
    .restart local v47    # "userEmails":[Ljava/lang/String;
    :cond_24
    :try_start_b
    const-string v2, "userEmail"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 547
    .local v46, "userEmail":Ljava/lang/String;
    if-eqz v46, :cond_17

    .line 548
    const-string v2, "sha1_el"

    invoke-static/range {v46 .. v46}, Lcom/appsflyer/HashUtils;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 589
    .end local v46    # "userEmail":Ljava/lang/String;
    .restart local v13    # "currencyCode":Ljava/lang/String;
    .restart local v22    # "facebookAttributeId":Ljava/lang/String;
    .restart local v30    # "isPreInstall":Z
    .restart local v31    # "isUpdate":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 590
    .local v18, "e":Ljava/lang/Exception;
    const-string v2, "AppsFlyer_1.14"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ERROR:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "could not get uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 608
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v18

    .line 609
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string v2, "AppsFlyer_1.14"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking network error "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 689
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v12    # "attributionString":Ljava/lang/String;
    .restart local v16    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v42    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_25
    if-nez v6, :cond_23

    .line 690
    const-string v2, "deeplinkAttribution"

    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 691
    .local v17, "deeplinkAttribute":Ljava/lang/String;
    if-eqz v17, :cond_23

    .line 692
    const-string v2, "af_deeplink_attr"

    move-object/from16 v0, v17

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_e

    .line 652
    .end local v12    # "attributionString":Ljava/lang/String;
    .end local v17    # "deeplinkAttribute":Ljava/lang/String;
    .end local v42    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_3
    move-exception v2

    goto/16 :goto_d

    .line 650
    :catch_4
    move-exception v2

    goto/16 :goto_d

    .line 633
    :catch_5
    move-exception v2

    goto/16 :goto_c

    .line 602
    .end local v16    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_6
    move-exception v2

    goto/16 :goto_a

    .line 595
    :catch_7
    move-exception v2

    goto/16 :goto_9

    .line 468
    .end local v9    # "afKEy":Ljava/lang/String;
    .end local v10    # "appUserId":Ljava/lang/String;
    .end local v13    # "currencyCode":Ljava/lang/String;
    .end local v14    # "currentChannel":Ljava/lang/String;
    .end local v15    # "currentStore":Ljava/lang/String;
    .end local v22    # "facebookAttributeId":Ljava/lang/String;
    .end local v26    # "installStore":Ljava/lang/String;
    .end local v30    # "isPreInstall":Z
    .end local v31    # "isUpdate":Ljava/lang/String;
    .end local v37    # "originalChannel":Ljava/lang/String;
    .end local v39    # "preInstallName":Ljava/lang/String;
    .end local v41    # "sdkExtension":Ljava/lang/String;
    .end local v45    # "urlString":Ljava/lang/StringBuilder;
    .end local v47    # "userEmails":[Ljava/lang/String;
    :catch_8
    move-exception v2

    goto/16 :goto_4
.end method

.method private sendUninstall(Ljava/lang/String;Landroid/content/Context;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://track.appsflyer.com/api/v2.3/uninsall?buildnumber=1.14"

    .line 123
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "urlString":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 125
    const-string v11, "AppsFlyer_1.14"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Calling server for uninstall url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v5, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "packageName"

    invoke-interface {v5, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/appsflyer/AppsFlyerLib;->addAdvertiserIDData(Landroid/content/Context;Ljava/util/Map;)V

    .line 131
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/appsflyer/AppsFlyerLib;->addDeviceTracking(Landroid/content/Context;Ljava/util/Map;)V

    .line 132
    invoke-static {v5}, Lcom/appsflyer/AppsFlyerLib;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "postData":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 136
    const-string v11, "POST"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v2, v11

    .line 138
    .local v2, "contentLength":I
    const-string v11, "Content-Length"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v11, "Connection"

    const-string v12, "close"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 141
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    const/4 v3, 0x0

    .line 144
    .local v3, "out":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .local v4, "out":Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 147
    if-eqz v4, :cond_1

    .line 148
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 151
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 153
    .local v7, "statusCode":I
    const/16 v11, 0xc8

    if-ne v7, v11, :cond_6

    .line 154
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 155
    const-string v11, "AppsFlyer_1.14"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uninstall sent successfully: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 168
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 171
    .end local v2    # "contentLength":I
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "postData":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlString":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 147
    .restart local v2    # "contentLength":I
    .restart local v3    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "postData":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlString":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v3, :cond_4

    .line 148
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    :cond_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    .end local v2    # "contentLength":I
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "postData":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 163
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 164
    const-string v11, "AppsFlyer_1.14"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to send uninstall: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    :cond_5
    if-eqz v1, :cond_3

    .line 168
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 158
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v2    # "contentLength":I
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "postData":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlString":Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 159
    const-string v11, "AppsFlyer_1.14"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to send uninstall: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 167
    .end local v2    # "contentLength":I
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "postData":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlString":Ljava/lang/String;
    :catchall_1
    move-exception v11

    if-eqz v1, :cond_7

    .line 168
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v11

    .line 147
    .restart local v2    # "contentLength":I
    .restart local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "postData":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlString":Ljava/lang/String;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .restart local v3    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_2
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v0, "appid"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static setAppUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "AppUserId"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static setAppsFlyerKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "AppsFlyerKey"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static setCollectAndroidID(Z)V
    .locals 2
    .param p0, "isCollect"    # Z

    .prologue
    .line 223
    const-string v0, "collectAndroidId"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static setCollectIMEI(Z)V
    .locals 2
    .param p0, "isCollect"    # Z

    .prologue
    .line 231
    const-string v0, "collectIMEI"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static setCollectMACAddress(Z)V
    .locals 2
    .param p0, "isCollect"    # Z

    .prologue
    .line 227
    const-string v0, "collectMAC"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static setCurrencyCode(Ljava/lang/String;)V
    .locals 2
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static setDeviceTrackingDisabled(Z)V
    .locals 2
    .param p0, "isDisabled"    # Z

    .prologue
    .line 291
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "deviceTrackingDisabled"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 292
    return-void
.end method

.method public static setExtension(Ljava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "sdkExtension"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static setIsUpdate(Z)V
    .locals 2
    .param p0, "isUpdate"    # Z

    .prologue
    .line 259
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "IS_UPDATE"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 260
    return-void
.end method

.method protected static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static setUseHTTPFalback(Z)V
    .locals 2
    .param p0, "isUseHttp"    # Z

    .prologue
    .line 219
    const-string v0, "useHttpFallback"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "userEmail"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static varargs setUserEmails([Ljava/lang/String;)V
    .locals 2
    .param p0, "emails"    # [Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "userEmails"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;[Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private static shouldLog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->isDisableLog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 78
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->sendUninstall(Ljava/lang/String;Landroid/content/Context;)V

    .line 117
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v5, "shouldMonitor"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "shouldMonitor":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 86
    const-string v5, "AppsFlyer_1.14"

    const-string v6, "Turning on monitoring."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "shouldMonitor"

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 88
    const-string v5, "START_TRACKING"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v8, v5, v6}, Lcom/appsflyer/AppsFlyerLib;->monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    const-string v5, "AppsFlyer_1.14"

    const-string v6, "****** onReceive called *******"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v5, "******* onReceive: "

    const-string v6, ""

    invoke-static {v5, v6, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerProperties;->setOnReceiveCalled()V

    .line 98
    const-string v5, "referrer"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "referrer":Ljava/lang/String;
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    const-string v5, "AppsFlyer_1.14"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Play store referrer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    if-eqz v2, :cond_0

    .line 103
    const-string v5, "BroadcastReceiver got referrer: "

    invoke-static {v5, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 104
    const-string v5, "onRecieve called. refferer="

    invoke-static {v5, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 105
    const-string v5, "appsflyer-data"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 106
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "referrer"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/appsflyer/AppsFlyerProperties;->setReferrer(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerProperties;->isLaunchCollectedReferrerd()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    const-string v5, "AppsFlyer_1.14"

    const-string v6, "onReceive: isLaunchCalled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p1, v8, v8, v8, v2}, Lcom/appsflyer/AppsFlyerLib;->runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
