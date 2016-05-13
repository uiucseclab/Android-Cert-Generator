.class public final Lcom/facebook/rti/push/client/FbnsClient;
.super Ljava/lang/Object;
.source "scheduleAlarm %s"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/facebook/rti/push/client/FbnsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/facebook/rti/push/client/FbnsClient$FbnsServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0}, Lcom/facebook/rti/push/client/FbnsClient$FbnsServiceConnection;-><init>()V

    sput-object v0, Lcom/facebook/rti/push/client/FbnsClient;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;)V

    .line 73
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 79
    :cond_0
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;)V

    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 133
    :goto_0
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->r()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-string v6, "Orca.START"

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 141
    return-void

    :cond_0
    move-object v4, p2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing appId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 47
    :cond_1
    invoke-static {p0, v4, p3}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    const-string v2, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v2, "appid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p4, v0, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    const-string v1, "Missing %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 96
    if-eqz p3, :cond_0

    .line 97
    invoke-static {p0, v3, p1}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 100
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->r()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    if-ltz p5, :cond_1

    .line 105
    const-string v2, "feature_flags"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    :cond_1
    if-eqz p2, :cond_2

    .line 108
    const-string v2, "caller"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :cond_2
    new-instance v2, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v2, v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 113
    if-nez v0, :cond_3

    .line 114
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    const-string v1, "Missing %s"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_3
    return-void
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 283
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 285
    if-eqz p1, :cond_0

    move v0, v1

    .line 288
    :goto_0
    invoke-virtual {v4, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 292
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    const-string v4, "%s is enabled: %b"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    return-void

    :cond_0
    move v0, v2

    .line 285
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->r()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/rti/common/util/PackageInfoUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    sget-object v0, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    const-string v1, "FBNS Service not found"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :goto_0
    return-void

    .line 237
    :cond_0
    sget-object v1, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    const-string v2, "Stopping running FBNS service"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "Orca.STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    new-instance v3, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v3, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v3, v1, v2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v1

    .line 244
    if-nez v1, :cond_1

    .line 245
    sget-object v1, Lcom/facebook/rti/push/client/FbnsClient;->a:Ljava/lang/String;

    const-string v2, "Missing %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_1
    invoke-static {p0, v4, v0}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 213
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.fbns.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->r()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 217
    const-string v2, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    new-instance v2, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v2, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v2, v0, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 221
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 180
    if-nez p2, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 183
    :goto_0
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->r()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, -0x1

    const-string v6, "Orca.START"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/rti/push/client/FbnsClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 191
    return-void

    :cond_0
    move-object v4, p2

    goto :goto_0
.end method
