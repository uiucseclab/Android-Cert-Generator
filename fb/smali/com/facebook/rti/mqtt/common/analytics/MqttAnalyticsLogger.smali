.class public Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;
.super Ljava/lang/Object;
.source "shared_prefs"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;

.field private final d:Ljava/lang/String;

.field public final e:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private final f:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

.field private final g:J

.field private final h:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->c:Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;

    .line 248
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->e:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 249
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->h:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->d:Ljava/lang/String;

    .line 251
    iput-object p6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->f:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    .line 252
    invoke-virtual {p7}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->g:J

    .line 253
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    const-string v0, "service_name"

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v0, "service_session_id"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 675
    const-string v4, "network_session_id"

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 677
    const-string v4, "network_session_id"

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->e:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    .line 658
    :cond_0
    const-string v0, "MqttAnalyticsLogger"

    const-string v1, "Event name: %s, Event parameters: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    new-instance v0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-static {v0, p2}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a(Lcom/facebook/rti/common/analytics/AnalyticsEvent;Ljava/util/Map;)V

    .line 667
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->f:Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    .line 668
    return-void
.end method

.method private static a(Ljava/util/Map;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 671
    const-string v0, "mqtt_session_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    return-void
.end method

.method private static a(Ljava/util/Map;Landroid/net/NetworkInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 691
    .line 695
    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 701
    :goto_0
    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    const-string v3, "network_type"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v2, "network_subtype"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string v1, "network_extra_info"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void

    :cond_0
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 715
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 716
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 716
    goto :goto_0

    .line 721
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V
    .locals 4

    .prologue
    .line 637
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 640
    invoke-static {v0, p4, p5}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;J)V

    .line 641
    invoke-static {v0, p6, p7}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;J)V

    .line 642
    invoke-static {v0, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 644
    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 645
    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->h:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;->a()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->b:Z

    if-eqz v0, :cond_3

    .line 734
    :cond_2
    const-string v0, "bat"

    const-string v1, "crg"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 735
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->c:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const-string v2, "bat"

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->c:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 682
    const-string v0, "network_session_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->c:Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;

    invoke-interface {v0, p1}, Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;->a(I)V

    .line 262
    return-void
.end method

.method public final a(IIIILjava/lang/String;)V
    .locals 3

    .prologue
    .line 607
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bg_s"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "connect_duration_s"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 616
    if-eqz p5, :cond_0

    .line 617
    const-string v1, "c"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_0
    const-string v1, "keepalive_value_change"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 620
    return-void
.end method

.method public final a(IJ)V
    .locals 4

    .prologue
    .line 420
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "retry_count"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "retry_duration_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 424
    const-string v1, "mqtt_connection_retries"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 427
    return-void
.end method

.method public final a(JILjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Throwable;",
            ">;JJ",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "he_state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 348
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_0
    const-string v1, "error_message"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_0
    invoke-static {v2, p6, p7}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;J)V

    .line 357
    invoke-static {v2, p8, p9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;J)V

    .line 358
    invoke-static {v2, p10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 360
    const-string v0, "mqtt_socket_connect"

    invoke-direct {p0, v0, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 361
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(JJJLandroid/net/NetworkInfo;)V
    .locals 9

    .prologue
    .line 327
    const-string v1, "mqtt_dns_lookup_duration"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V

    .line 334
    return-void
.end method

.method public final a(JLandroid/net/NetworkInfo;)V
    .locals 7

    .prologue
    .line 308
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 309
    invoke-static {v0, p1, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;J)V

    .line 310
    invoke-static {v0, p3}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 312
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->e:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->h()J

    move-result-wide v2

    .line 313
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "dc_ms_ago"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    const-string v1, "mqtt_network_changed"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    return-void
.end method

.method public final a(Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Throwable;",
            ">;JJ",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 454
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Landroid/content/Context;)Z

    move-result v0

    .line 455
    const-string v2, "is_airplane_mode_on"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;)V

    .line 459
    invoke-virtual {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const-string v2, "connected_duration_ms"

    invoke-virtual {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    const-string v2, "last_ping_ms_ago"

    invoke-virtual {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    const-string v2, "last_sent_ms_ago"

    invoke-virtual {p3}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_2
    invoke-virtual {p4}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    const-string v2, "last_received_ms_ago"

    invoke-virtual {p4}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_3
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    const-string v0, "operation"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_4
    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 480
    const-string v2, "exception"

    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v2, "error_message"

    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_5
    invoke-static {v1, p7, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;J)V

    .line 485
    invoke-static {v1, p9, p10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;J)V

    .line 486
    invoke-static {v1, p11}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 488
    const-string v0, "mqtt_disconnection_on_failure"

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 491
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 579
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pow"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 580
    const-string v1, "mqtt_device_state"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 581
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 568
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "message_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 572
    const-string v1, "mqtt_invalid_message"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 573
    return-void
.end method

.method public final a(Ljava/lang/String;IJJJLandroid/net/NetworkInfo;)V
    .locals 3

    .prologue
    .line 538
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "operation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 543
    invoke-static {v0, p5, p6}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;J)V

    .line 544
    invoke-static {v0, p7, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;J)V

    .line 545
    invoke-static {v0, p9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 547
    const-string v1, "mqtt_operation_timeout"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 548
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 590
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "operation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->e:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 595
    const-string v1, "mqtt_publish_arrive_processing_latency"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 596
    return-void
.end method

.method public final a(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V
    .locals 4

    .prologue
    .line 508
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "operation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 512
    invoke-static {v0, p4, p5}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;J)V

    .line 513
    invoke-static {v0, p6, p7}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;J)V

    .line 514
    invoke-static {v0, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 516
    const-string v1, "mqtt_response_time"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 519
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;ZIJLandroid/net/NetworkInfo;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;ZIJ",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "act"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "running"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 279
    invoke-static {v0, p7, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;J)V

    .line 280
    invoke-static {v0, p9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 282
    if-ltz p6, :cond_0

    .line 283
    const-string v1, "fflg"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    const-string v1, "calr"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    const-string v1, "flg"

    invoke-virtual {p3}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_2
    invoke-virtual {p4}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    const-string v1, "sta_id"

    invoke-virtual {p4}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_3
    const-string v1, "mqtt_service_state"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    return-void
.end method

.method public final a(ZJLjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Exception;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Byte;",
            ">;JJ",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "connect_result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "connect_duration_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 389
    if-eqz p4, :cond_0

    .line 390
    const-string v0, "failure_reason"

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    const-string v2, "exception"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v2, "error_message"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_1
    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const-string v2, "conack_rc"

    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_2
    invoke-static {v1, p7, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;J)V

    .line 403
    invoke-static {v1, p9, p10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->b(Ljava/util/Map;J)V

    .line 404
    invoke-static {v1, p11}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 406
    const-string v0, "mqtt_connect_attempt"

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 409
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->c:Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;

    invoke-interface {v0}, Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;->a()Z

    move-result v0

    return v0
.end method

.method public final b(IJ)V
    .locals 4

    .prologue
    .line 554
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 559
    const-string v1, "mqtt_queue_peek"

    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 560
    return-void
.end method
