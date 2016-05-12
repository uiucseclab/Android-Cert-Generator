.class public final Lcom/crashlytics/android/internal/aS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/crashlytics/android/internal/aX;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/crashlytics/android/internal/aW;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/aS;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/internal/aS;->c:Z

    .line 47
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/crashlytics/android/internal/aS;-><init>()V

    return-void
.end method

.method public static a()Lcom/crashlytics/android/internal/aS;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/crashlytics/android/internal/aT;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 163
    const-string v1, "\\."

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/crashlytics/android/internal/ab;->b(ILjava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 170
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 171
    new-instance v4, Lcom/crashlytics/android/internal/ao;

    invoke-direct {v4, p2}, Lcom/crashlytics/android/internal/ao;-><init>(Landroid/content/Context;)V

    .line 173
    :try_start_1
    const-string v0, "APPLICATION_INSTALLATION_UUID"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/crashlytics/android/internal/ao;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 179
    :goto_0
    invoke-virtual {v4}, Lcom/crashlytics/android/internal/ao;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/internal/ap;

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/ap;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v1

    .line 183
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v6

    invoke-virtual {v6}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v6

    const-string v7, "Crashlytics"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not write value to JSON: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/ap;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ap;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0, v1}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 165
    :catch_1
    move-exception v0

    .line 167
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Could not create cipher to encrypt headers."

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    const-string v0, ""

    .line 210
    :cond_0
    :goto_2
    return-object v0

    .line 174
    :catch_2
    move-exception v0

    .line 175
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v5, "Crashlytics"

    const-string v6, "Could not write application id to JSON"

    invoke-interface {v1, v5, v6, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    :cond_1
    :try_start_3
    const-string v0, "os_version"

    invoke-virtual {v4}, Lcom/crashlytics/android/internal/ao;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 196
    :goto_3
    :try_start_4
    const-string v0, "model"

    invoke-virtual {v4}, Lcom/crashlytics/android/internal/ao;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 202
    :goto_4
    const-string v0, ""

    .line 203
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 205
    :try_start_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/internal/ab;->a([B)Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    goto :goto_2

    .line 190
    :catch_3
    move-exception v0

    .line 191
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v5, "Crashlytics"

    const-string v6, "Could not write OS version to JSON"

    invoke-interface {v1, v5, v6, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 197
    :catch_4
    move-exception v0

    .line 198
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v4, "Crashlytics"

    const-string v5, "Could not write model to JSON"

    invoke-interface {v1, v4, v5, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 206
    :catch_5
    move-exception v1

    .line 207
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Could not encrypt IDs"

    invoke-interface {v2, v3, v4, v1}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 158
    nop

    :array_0
    .array-data 2
        0x73s
        0x6cs
        0x63s
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/crashlytics/android/internal/av;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/aS;
    .locals 13

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/crashlytics/android/internal/aS;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 90
    :goto_0
    monitor-exit p0

    return-object v1

    .line 63
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/crashlytics/android/internal/aS;->b:Lcom/crashlytics/android/internal/aW;

    if-nez v1, :cond_1

    .line 64
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/crashlytics/android/internal/r;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    new-instance v9, Lcom/crashlytics/android/internal/ah;

    invoke-direct {v9}, Lcom/crashlytics/android/internal/ah;-><init>()V

    .line 70
    new-instance v10, Lcom/crashlytics/android/internal/aY;

    invoke-direct {v10}, Lcom/crashlytics/android/internal/aY;-><init>()V

    .line 71
    new-instance v11, Lcom/crashlytics/android/internal/aN;

    invoke-direct {v11}, Lcom/crashlytics/android/internal/aN;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/crashlytics/android/internal/ab;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 73
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 74
    new-instance v12, Lcom/crashlytics/android/internal/aO;

    move-object/from16 v0, p5

    invoke-direct {v12, v0, v3, p2}, Lcom/crashlytics/android/internal/aO;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;)V

    .line 79
    invoke-static {v2, v1, p1}, Lcom/crashlytics/android/internal/aS;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/crashlytics/android/internal/ab;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v1}, Lcom/crashlytics/android/internal/ab;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v5}, Lcom/crashlytics/android/internal/ai;->a(Ljava/lang/String;)Lcom/crashlytics/android/internal/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/ai;->a()I

    move-result v7

    .line 82
    new-instance v1, Lcom/crashlytics/android/internal/aZ;

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/crashlytics/android/internal/aZ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    new-instance v2, Lcom/crashlytics/android/internal/aW;

    move-object v3, v1

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/crashlytics/android/internal/aW;-><init>(Lcom/crashlytics/android/internal/aZ;Lcom/crashlytics/android/internal/ah;Lcom/crashlytics/android/internal/aY;Lcom/crashlytics/android/internal/aN;Lcom/crashlytics/android/internal/ba;)V

    iput-object v2, p0, Lcom/crashlytics/android/internal/aS;->b:Lcom/crashlytics/android/internal/aW;

    .line 89
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/crashlytics/android/internal/aS;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    .line 90
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final a(Lcom/crashlytics/android/internal/aU;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/crashlytics/android/internal/aU",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/crashlytics/android/internal/aS;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/aX;

    .line 117
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p1, v0}, Lcom/crashlytics/android/internal/aU;->a(Lcom/crashlytics/android/internal/aX;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public final b()Lcom/crashlytics/android/internal/aX;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/crashlytics/android/internal/aS;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/aX;

    return-object v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/aS;->b:Lcom/crashlytics/android/internal/aW;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aW;->a()Lcom/crashlytics/android/internal/aX;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/crashlytics/android/internal/aS;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 5

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/aS;->b:Lcom/crashlytics/android/internal/aW;

    sget-object v1, Lcom/crashlytics/android/internal/aV;->b:Lcom/crashlytics/android/internal/aV;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/aW;->a(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/aX;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/crashlytics/android/internal/aS;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 138
    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
