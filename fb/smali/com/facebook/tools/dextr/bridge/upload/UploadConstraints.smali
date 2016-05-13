.class public Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;
.super Ljava/lang/Object;
.source "somehow survived SIGKILL"


# instance fields
.field private final a:Lcom/facebook/prefs/shared/FbSharedPreferences;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;Lcom/facebook/prefs/shared/FbSharedPreferences;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;",
            "Lcom/facebook/prefs/shared/FbSharedPreferences;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b:Landroid/content/Context;

    .line 42
    invoke-virtual {p2}, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->a()Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    .line 43
    iput-object p3, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    .line 44
    iput-object p4, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d:Ljavax/inject/Provider;

    .line 47
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c(J)V

    .line 48
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d(J)V

    .line 49
    return-void
.end method

.method public static final b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;
    .locals 5

    .prologue
    .line 16
    new-instance v3, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p0}, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;

    move-result-object v1

    check-cast v1, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;

    invoke-static {p0}, Lcom/facebook/prefs/shared/FbSharedPreferencesImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/prefs/shared/FbSharedPreferencesImpl;

    move-result-object v2

    check-cast v2, Lcom/facebook/prefs/shared/FbSharedPreferences;

    const/16 v4, 0x28a

    invoke-static {p0, v4}, Lcom/facebook/inject/IdBasedDefaultScopeProvider;->a(Lcom/facebook/inject/InjectorLike;I)Ljavax/inject/Provider;

    move-result-object v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;-><init>(Landroid/content/Context;Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;Lcom/facebook/prefs/shared/FbSharedPreferences;Ljavax/inject/Provider;)V

    .line 21
    return-object v3
.end method

.method private b()V
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b(J)V

    .line 99
    return-void
.end method

.method private declared-synchronized b(J)V
    .locals 7

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->e()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 103
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->c()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->c()J

    move-result-wide v2

    div-long/2addr v0, v2

    .line 105
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v4}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->b()J

    move-result-wide v4

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c(J)V

    .line 106
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v4}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->c()J

    move-result-wide v4

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_1
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()J
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->a:Lcom/facebook/prefs/shared/PrefKey;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/prefs/shared/FbSharedPreferences;->a(Lcom/facebook/prefs/shared/PrefKey;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private c(J)V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/prefs/shared/FbSharedPreferences;->edit()Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->a:Lcom/facebook/prefs/shared/PrefKey;

    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->a()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;->a(Lcom/facebook/prefs/shared/PrefKey;J)Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;->commit()V

    .line 121
    return-void
.end method

.method private d()J
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->b:Lcom/facebook/prefs/shared/PrefKey;

    invoke-static {}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->e()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/prefs/shared/FbSharedPreferences;->a(Lcom/facebook/prefs/shared/PrefKey;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/prefs/shared/FbSharedPreferences;->edit()Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->b:Lcom/facebook/prefs/shared/PrefKey;

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;->a(Lcom/facebook/prefs/shared/PrefKey;J)Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;->commit()V

    .line 134
    return-void
.end method

.method private static e()J
    .locals 4

    .prologue
    .line 137
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/facebook/common/time/SystemClock;->b()Lcom/facebook/common/time/SystemClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/time/SystemClock;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 94
    neg-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b(J)V

    .line 95
    return-void
.end method

.method public final a()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b()V

    .line 65
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    if-nez v0, :cond_0

    move v0, v1

    .line 86
    :goto_0
    return v0

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v3, v4, :cond_3

    move v0, v2

    .line 78
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    move v0, v2

    .line 83
    goto :goto_0

    :cond_4
    move v0, v1

    .line 86
    goto :goto_0
.end method
