.class public Lcom/facebook/rti/push/service/FbnsServiceIdManager;
.super Ljava/lang/Object;
.source "string"

# interfaces
.implements Lcom/facebook/rti/mqtt/manager/MqttIdManager;


# instance fields
.field private final a:Lcom/facebook/rti/push/service/FbnsService;

.field private b:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

.field private c:Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;)V
    .locals 8

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a:Lcom/facebook/rti/push/service/FbnsService;

    .line 30
    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->c:Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;

    .line 31
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a:Lcom/facebook/rti/push/service/FbnsService;

    const-string v2, "rti.mqtt.ids"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    const-string v2, "/settings/mqtt/id/mqtt_device_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/settings/mqtt/id/mqtt_device_secret"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/settings/mqtt/id/timestamp"

    const-wide v6, 0x7fffffffffffffffL

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->b:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    .line 42
    invoke-direct {p0}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->g()V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v1, "rti.mqtt.ids"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    const-string v1, "/settings/mqtt/id/mqtt_device_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->b:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.services"

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v1}, Lcom/facebook/rti/push/service/FbnsService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "567310203415052"

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->b:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v1, p1}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    sget-object v1, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a:Lcom/facebook/rti/push/service/FbnsService;

    const-string v3, "rti.mqtt.ids"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "/settings/mqtt/id/mqtt_device_id"

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "/settings/mqtt/id/mqtt_device_secret"

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "/settings/mqtt/id/timestamp"

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->c()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->b:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "MQTT"

    return-object v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->b:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->b:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->b()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->c:Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;->b()Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsService;->o()V

    .line 111
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->c:Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;->a()Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a(Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a:Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsService;->o()V

    .line 51
    :cond_0
    return-void
.end method
