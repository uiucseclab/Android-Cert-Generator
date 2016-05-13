.class public Lcom/facebook/rti/config/ConfigProxyService;
.super Landroid/app/IntentService;
.source "system classloader of unexpected type"


# static fields
.field static final a:Lcom/facebook/rti/config/ConfigProxyService$RemoveMarker;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/facebook/rti/config/ConfigProxyService$RemoveMarker;

    const/4 v1, 0x0

    invoke-direct {v0}, Lcom/facebook/rti/config/ConfigProxyService$RemoveMarker;-><init>()V

    sput-object v0, Lcom/facebook/rti/config/ConfigProxyService;->a:Lcom/facebook/rti/config/ConfigProxyService$RemoveMarker;

    .line 42
    const-class v0, Lcom/facebook/rti/config/ConfigProxyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/config/ConfigProxyService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "ConfigProxyService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/rti/config/ConfigProxyService;->setIntentRedelivery(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x182fee2b

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 51
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 52
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x7b2bed1f

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x6b837670

    invoke-static {v4, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 109
    sget-object v1, Lcom/facebook/rti/config/ConfigProxyService;->b:Ljava/lang/String;

    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 111
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x2e537863

    invoke-static {v4, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 56
    if-eqz p1, :cond_0

    const-string v0, "com.facebook.rti.config.ACTION_MODIFY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v0, "TARGET_CONFIG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "BROADCAST_CONFIG_CHANGED"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 65
    if-eqz v0, :cond_2

    const-string v1, ""

    if-ne v0, v1, :cond_3

    .line 66
    :cond_2
    sget-object v0, Lcom/facebook/rti/config/ConfigProxyService;->b:Ljava/lang/String;

    const-string v1, "Empty target config"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_3
    sget-object v1, Lcom/facebook/rti/config/ConfigProxyService;->b:Ljava/lang/String;

    const-string v4, "Modifying %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-static {v1, v4, v5}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 101
    sget-object v11, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const/4 v12, 0x0

    invoke-virtual {v11, p0, v0, v12}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v11

    move-object v0, v11

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 73
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    const-string v1, "TARGET_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 78
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_5

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 80
    :cond_5
    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 81
    :cond_6
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    .line 82
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 83
    :cond_7
    instance-of v6, v1, Ljava/lang/Long;

    if-eqz v6, :cond_8

    .line 84
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 85
    :cond_8
    instance-of v6, v1, Ljava/lang/Boolean;

    if-eqz v6, :cond_9

    .line 86
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 87
    :cond_9
    instance-of v6, v1, Lcom/facebook/rti/config/ConfigProxyService$RemoveMarker;

    if-eqz v6, :cond_a

    .line 88
    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 90
    :cond_a
    sget-object v6, Lcom/facebook/rti/config/ConfigProxyService;->b:Ljava/lang/String;

    const-string v7, "Unsupported entry format intent:%s key:%s value:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    aput-object v0, v8, v10

    const/4 v0, 0x2

    aput-object v1, v8, v0

    invoke-static {v6, v7, v8}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    :cond_b
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    if-eqz v2, :cond_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/rti/config/ConfigProxyService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
