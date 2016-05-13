.class public Lcom/facebook/rti/push/service/FbnsRegistrarRetry;
.super Ljava/lang/Object;
.source "stsc first chunk must be 1"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/AlarmManager;

.field public c:Landroid/content/SharedPreferences;

.field private d:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private g:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->b:Landroid/app/AlarmManager;

    .line 51
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->a:Landroid/content/Context;

    const-string v2, "rti.mqtt.retry"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->c:Landroid/content/SharedPreferences;

    .line 55
    iput-object p3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->d:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 56
    iput-object p4, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->g:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->e:Ljava/util/Map;

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->f:I

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const-wide/32 v0, 0x5265c00

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 69
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.facebook.rti.fbns.intent.REGISTER_RETRY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v3, "pkg_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v3, "appid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->g:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v3, v2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->d(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->a:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v9, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->e:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->c:Landroid/content/SharedPreferences;

    const-wide/32 v4, 0x1d4c0

    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 79
    const-string v3, "FbnsRegistrarRetry"

    const-string v6, "scheduleRetry %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3, v6, v7}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->f:I

    const/16 v6, 0x17

    if-ne v3, v6, :cond_0

    .line 82
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->b:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->d:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v6}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {v3, v10, v6, v7, v2}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 93
    :goto_0
    const-wide/16 v2, 0x2

    mul-long/2addr v2, v4

    .line 94
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 98
    :goto_1
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 101
    return-void

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->b:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->d:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v6}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {v3, v10, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 116
    const-string v0, "FbnsRegistrarRetry"

    const-string v1, "Registration alarmManager retry cancelled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->b:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 121
    .line 109
    :cond_0
    const-string v3, "FbnsRegistrarRetry"

    const-string v4, "Registration reset retry."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-wide/32 v5, 0x1d4c0

    invoke-interface {v3, p1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 113
    .line 122
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
