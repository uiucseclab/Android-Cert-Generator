.class public Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;
.super Ljava/lang/Object;
.source "PackageInfoUtil.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;->context:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public getVersionForPackageInfoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 16
    :goto_0
    return-object v1

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Name Not Found"

    goto :goto_0
.end method

.method public isAppInstalledAndEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
