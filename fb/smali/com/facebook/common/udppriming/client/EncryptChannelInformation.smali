.class public Lcom/facebook/common/udppriming/client/EncryptChannelInformation;
.super Ljava/lang/Object;
.source "verify_sender_failed"


# static fields
.field private static final a:Lcom/facebook/common/udppriming/client/EncryptChannelInformation;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Ljava/lang/String;

.field private volatile g:I

.field private volatile h:I

.field private volatile i:J

.field private volatile j:J

.field private volatile k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    invoke-direct {v0}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;-><init>()V

    sput-object v0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a:Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->c:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->d:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->e:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->f:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->g:I

    .line 37
    iput v1, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->h:I

    .line 38
    iput-wide v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->i:J

    .line 39
    iput-wide v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->j:J

    .line 40
    iput-wide v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->k:J

    .line 26
    return-void
.end method

.method public static a()Lcom/facebook/common/udppriming/client/EncryptChannelInformation;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a:Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->j:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 157
    :goto_0
    monitor-exit p0

    return v0

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/CHANNEL_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->c:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/MAC_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->d:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/ENCRYPTION_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->e:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/USER_AGENT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->f:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/UPDATED_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->i:J

    .line 153
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/EXPIRE_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->j:J

    .line 154
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/TTL_SINCE_ACTIVATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->g:I

    .line 155
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/ALGORITHM_VERSION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->h:I

    .line 156
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPT_CHANNEL_INFO/CREATION_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJ)V
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->c:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->d:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->e:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->f:Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->i:J

    .line 101
    iget-wide v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->i:J

    int-to-long v2, p5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->j:J

    .line 102
    iput p6, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->g:I

    .line 103
    iput p7, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->h:I

    .line 104
    iput-wide p8, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->k:J

    .line 105
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    const-string v1, "ENCRYPT_CHANNEL_INFO/CHANNEL_ID"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v1, "ENCRYPT_CHANNEL_INFO/MAC_KEY"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string v1, "ENCRYPT_CHANNEL_INFO/ENCRYPTION_KEY"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v1, "ENCRYPT_CHANNEL_INFO/USER_AGENT"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v1, "ENCRYPT_CHANNEL_INFO/UPDATED_TIME"

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v1, "ENCRYPT_CHANNEL_INFO/EXPIRE_TIME"

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->j:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v1, "ENCRYPT_CHANNEL_INFO/TTL_SINCE_ACTIVATE"

    iget v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v1, "ENCRYPT_CHANNEL_INFO/ALGORITHM_VERSION"

    iget v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->h:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v1, "ENCRYPT_CHANNEL_INFO/CREATION_TIME"

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->k:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 137
    const-string v0, "ENCRYPT_CHANNEL_INFO_STORAGE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b:Landroid/content/SharedPreferences;

    .line 138
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->f()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->e:Ljava/lang/String;

    return-object v0
.end method
