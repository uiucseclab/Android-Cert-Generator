.class public Lcom/facebook/rti/mqtt/manager/EmployeesToLatestConnectionConfigOverrides;
.super Ljava/lang/Object;
.source "skipVideoBuffer"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/config/ConnectionConfigOverrides;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/EmployeesToLatestConnectionConfigOverrides;->a:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/EmployeesToLatestConnectionConfigOverrides;->a:Landroid/content/SharedPreferences;

    const-string v1, "android_fbnslite_employees_latest"

    const-string v2, "UNSET"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 27
    const-string v2, "EmployeesToLatestConnectionConfigOverrides"

    const-string v3, "Override to latest mqtt tier: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-eqz v1, :cond_0

    const-string v0, "mqtt-latest.facebook.com"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
