.class public Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;
.super Ljava/lang/Object;
.source "verified deps file"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SharedPreferencesUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Landroid/content/SharedPreferences;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field public volatile f:J

.field public volatile g:I

.field private volatile h:Ljava/lang/String;

.field private volatile i:Ljava/lang/String;

.field private volatile j:Ljava/lang/String;

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    invoke-direct {v0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;-><init>()V

    sput-object v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:J

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:I

    .line 74
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    .line 77
    iput-boolean v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Z

    .line 78
    iput-boolean v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Z

    .line 79
    iput-boolean v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Z

    .line 80
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->NONE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 84
    return-void
.end method

.method public static a()Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    return-object v0
.end method

.method private j()V
    .locals 9

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 424
    iget-wide v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:J

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 428
    :cond_0
    :goto_0
    move v0, v1

    if-eqz v0, :cond_1

    .line 255
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->FROZEN:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 260
    :goto_1
    return-void

    .line 259
    :cond_1
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l()V

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:J

    iget v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 6

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 268
    :cond_0
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_TEMPLATE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 291
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    .line 275
    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    const-string v3, "CURSOR_BOOKMARK"

    iget-object v4, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CLIENT_QUERY_ID_BOOKMARK"

    iget-object v4, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b()Ljava/lang/String;

    move-result-object v3

    .line 281
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "https"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "graphqlbatch"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    iget-object v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 306
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 307
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private declared-synchronized m()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 346
    :goto_0
    monitor-exit p0

    return v0

    .line 333
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/FIRST_FETCH_STRING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/STORY_CURSOR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/LAST_HEAD_FETCH_TIME"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:J

    .line 337
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/FROZEN_FEED_TIME"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:I

    .line 339
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/USER_AGENT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/USER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/COLD_START_ADVANCE_PRIME_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Z

    .line 343
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/COLD_START_ADVANCE_PRIME_FROM_NODEX_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    const/4 v0, 0x1

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static n()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 412
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 414
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method


# virtual methods
.method public final a(JI)V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:I

    if-eq p3, v0, :cond_3

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 208
    iput-wide p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:J

    .line 209
    const-string v1, "COLD_START_PRIME_INFO/LAST_HEAD_FETCH_TIME"

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 211
    :cond_1
    iget v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:I

    if-eq p3, v1, :cond_2

    .line 212
    iput p3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:I

    .line 213
    const-string v1, "COLD_START_PRIME_INFO/FROZEN_FEED_TIME"

    iget v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    :cond_3
    return-void
.end method

.method public final a(Lcom/facebook/common/udppriming/client/UDPPrimingStatus;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 135
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Z

    .line 225
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    const-string v1, "COLD_START_PRIME_INFO/COLD_START_ADVANCE_PRIME_FROM_NODEX_ENABLED"

    iget-boolean v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 158
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Z

    .line 166
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :cond_2
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    const-string v1, "COLD_START_PRIME_INFO/FIRST_FETCH_STRING"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v1, "COLD_START_PRIME_INFO/USER_AGENT"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v1, "COLD_START_PRIME_INFO/USER_ID"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 322
    const-string v0, "COLD_START_PRIMING_INFO_STORAGE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    .line 323
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m()Z

    move-result v0

    return v0
.end method

.method public final a(ZZ)Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Z

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a()Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "ColdStartPrimingInfo"

    const-string v1, "nodex udp priming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j()V

    .line 375
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Z

    .line 240
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    const-string v1, "COLD_START_PRIME_INFO/COLD_START_ADVANCE_PRIME_ENABLED"

    iget-boolean v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :cond_2
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    const-string v1, "COLD_START_PRIME_INFO/STORY_CURSOR"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->SENT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    return-object v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    iget-boolean v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v2, v0

    .line 154
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 149
    goto :goto_0

    :cond_1
    move v0, v1

    .line 154
    goto :goto_1
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 386
    const-string v0, "ColdStartPrimingInformation.mayFireEarlyUDPPrimingInMainTabActivity"

    const v1, -0x62173f1e

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->NONE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Z

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "ColdStartPrimingInfo"

    const-string v1, "maintab udp priming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    const v0, 0x3c54924c

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v0

    const v1, 0x2adc2d71

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 436
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 439
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v2, "COLD_START_PRIME_INFO/STORY_CURSOR"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
