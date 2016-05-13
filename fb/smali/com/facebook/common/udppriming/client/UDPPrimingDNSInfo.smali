.class public Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;
.super Ljava/lang/Object;
.source "vencode"


# static fields
.field private static final a:Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private volatile c:Ljava/lang/String;

.field private volatile d:[B

.field private volatile e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    invoke-direct {v0}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;-><init>()V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a:Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:[B

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:J

    .line 24
    return-void
.end method

.method public static a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a:Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    return-object v0
.end method

.method private static a(JJ)Z
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 98
    :goto_0
    monitor-exit p0

    return v0

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    const-string v1, "UDP_PRIMING_DNS/HOST_NAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    const-string v1, "UDP_PRIMING_DNS/HOST_IP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:[B

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    const-string v1, "UDP_PRIMING_DNS/HOST_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)V
    .locals 4

    .prologue
    .line 58
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:[B

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:J

    .line 66
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    const-string v1, "UDP_PRIMING_DNS/HOST_NAME"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string v1, "UDP_PRIMING_DNS/HOST_IP"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    const-string v1, "UDP_PRIMING_DNS/HOST_TIMESTAMP"

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 79
    const-string v0, "UDP_PRIMING_DNS_INFO_STORAGE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b:Landroid/content/SharedPreferences;

    .line 80
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:J

    const-wide/32 v2, 0x6ddd00

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[B
    .locals 4

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->e:J

    const-wide/32 v2, 0x44aa200

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->d:[B

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
