.class public Lcom/facebook/rti/push/client/SharedConfigProvider;
.super Ljava/lang/Object;
.source "subt_err"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:I

.field private d:Landroid/content/SharedPreferences;

.field private e:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->d:Landroid/content/SharedPreferences;

    .line 57
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->e:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 59
    iput p3, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->c:I

    .line 60
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->a:Landroid/content/Context;

    const-string v2, "rti.mqtt.flags"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->d:Landroid/content/SharedPreferences;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 70
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/facebook/rti/push/client/SharedConfigProvider;->a()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->d:Landroid/content/SharedPreferences;

    const-string v1, "cached_qe_flag"

    iget v2, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 76
    invoke-static {}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->a()Ljava/lang/String;

    move-result-object v6

    .line 77
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->d:Landroid/content/SharedPreferences;

    const-string v1, "shared_qe_flag"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;->a(I)V

    .line 129
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 87
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/rti/push/client/SharedConfigProvider$1;

    invoke-direct {v1, p0, v2, p1, v4}, Lcom/facebook/rti/push/client/SharedConfigProvider$1;-><init>(Lcom/facebook/rti/push/client/SharedConfigProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;I)V

    const-wide/16 v8, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v8, v9, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 99
    new-instance v0, Lcom/facebook/rti/push/client/SharedConfigProvider$2;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/push/client/SharedConfigProvider$2;-><init>(Lcom/facebook/rti/push/client/SharedConfigProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ScheduledFuture;ILcom/facebook/rti/push/client/FbnsSharedInitializer$1;)V

    .line 112
    iget-object v1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.facebook.rti.intent.SHARED_QE_FLAG_RESPONSE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.intent.SHARED_QE_FLAG_REQUEST"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v1, "pkg_name"

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->e:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    const/4 v7, -0x1

    move-object v4, v10

    move-object v5, v0

    move-object v6, v10

    move-object v8, v10

    move-object v9, v10

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Ljava/util/List;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0
.end method

.method public final a(Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 139
    iget-object v2, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/facebook/rti/push/client/SharedConfigProvider$3;

    invoke-direct {v4, p0, v1, p1}, Lcom/facebook/rti/push/client/SharedConfigProvider$3;-><init>(Lcom/facebook/rti/push/client/SharedConfigProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;)V

    const-wide/16 v6, 0x7530

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 151
    new-instance v4, Lcom/facebook/rti/push/client/SharedConfigProvider$4;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/facebook/rti/push/client/SharedConfigProvider$4;-><init>(Lcom/facebook/rti/push/client/SharedConfigProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;)V

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.facebook.rti.fbns.intent.SHARE_IDS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider;->e:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    const/4 v6, -0x1

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Ljava/util/List;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0
.end method
