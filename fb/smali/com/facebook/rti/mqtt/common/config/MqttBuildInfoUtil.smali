.class public Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;
.super Ljava/lang/Object;
.source "spherical_fov_y"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/facebook/rti/common/util/PackageInfoUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.4.6"

    :goto_0
    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->a:Ljava/lang/String;

    .line 31
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gtz v0, :cond_1

    const-string v0, "104006"

    :goto_1
    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->b:Ljava/lang/String;

    .line 38
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 39
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 43
    :goto_3
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->c:Z

    .line 44
    return-void

    .line 28
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_1
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 34
    :cond_2
    const-string v0, "1.4.6"

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->a:Ljava/lang/String;

    .line 35
    const-string v0, "104006"

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->b:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v0, v1

    .line 39
    goto :goto_3

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
