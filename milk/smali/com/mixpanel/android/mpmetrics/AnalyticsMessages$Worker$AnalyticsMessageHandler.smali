.class Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;
.super Landroid/os/Handler;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyticsMessageHandler"
.end annotation


# instance fields
.field private mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

.field private final mDecideChecker:Lcom/mixpanel/android/mpmetrics/DecideChecker;

.field private mDisableFallback:Z

.field private mFlushInterval:J

.field final synthetic this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    .line 217
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    .line 219
    new-instance v0, Lcom/mixpanel/android/mpmetrics/DecideChecker;

    iget-object v1, p1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$100(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/DecideChecker;-><init>(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/MPConfig;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDecideChecker:Lcom/mixpanel/android/mpmetrics/DecideChecker;

    .line 220
    iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDisableFallback()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDisableFallback:Z

    .line 221
    iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getFlushInterval()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mFlushInterval:J

    .line 222
    new-instance v0, Lcom/mixpanel/android/mpmetrics/SystemInformation;

    iget-object v1, p1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$100(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/SystemInformation;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {p1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$302(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Lcom/mixpanel/android/mpmetrics/SystemInformation;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    .line 223
    return-void
.end method

.method private getDefaultEventProperties()Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .local v8, "ret":Lorg/json/JSONObject;
    const-string v9, "mp_lib"

    const-string v10, "android"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v9, "$lib_version"

    const-string v10, "4.2.1"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v9, "$os"

    const-string v10, "Android"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v10, "$os_version"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v9, "UNKNOWN"

    :goto_0
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v10, "$manufacturer"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v9, :cond_8

    const-string v9, "UNKNOWN"

    :goto_1
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v10, "$brand"

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v9, :cond_9

    const-string v9, "UNKNOWN"

    :goto_2
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v10, "$model"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v9, :cond_a

    const-string v9, "UNKNOWN"

    :goto_3
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/SystemInformation;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 419
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string v9, "$screen_dpi"

    iget v10, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 420
    const-string v9, "$screen_height"

    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    const-string v9, "$screen_width"

    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 423
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/SystemInformation;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "applicationVersionName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 425
    const-string v9, "$app_version"

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    :cond_0
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/SystemInformation;->hasNFC()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 428
    .local v4, "hasNFC":Ljava/lang/Boolean;
    if-eqz v4, :cond_1

    .line 429
    const-string v9, "$has_nfc"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 431
    :cond_1
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/SystemInformation;->hasTelephony()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 432
    .local v5, "hasTelephony":Ljava/lang/Boolean;
    if-eqz v5, :cond_2

    .line 433
    const-string v9, "$has_telephone"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 435
    :cond_2
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/SystemInformation;->getCurrentNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "carrier":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 437
    const-string v9, "$carrier"

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    :cond_3
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/SystemInformation;->isWifiConnected()Ljava/lang/Boolean;

    move-result-object v7

    .line 440
    .local v7, "isWifi":Ljava/lang/Boolean;
    if-eqz v7, :cond_4

    .line 441
    const-string v9, "$wifi"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 443
    :cond_4
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/SystemInformation;->isBluetoothEnabled()Ljava/lang/Boolean;

    move-result-object v6

    .line 444
    .local v6, "isBluetoothEnabled":Ljava/lang/Boolean;
    if-eqz v6, :cond_5

    .line 445
    const-string v9, "$bluetooth_enabled"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    :cond_5
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/SystemInformation;->getBluetoothVersion()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "bluetoothVersion":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 449
    const-string v9, "$bluetooth_version"

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    :cond_6
    return-object v8

    .line 412
    .end local v0    # "applicationVersionName":Ljava/lang/String;
    .end local v1    # "bluetoothVersion":Ljava/lang/String;
    .end local v2    # "carrier":Ljava/lang/String;
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "hasNFC":Ljava/lang/Boolean;
    .end local v5    # "hasTelephony":Ljava/lang/Boolean;
    .end local v6    # "isBluetoothEnabled":Ljava/lang/Boolean;
    .end local v7    # "isWifi":Ljava/lang/Boolean;
    :cond_7
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0

    .line 414
    :cond_8
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto/16 :goto_1

    .line 415
    :cond_9
    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto/16 :goto_2

    .line 416
    :cond_a
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private prepareEventObject(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "eventDescription"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 456
    .local v0, "eventObj":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    .line 457
    .local v1, "eventProperties":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->getDefaultEventProperties()Lorg/json/JSONObject;

    move-result-object v4

    .line 458
    .local v4, "sendProperties":Lorg/json/JSONObject;
    const-string v5, "token"

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 461
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 462
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 465
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const-string v5, "event"

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string v5, "properties"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    return-object v0
.end method

.method private sendAllData(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;)V
    .locals 7
    .param p1, "dbAdapter"    # Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 323
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->getPoster()Lcom/mixpanel/android/mpmetrics/ServerMessage;

    move-result-object v0

    .line 324
    .local v0, "poster":Lcom/mixpanel/android/mpmetrics/ServerMessage;
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$100(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    const-string v2, "Not flushing data to Mixpanel because the device is not connected to the internet."

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    const-string v2, "Sending records to Mixpanel"

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 330
    iget-boolean v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDisableFallback:Z

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getEventsEndpoint()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->sendData(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;[Ljava/lang/String;)V

    .line 332
    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getPeopleEndpoint()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->sendData(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;[Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_1
    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getEventsEndpoint()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getEventsFallbackEndpoint()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, p1, v1, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->sendData(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;[Ljava/lang/String;)V

    .line 336
    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getPeopleEndpoint()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getPeopleFallbackEndpoint()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, p1, v1, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->sendData(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendData(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;[Ljava/lang/String;)V
    .locals 21
    .param p1, "dbAdapter"    # Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
    .param p2, "table"    # Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
    .param p3, "urls"    # [Ljava/lang/String;

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->getPoster()Lcom/mixpanel/android/mpmetrics/ServerMessage;

    move-result-object v14

    .line 343
    .local v14, "poster":Lcom/mixpanel/android/mpmetrics/ServerMessage;
    invoke-virtual/range {p1 .. p2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->generateDataString(Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)[Ljava/lang/String;

    move-result-object v8

    .line 345
    .local v8, "eventsData":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 346
    const/16 v18, 0x0

    aget-object v10, v8, v18

    .line 347
    .local v10, "lastId":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v15, v8, v18

    .line 349
    .local v15, "rawMessage":Ljava/lang/String;
    invoke-static {v15}, Lcom/mixpanel/android/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, "encodedData":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    .local v12, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    sget-boolean v18, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 353
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "verbose"

    const-string v20, "1"

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    const/4 v5, 0x1

    .line 358
    .local v5, "deleteEvents":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v17, v4, v9

    .line 360
    .local v17, "url":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v12}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->performRequest(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object v16

    .line 361
    .local v16, "response":[B
    const/4 v5, 0x1

    .line 362
    if-nez v16, :cond_3

    .line 363
    sget-boolean v18, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v18, :cond_1

    .line 364
    const-string v18, "MixpanelAPI"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Response was null, unexpected failure posting to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 391
    .end local v16    # "response":[B
    .end local v17    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v5, :cond_5

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-object/from16 v18, v0

    const-string v19, "Not retrying this batch of events, deleting them from DB."

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->cleanupEvents(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V

    .line 401
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "deleteEvents":Z
    .end local v7    # "encodedData":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "lastId":Ljava/lang/String;
    .end local v11    # "len$":I
    .end local v12    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15    # "rawMessage":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 369
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "deleteEvents":Z
    .restart local v7    # "encodedData":Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v10    # "lastId":Ljava/lang/String;
    .restart local v11    # "len$":I
    .restart local v12    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15    # "rawMessage":Ljava/lang/String;
    .restart local v16    # "response":[B
    .restart local v17    # "url":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v13, Ljava/lang/String;

    const-string v18, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 374
    .local v13, "parsedResponse":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Successfully posted to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Response was "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 378
    .end local v13    # "parsedResponse":Ljava/lang/String;
    .end local v16    # "response":[B
    :catch_0
    move-exception v6

    .line 379
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    const-string v18, "MixpanelAPI"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Out of memory when posting to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 370
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v16    # "response":[B
    :catch_1
    move-exception v6

    .line 371
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "UTF not supported on this platform?"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 381
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v16    # "response":[B
    :catch_2
    move-exception v6

    .line 382
    .local v6, "e":Ljava/net/MalformedURLException;
    const-string v18, "MixpanelAPI"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot interpret "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " as a URL."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 384
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v6

    .line 385
    .local v6, "e":Ljava/io/IOException;
    sget-boolean v18, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v18, :cond_4

    .line 386
    const-string v18, "MixpanelAPI"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot post message to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    :cond_4
    const/4 v5, 0x0

    .line 358
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 395
    .end local v6    # "e":Ljava/io/IOException;
    .end local v17    # "url":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-object/from16 v18, v0

    const-string v19, "Retrying this batch of events."

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 396
    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$500()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_2

    .line 397
    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$500()I

    move-result v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mFlushInterval:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    if-nez v8, :cond_0

    .line 228
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v9, v9, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$100(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->makeDbAdapter(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    .line 229
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v11, v11, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v11}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDataExpiration()I

    move-result v11

    int-to-long v11, v11

    sub-long/2addr v9, v11

    sget-object v11, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v8, v9, v10, v11}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->cleanupEvents(JLcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V

    .line 230
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v11, v11, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v11}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getDataExpiration()I

    move-result v11

    int-to-long v11, v11

    sub-long/2addr v9, v11

    sget-object v11, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v8, v9, v10, v11}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->cleanupEvents(JLcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V

    .line 234
    :cond_0
    const/4 v6, -0x1

    .line 236
    .local v6, "queueDepth":I
    :try_start_0
    iget v8, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->SET_FLUSH_INTERVAL:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$400()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 237
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    .line 238
    .local v5, "newIntervalObj":Ljava/lang/Long;
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Changing flush interval to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mFlushInterval:J

    .line 240
    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$500()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->removeMessages(I)V

    .line 291
    .end local v5    # "newIntervalObj":Ljava/lang/Long;
    :goto_0
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getBulkUploadLimit()I

    move-result v8

    if-lt v6, v8, :cond_9

    .line 292
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    const-string v9, "Flushing queue due to bulk upload limit"

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 293
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->updateFlushFrequency()V
    invoke-static {v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$900(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)V

    .line 294
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    invoke-direct {p0, v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->sendAllData(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;)V

    .line 319
    :cond_1
    :goto_1
    return-void

    .line 242
    :cond_2
    iget v8, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->SET_DISABLE_FALLBACK:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$600()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 243
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 244
    .local v1, "disableState":Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting fallback to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDisableFallback:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v1    # "disableState":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v8, "MixpanelAPI"

    const-string v9, "Worker threw an unhandled exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$1200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 310
    :try_start_1
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    const/4 v10, 0x0

    # setter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;
    invoke-static {v8, v10}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$1302(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 313
    const-string v8, "MixpanelAPI"

    const-string v10, "Mixpanel will not process any more analytics messages"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :goto_2
    :try_start_3
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 247
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :try_start_4
    iget v8, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->ENQUEUE_PEOPLE:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$700()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 248
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    .line 250
    .local v4, "message":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    const-string v9, "Queuing people record for sending later"

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 251
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 253
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    sget-object v9, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v8, v4, v9}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->addJSON(Lorg/json/JSONObject;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)I

    move-result v6

    .line 254
    goto/16 :goto_0

    .line 255
    .end local v4    # "message":Lorg/json/JSONObject;
    :cond_4
    iget v8, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->ENQUEUE_EVENTS:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$800()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 256
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 258
    .local v3, "eventDescription":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;
    :try_start_5
    invoke-direct {p0, v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->prepareEventObject(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;)Lorg/json/JSONObject;

    move-result-object v4

    .line 259
    .restart local v4    # "message":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    const-string v9, "Queuing event for sending later"

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 260
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 261
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    sget-object v9, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v8, v4, v9}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->addJSON(Lorg/json/JSONObject;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v6

    goto/16 :goto_0

    .line 262
    .end local v4    # "message":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Lorg/json/JSONException;
    :try_start_6
    const-string v8, "MixpanelAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception tracking event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;->getEventName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 266
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "eventDescription":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;
    :cond_5
    iget v8, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$500()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 267
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    const-string v9, "Flushing queue due to scheduled or forced flush"

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 268
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->updateFlushFrequency()V
    invoke-static {v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$900(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)V

    .line 269
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDecideChecker:Lcom/mixpanel/android/mpmetrics/DecideChecker;

    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v9, v9, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->getPoster()Lcom/mixpanel/android/mpmetrics/ServerMessage;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mixpanel/android/mpmetrics/DecideChecker;->runDecideChecks(Lcom/mixpanel/android/mpmetrics/ServerMessage;)V

    .line 270
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    invoke-direct {p0, v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->sendAllData(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;)V

    goto/16 :goto_0

    .line 272
    :cond_6
    iget v8, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->INSTALL_DECIDE_CHECK:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$1000()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 273
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    const-string v9, "Installing a check for surveys and in app notifications"

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 274
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .line 275
    .local v0, "check":Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDecideChecker:Lcom/mixpanel/android/mpmetrics/DecideChecker;

    invoke-virtual {v8, v0}, Lcom/mixpanel/android/mpmetrics/DecideChecker;->addDecideCheck(Lcom/mixpanel/android/mpmetrics/DecideUpdates;)V

    .line 276
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDecideChecker:Lcom/mixpanel/android/mpmetrics/DecideChecker;

    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v9, v9, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->getPoster()Lcom/mixpanel/android/mpmetrics/ServerMessage;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mixpanel/android/mpmetrics/DecideChecker;->runDecideChecks(Lcom/mixpanel/android/mpmetrics/ServerMessage;)V

    goto/16 :goto_0

    .line 278
    .end local v0    # "check":Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    :cond_7
    iget v8, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->KILL_WORKER:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$1100()I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 279
    const-string v8, "MixpanelAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Worker received a hard kill. Dumping all events and force-killing. Thread id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$1200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 281
    :try_start_7
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->deleteDB()V

    .line 282
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    const/4 v10, 0x0

    # setter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;
    invoke-static {v8, v10}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->access$1302(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Landroid/os/Handler;)Landroid/os/Handler;

    .line 283
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 284
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v8

    .line 286
    :cond_8
    const-string v8, "MixpanelAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected message received by Mixpanel worker: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    :cond_9
    if-lez v6, :cond_1

    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$500()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 302
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    iget-object v8, v8, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Queue depth "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - Adding flush in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mFlushInterval:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 303
    iget-wide v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mFlushInterval:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 304
    # getter for: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$500()I

    move-result v8

    iget-wide v9, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->mFlushInterval:J

    invoke-virtual {p0, v8, v9, v10}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 314
    .local v2, "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v7

    .line 315
    .local v7, "tooLate":Ljava/lang/Exception;
    :try_start_9
    const-string v8, "MixpanelAPI"

    const-string v10, "Could not halt looper"

    invoke-static {v8, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2
.end method
