.class public Lcom/facebook/rti/push/client/FbnsClientWrapper;
.super Ljava/lang/Object;
.source "sv"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/facebook/rti/push/client/FbnsSharedInitializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v1, "rti.mqtt.flags"

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    .line 50
    new-instance v0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    new-instance v1, Lcom/facebook/rti/push/client/FbnsClientWrapper$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/push/client/FbnsClientWrapper$1;-><init>(Lcom/facebook/rti/push/client/FbnsClientWrapper;)V

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;-><init>(Landroid/content/Context;Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;Lcom/facebook/rti/push/client/FbnsClientWrapper;I)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->c:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;I)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v1, "rti.mqtt.flags"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    .line 65
    new-instance v0, Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;-><init>(Landroid/content/Context;Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;Lcom/facebook/rti/push/client/FbnsClientWrapper;I)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->c:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    .line 70
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    const-string v1, "shared_flag"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 170
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    return-object v1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->c:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->a()V

    .line 74
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 89
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    const-string v1, "shared_flag"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->d(Landroid/content/Context;)Z

    move-result v1

    .line 91
    if-eqz v1, :cond_0

    if-ne v0, v3, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    if-nez v1, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "register_and_stop"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0, p2}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shared_flag"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fbnslite_flag"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "leader_package"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0, p3}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    const-string v1, "register_and_stop"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    const-string v0, "FbnsClientWrapper"

    const-string v1, "not stopping FbnsService because waiting for register to complete"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/rti/push/client/FbnsClient;->b(Landroid/content/Context;)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->c:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->b()V

    .line 78
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    const-string v1, "shared_flag"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/facebook/rti/push/client/FbnsClient;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->c:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->d()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->c:Lcom/facebook/rti/push/client/FbnsSharedInitializer;

    invoke-virtual {v0}, Lcom/facebook/rti/push/client/FbnsSharedInitializer;->c()V

    .line 86
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b:Landroid/content/SharedPreferences;

    const-string v1, "shared_flag"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->d(Landroid/content/Context;)Z

    move-result v1

    .line 148
    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/rti/push/client/FbnsClient;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsClientWrapper;->a:Landroid/content/Context;

    .line 206
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/facebook/rti/push/client/FbnsClient;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    goto :goto_0
.end method
