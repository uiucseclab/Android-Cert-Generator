.class public Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;
.super Ljava/lang/Object;
.source "snapshot_service_state"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:I

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/facebook/xconfig/core/XConfigReader;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->d:Lcom/facebook/xconfig/core/XConfigSetting;

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/xconfig/core/XConfigReader;->a(Lcom/facebook/xconfig/core/XConfigSetting;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->a:J

    .line 26
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->e:Lcom/facebook/xconfig/core/XConfigSetting;

    const-wide/16 v2, 0x1a0

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/xconfig/core/XConfigReader;->a(Lcom/facebook/xconfig/core/XConfigSetting;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->b:J

    .line 29
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->f:Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/xconfig/core/XConfigReader;->a(Lcom/facebook/xconfig/core/XConfigSetting;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->c:J

    .line 32
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->g:Lcom/facebook/xconfig/core/XConfigSetting;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/xconfig/core/XConfigReader;->a(Lcom/facebook/xconfig/core/XConfigSetting;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->d:I

    .line 35
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->h:Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/xconfig/core/XConfigReader;->a(Lcom/facebook/xconfig/core/XConfigSetting;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->e:J

    .line 38
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->c:J

    return-wide v0
.end method
