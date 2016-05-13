.class public Lcom/facebook/rti/push/client/FbnsSharedInitializer;
.super Ljava/lang/Object;
.source "success"


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;

.field public final c:Lcom/facebook/rti/push/client/SharedConfigProvider;

.field private final d:Lcom/facebook/rti/push/client/FbnsClientWrapper;

.field public final e:I

.field public f:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;Lcom/facebook/rti/push/client/FbnsClientWrapper;I)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b:Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;

    .line 35
    new-instance v0, Lcom/facebook/rti/push/client/SharedConfigProvider;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/facebook/rti/push/client/SharedConfigProvider;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->c:Lcom/facebook/rti/push/client/SharedConfigProvider;

    .line 39
    iput-object p3, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->d:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    .line 40
    iput p4, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    const-string v2, "rti.mqtt.flags"

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b:Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_qe_config"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_status"

    const-string v2, "PREINSTALLER"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 57
    invoke-virtual {p0, v4}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a(I)V

    .line 107
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_qe_config"

    iget v2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_status"

    const-string v2, "PREINSTALLER_DISABLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 63
    iget v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a(I)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->a()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/facebook/rti/common/util/PackageInfoUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/facebook/rti/mqtt/common/config/MqttPermissionUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_qe_config"

    iget v2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_status"

    const-string v2, "QE_CONTROLLER_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 75
    iget v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a(I)V

    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_qe_flag"

    iget-object v2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b:Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;

    invoke-virtual {v2}, Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sharing_state_enabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "register_and_stop"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->c:Lcom/facebook/rti/push/client/SharedConfigProvider;

    new-instance v1, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;-><init>(Lcom/facebook/rti/push/client/FbnsSharedInitializer;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/client/SharedConfigProvider;->a(Lcom/facebook/rti/push/client/FbnsSharedInitializer$1;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 140
    if-eq p1, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    .line 82
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->d:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a(Z)V

    .line 143
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b:Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;->e()V

    .line 146
    :cond_1
    if-eq p1, v2, :cond_2

    .line 147
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->d:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    const-string v1, "onInit"

    invoke-virtual {v0, v1, p1, v2}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a(Ljava/lang/String;II)V

    .line 148
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b:Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;->d()V

    .line 150
    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 110
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    const-string v2, "rti.mqtt.flags"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_qe_flag"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sharing_state_enabled"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "register_and_stop"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cached_qe_flag"

    iget v2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_qe_config"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_status"

    const-string v2, "SHARING_IS_DISABLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 122
    iget v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a(I)V

    .line 123
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b:Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;->a()V

    .line 157
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->d:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->e()V

    .line 127
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->d:Lcom/facebook/rti/push/client/FbnsClientWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a(Z)V

    .line 128
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    .line 104
    sget-object v2, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v3, "token_store"

    invoke-virtual {v2, v0, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 107
    .line 129
    return-void
.end method

.method public final d()I
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a:Landroid/content/Context;

    const-string v2, "rti.mqtt.flags"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->f:Landroid/content/SharedPreferences;

    const-string v1, "cached_qe_flag"

    iget v2, p0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
