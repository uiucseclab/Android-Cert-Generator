.class public Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;
.super Ljava/lang/Object;
.source "starting dex2oat to build %s"

# interfaces
.implements Lcom/facebook/rti/mqtt/credentials/MqttCredentials;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v1, "rti.mqtt.ids"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->a:Landroid/content/SharedPreferences;

    .line 31
    iget-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->a:Landroid/content/SharedPreferences;

    const-string v1, "/settings/mqtt/id/connection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->a:Landroid/content/SharedPreferences;

    const-string v2, "/settings/mqtt/id/connection_secret"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->b:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    .line 34
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->b:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final declared-synchronized a(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;)Z
    .locals 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->b:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "/settings/mqtt/id/connection_key"

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "/settings/mqtt/id/connection_secret"

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 51
    iput-object p1, p0, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->b:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "device_auth"

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->a:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;->a(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, ""

    return-object v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
