.class public Lcom/facebook/acra/reporter/BaseCrashReporter;
.super Ljava/lang/Object;
.source "yaw"


# instance fields
.field protected checkSSLcerts:Z

.field protected mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->checkSSLcerts:Z

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->mApplicationContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public additionalDropBoxTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    return-object v0
.end method

.method public checkSSLCertsOnCrashReport(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->checkSSLcerts:Z

    .line 69
    return-void
.end method

.method public checkSSLCertsOnCrashReport()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->checkSSLcerts:Z

    return v0
.end method

.method public dropboxCollectionMinutes()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x5

    return v0
.end method

.method public formPostFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "Android"

    return-object v0
.end method

.method public includeDropBoxSystemTags()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public logcatArguments()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "200"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    .line 48
    return-object v0
.end method

.method public socketTimeout()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xbb8

    return v0
.end method
