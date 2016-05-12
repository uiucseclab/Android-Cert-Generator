.class public Lcom/facebook/rti/push/service/FbnsService;
.super Lcom/facebook/rti/mqtt/manager/MqttPushService;
.source "system_server_anr"


# instance fields
.field r:Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field public s:Lcom/facebook/rti/push/service/RegistrationState;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field public t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

.field private u:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

.field private v:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

.field private w:Lcom/facebook/rti/push/service/FbnsServiceIdManager;

.field private x:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;-><init>()V

    .line 54
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.fbns.intent.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v1, "receive_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    if-eqz p2, :cond_0

    .line 657
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    :cond_0
    return-object v0
.end method

.method private a(Lcom/facebook/rti/push/service/FbnsRegisterResponse;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 569
    iget-object v0, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "FbnsService"

    const-string v1, "packageName is empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_SERVER_RESPOND_WITH_INVALID_PACKAGE_NAME:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v4}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 596
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    const-string v0, "FbnsService"

    const-string v1, "token is empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_SERVER_RESPOND_WITH_INVALID_TOKEN:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v4}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    iget-object v1, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/service/RegistrationState;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/push/service/FbnsService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->RESPONSE_RECEIVED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v4}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_2
    const-string v0, "FbnsService"

    const-string v1, "Failed to update cache and send registration response"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_CACHE_UPDATE:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/rti/push/service/RegistrationState;Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;Lcom/facebook/rti/push/service/FbnsRegistrarRetry;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/push/service/FbnsServiceIdManager;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    .line 205
    iput-object p2, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    .line 206
    iput-object p3, p0, Lcom/facebook/rti/push/service/FbnsService;->u:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    .line 207
    new-instance v0, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;

    invoke-direct {v0}, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->r:Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;

    .line 208
    iput-object p4, p0, Lcom/facebook/rti/push/service/FbnsService;->v:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 209
    iput-object p5, p0, Lcom/facebook/rti/push/service/FbnsService;->w:Lcom/facebook/rti/push/service/FbnsServiceIdManager;

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 215
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 216
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "deviceidle"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 217
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->a(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->x:Landroid/os/IDeviceIdleController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string v1, "FbnsService"

    const-string v2, "Failed to get IDeviceIdleController"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 332
    invoke-static {p1}, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a(Ljava/lang/String;)Lcom/facebook/rti/push/service/FbnsRegisterResponse;

    move-result-object v0

    .line 333
    iget-object v1, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->a(Lcom/facebook/rti/push/service/FbnsRegisterResponse;)V

    .line 341
    :goto_0
    return-void

    .line 336
    .line 599
    :cond_0
    iget-object v3, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    const-string v3, "FbnsService"

    const-string v4, "packageName is empty"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    .line 337
    :goto_1
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_SERVER_RESPOND_WITH_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    iget-object v0, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_1
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    iget-object v4, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/push/service/RegistrationState;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 434
    const-string v0, "FbnsService"

    const-string v1, "broadcastRegistrationSuccess %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->u:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->a(Ljava/lang/String;)V

    .line 436
    const-string v0, "registered"

    invoke-static {p1, v0, p2}, Lcom/facebook/rti/push/service/FbnsService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 440
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->b(Landroid/content/Intent;)V

    .line 441
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->v:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->v:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_0

    .line 389
    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsService;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/FbnsService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/rti/mqtt/common/config/MqttPermissionUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->c(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->v:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 344
    invoke-static {p1}, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->a(Ljava/lang/String;)Lcom/facebook/rti/push/service/FbnsNotificationMessage;

    move-result-object v3

    .line 345
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->r:Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;

    invoke-virtual {v0, v3}, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->b(Lcom/facebook/rti/push/service/FbnsNotificationMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "FbnsService"

    const-string v1, "Duplicated notif: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DUPLICATED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    iget-object v2, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->f:Ljava/lang/String;

    iget-object v3, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->g:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/rti/push/service/FbnsService;->n:J

    iget-boolean v6, p0, Lcom/facebook/rti/push/service/FbnsService;->o:Z

    iget-wide v7, p0, Lcom/facebook/rti/push/service/FbnsService;->p:J

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 377
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->r:Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;

    invoke-virtual {v0, v3}, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->a(Lcom/facebook/rti/push/service/FbnsNotificationMessage;)V

    .line 359
    iget-object v0, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->c:Ljava/lang/String;

    const-string v1, "message"

    iget-object v2, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 363
    iget-object v1, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    const-string v1, "token"

    iget-object v2, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    :cond_1
    iget-object v1, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    const-string v1, "collapse_key"

    iget-object v2, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->b(Landroid/content/Intent;)V

    .line 370
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->NOTIFICATION_RECEIVED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    iget-object v2, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->f:Ljava/lang/String;

    iget-object v3, v3, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->g:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/rti/push/service/FbnsService;->n:J

    iget-boolean v6, p0, Lcom/facebook/rti/push/service/FbnsService;->o:Z

    iget-wide v7, p0, Lcom/facebook/rti/push/service/FbnsService;->p:J

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;Ljava/lang/String;Ljava/lang/String;JZJ)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 445
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    :cond_0
    const-string v0, "FbnsService"

    const-string v1, "Cancel requestNewToken because packageName or appId is empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->u:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rti/push/service/RegistrationState;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 452
    new-instance v0, Lcom/facebook/rti/push/service/FbnsRegisterRequest;

    invoke-direct {v0, p1, p2}, Lcom/facebook/rti/push/service/FbnsRegisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsRegisterRequest;->a()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 464
    const-string v2, "FbnsService"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    new-instance v2, Lcom/facebook/rti/push/service/FbnsService$6;

    invoke-direct {v2, p0}, Lcom/facebook/rti/push/service/FbnsService$6;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 485
    :try_start_1
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    const-string v4, "/fbns_reg_req"

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->b(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I
    :try_end_1
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 493
    :goto_1
    if-ne v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_MQTT_NOT_CONNECTED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    const-string v1, "FbnsService"

    const-string v2, "Failed to serialize register message"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_UNKNOWN_CLIENT_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method private c(Landroid/content/Intent;)V
    .locals 7
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 399
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->u:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    invoke-virtual {v2, v0}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->a(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    const-string v2, "FbnsService"

    const-string v3, "Service has to start before register"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v3, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_SERVICE_NOT_STARTED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v2, v3, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 410
    :cond_0
    const-string v2, "FbnsService"

    const-string v3, "Register from %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v3, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->REGISTER:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v2, v3, v0}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v2, v0}, Lcom/facebook/rti/push/service/RegistrationState;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    invoke-direct {p0, v0, v2}, Lcom/facebook/rti/push/service/FbnsService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->CACHE_HIT:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/push/service/FbnsService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 668
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->x:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 673
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->x:Landroid/os/IDeviceIdleController;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    const-string v5, "fbns"

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/os/IDeviceIdleController;->a(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    const-string v1, "FbnsService"

    const-string v2, "Failed to add %s to temp whitelist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 523
    new-instance v0, Lcom/facebook/rti/push/service/FbnsUnregisterRequest;

    invoke-direct {v0, p1, p2}, Lcom/facebook/rti/push/service/FbnsUnregisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsUnregisterRequest;->a()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 534
    new-instance v2, Lcom/facebook/rti/push/service/FbnsService$7;

    invoke-direct {v2, p0}, Lcom/facebook/rti/push/service/FbnsService$7;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 553
    :try_start_1
    iget-object v3, p0, Lcom/facebook/rti/push/service/FbnsService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    const-string v4, "/fbns_unreg_req"

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->b(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v5, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;)I
    :try_end_1
    .catch Lcom/facebook/rti/mqtt/protocol/MqttException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 561
    :goto_0
    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->UNREGISTER_FAILURE_MQTT_NOT_CONNECTED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 566
    :cond_0
    :goto_1
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    const-string v1, "FbnsService"

    const-string v2, "Failed to serialize register message"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->FAILURE_UNKNOWN_CLIENT_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private d(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 428
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/push/service/FbnsService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private e(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 501
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v2, v0}, Lcom/facebook/rti/push/service/RegistrationState;->a(Ljava/lang/String;)V

    .line 505
    const-string v2, "unregistered"

    invoke-static {v0, v2, v4}, Lcom/facebook/rti/push/service/FbnsService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 509
    invoke-direct {p0, v2}, Lcom/facebook/rti/push/service/FbnsService;->b(Landroid/content/Intent;)V

    .line 510
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v3, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->UNREGISTER_CALLED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 514
    if-eqz v1, :cond_0

    .line 515
    invoke-direct {p0, v1, v0}, Lcom/facebook/rti/push/service/FbnsService;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_0
    return-void
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/facebook/rti/push/service/FbnsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {p0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "FbnsService"

    const-string v1, "FBNS_STOPPED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->v:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.rti.intent.ACTION_FBNS_STOPPED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->c(Landroid/content/Intent;)V

    .line 294
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$DisconnectDetailReason;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 243
    const-string v0, "com.facebook.rti.fbns.service.intent.KEEPALIVE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->SVC_KEEPALIVE:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v0, "com.facebook.rti.mqtt.ACTION_MQTT_CONFIG_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->l:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->a()V

    .line 248
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->PERSISTENT_KICK:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->v:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_3
    const-string v0, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->FBNS_REGISTER:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/FbnsService;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 261
    :cond_4
    const-string v0, "com.facebook.rti.fbns.intent.REGISTER_RETRY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->FBNS_REGISTER_RETRY:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/FbnsService;->d(Landroid/content/Intent;)V

    goto :goto_0

    .line 264
    :cond_5
    const-string v0, "com.facebook.rti.fbns.intent.UNREGISTER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->FBNS_UNREGISTER:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/FbnsService;->e(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 273
    invoke-super {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 274
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "FbnsService"

    const-string v1, "FBNS_STARTED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->v:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.rti.intent.ACTION_FBNS_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->c(Landroid/content/Intent;)V

    .line 280
    :cond_0
    return-void
.end method

.method protected final a(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V
    .locals 5
    .param p1    # Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 627
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->d()V

    .line 630
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->b()Ljava/util/List;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v1}, Lcom/facebook/rti/push/service/RegistrationState;->a()V

    .line 632
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->AUTHFAIL_AUTO_REGISTER:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 638
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    .line 639
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    const-string v3, "pkg_name"

    iget-object v4, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v3, "appid"

    iget-object v0, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    invoke-direct {p0, v2}, Lcom/facebook/rti/push/service/FbnsService;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;[BJ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 299
    if-nez p2, :cond_0

    .line 300
    const-string v0, "FbnsService"

    const-string v1, "Wrong publish payload: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v0, "FbnsService"

    const-string v1, "topic: %s payload: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :try_start_0
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v1, "/fbns_msg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    const-string v1, "FbnsService"

    const-string v2, "Wrong json payload: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->JSON_PARSE_ERROR:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    :try_start_1
    const-string v1, "/fbns_reg_resp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    invoke-direct {p0, v0}, Lcom/facebook/rti/push/service/FbnsService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    const-string v0, "FbnsService"

    const-string v1, "Wrong topic: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;->UNEXPECTED_TOPIC:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$ServiceEvent;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "FBNS"

    return-object v0
.end method

.method protected f()V
    .locals 27

    .prologue
    .line 110
    new-instance v8, Lcom/facebook/rti/push/service/FbnsService$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/facebook/rti/push/service/FbnsService$1;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 119
    new-instance v12, Lcom/facebook/rti/push/service/FbnsService$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/facebook/rti/push/service/FbnsService$2;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 127
    new-instance v9, Lcom/facebook/rti/push/service/FbnsService$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/facebook/rti/push/service/FbnsService$3;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 134
    new-instance v10, Lcom/facebook/rti/push/service/FbnsService$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/facebook/rti/push/service/FbnsService$4;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 141
    new-instance v7, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    .line 144
    sget-object v1, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v2, "rti.mqtt.shared_ids"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharingRequester;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7, v1}, Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharingRequester;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Landroid/content/SharedPreferences;)V

    .line 151
    new-instance v3, Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;

    invoke-direct {v3, v2, v1}, Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;-><init>(Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharingRequester;Landroid/content/SharedPreferences;)V

    .line 154
    new-instance v2, Lcom/facebook/rti/push/service/FbnsServiceIdManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;-><init>(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/push/service/idsharing/DeviceIdAndSecretSharer;)V

    .line 156
    new-instance v6, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/facebook/rti/push/service/FbnsConnectionConfigManager;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v3, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/facebook/rti/push/service/MqttDeviceAuthCredentials;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    new-instance v15, Lcom/facebook/rti/mqtt/protocol/serialization/JsonPayloadEncoder;

    invoke-direct {v15}, Lcom/facebook/rti/mqtt/protocol/serialization/JsonPayloadEncoder;-><init>()V

    new-instance v16, Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;

    invoke-direct/range {v16 .. v16}, Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;-><init>()V

    new-instance v19, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;-><init>(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v22, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v23, Lcom/facebook/rti/common/fbtrace/EmptyFbTraceLogger;

    invoke-direct/range {v23 .. v23}, Lcom/facebook/rti/common/fbtrace/EmptyFbTraceLogger;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object v4, v2

    move-object v11, v9

    move-object v13, v9

    move-object v14, v9

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    invoke-static/range {v1 .. v26}, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->a(Lcom/facebook/rti/push/service/FbnsService;Lcom/facebook/rti/mqtt/manager/MqttIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/push/service/FbnsServiceIdManager;Lcom/facebook/rti/mqtt/credentials/MqttCredentials;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/protocol/serialization/MqttPayloadCompressionUtil;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/common/util/NonInjectProvider;ZLandroid/os/Handler;Lcom/facebook/rti/common/fbtrace/FbTraceLogger;Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;Ljava/util/concurrent/atomic/AtomicReference;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;)V

    .line 185
    return-void
.end method

.method protected final g()V
    .locals 6

    .prologue
    .line 189
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->g()V

    .line 190
    sget-object v1, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->a:Lcom/facebook/rti/push/service/RegistrationState;

    sget-object v2, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->c:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v3, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->b:Lcom/facebook/rti/push/service/FbnsRegistrarRetry;

    sget-object v4, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->d:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    sget-object v5, Lcom/facebook/rti/push/service/FbnsServiceBootstrap;->e:Lcom/facebook/rti/push/service/FbnsServiceIdManager;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/push/service/FbnsService;->a(Lcom/facebook/rti/push/service/RegistrationState;Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;Lcom/facebook/rti/push/service/FbnsRegistrarRetry;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/push/service/FbnsServiceIdManager;)V

    .line 196
    return-void
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->h()V

    .line 227
    new-instance v0, Lcom/facebook/rti/push/service/FbnsService$5;

    invoke-direct {v0, p0}, Lcom/facebook/rti/push/service/FbnsService$5;-><init>(Lcom/facebook/rti/push/service/FbnsService;)V

    .line 234
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->c:Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/manager/MqttConnectionManager;->a(Ljava/util/Collection;)V

    .line 235
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->w:Lcom/facebook/rti/push/service/FbnsServiceIdManager;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->w:Lcom/facebook/rti/push/service/FbnsServiceIdManager;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/FbnsServiceIdManager;->f()V

    .line 238
    :cond_0
    return-void
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected final o()V
    .locals 5

    .prologue
    .line 609
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v0}, Lcom/facebook/rti/push/service/RegistrationState;->b()Ljava/util/List;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->s:Lcom/facebook/rti/push/service/RegistrationState;

    invoke-virtual {v1}, Lcom/facebook/rti/push/service/RegistrationState;->a()V

    .line 612
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->CREDENTIALS_UPDATED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 615
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;->CREDENTIALS_UPDATED:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;

    invoke-virtual {p0, v1}, Lcom/facebook/rti/push/service/FbnsService;->a(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$ConnectTriggerReason;)V

    .line 617
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    .line 618
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.facebook.rti.fbns.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    const-string v3, "pkg_name"

    iget-object v4, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v3, "appid"

    iget-object v0, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-direct {p0, v2}, Lcom/facebook/rti/push/service/FbnsService;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 623
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method
