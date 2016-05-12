.class public Lcom/facebook/rti/push/service/RegistrationState;
.super Ljava/lang/Object;
.source "stsc"


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field public final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/facebook/rti/common/time/SystemClock;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Lcom/facebook/rti/common/time/SystemClock;Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    .line 65
    iput-object p2, p0, Lcom/facebook/rti/push/service/RegistrationState;->b:Landroid/content/SharedPreferences;

    .line 66
    iput-object p3, p0, Lcom/facebook/rti/push/service/RegistrationState;->c:Lcom/facebook/rti/common/time/SystemClock;

    .line 67
    .line 236
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->b:Landroid/content/SharedPreferences;

    const-string v1, "mqtt_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p4}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->b()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/RegistrationState;->a()V

    .line 243
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mqtt_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 247
    .line 68
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->a()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 232
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    const-string v2, "RegistrationState"

    const-string v3, "RegistrationCacheEntry serialization failed"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    :goto_0
    return-object v0

    .line 213
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->a(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    const-string v2, "RegistrationState"

    const-string v3, "Parse failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 136
    const-string v0, "RegistrationState"

    const-string v1, "invalidateAllTokenCache"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 138
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/RegistrationState;->d(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v3

    .line 140
    if-nez v3, :cond_0

    .line 141
    const-string v3, "RegistrationState"

    const-string v4, "invalid value for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_0
    const-string v4, ""

    iput-object v4, v3, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->c:Ljava/lang/String;

    .line 145
    iget-object v4, p0, Lcom/facebook/rti/push/service/RegistrationState;->c:Lcom/facebook/rti/common/time/SystemClock;

    invoke-virtual {v4}, Lcom/facebook/rti/common/time/SystemClock;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->d:Ljava/lang/Long;

    .line 149
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->a()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 154
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v3, "RegistrationState"

    const-string v4, "RegistrationCacheEntry serialization failed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 157
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    const-string v2, "RegistrationState"

    const-string v3, "remove app %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 110
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 113
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    const-string v0, "RegistrationState"

    const-string v3, "add app %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 76
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 77
    new-instance v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    invoke-direct {v0}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;-><init>()V

    .line 78
    iput-object p1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->b:Ljava/lang/String;

    .line 79
    iput-object p2, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->a:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/facebook/rti/push/service/RegistrationState;->c:Lcom/facebook/rti/common/time/SystemClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/SystemClock;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->d:Ljava/lang/Long;

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->a(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 76
    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/push/service/RegistrationCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 187
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 189
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    :try_start_0
    const-string v3, "RegistrationState"

    const-string v4, "getRegisteredApps retrieving %s:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->a(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v3, "RegistrationState"

    const-string v4, "Parse failed"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_0
    return-object v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    const-string v2, "RegistrationState"

    const-string v3, "invalidateTokenCache %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 121
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/RegistrationState;->d(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v0

    .line 122
    if-nez v0, :cond_1

    .line 123
    const-string v0, "RegistrationState"

    const-string v2, "Missing entry"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0

    .line 127
    :cond_1
    const-string v1, ""

    iput-object v1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->c:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/facebook/rti/push/service/RegistrationState;->c:Lcom/facebook/rti/common/time/SystemClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/SystemClock;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->d:Ljava/lang/Long;

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->a(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;)Z

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    const-string v0, "RegistrationState"

    const-string v3, "updateTokenCache %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 90
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 91
    .line 255
    iget-object v5, p0, Lcom/facebook/rti/push/service/RegistrationState;->b:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "auto_reg_retry"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 257
    .line 93
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/RegistrationState;->d(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    const-string v0, "RegistrationState"

    const-string v1, "Missing entry"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :goto_2
    return v2

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1

    .line 99
    :cond_2
    iput-object p2, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->c:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/facebook/rti/push/service/RegistrationState;->c:Lcom/facebook/rti/common/time/SystemClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/SystemClock;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->d:Ljava/lang/Long;

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->a(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;)Z

    move-result v2

    goto :goto_2
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 164
    const-string v3, "RegistrationState"

    const-string v4, "getValidToken %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 167
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 182
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 165
    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/RegistrationState;->d(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v0

    .line 173
    if-nez v0, :cond_2

    move-object v0, v2

    .line 174
    goto :goto_1

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/push/service/RegistrationState;->c:Lcom/facebook/rti/common/time/SystemClock;

    invoke-virtual {v1}, Lcom/facebook/rti/common/time/SystemClock;->a()J

    move-result-wide v4

    .line 178
    iget-object v1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-ltz v1, :cond_3

    iget-object v1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-lez v1, :cond_4

    :cond_3
    move-object v0, v2

    .line 179
    goto :goto_1

    .line 182
    :cond_4
    iget-object v0, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->b:Landroid/content/SharedPreferences;

    const-string v1, "auto_reg_retry"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 251
    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationState;->c:Lcom/facebook/rti/common/time/SystemClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/SystemClock;->a()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_reg_retry"

    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationState;->c:Lcom/facebook/rti/common/time/SystemClock;

    invoke-virtual {v2}, Lcom/facebook/rti/common/time/SystemClock;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 262
    return-void
.end method
