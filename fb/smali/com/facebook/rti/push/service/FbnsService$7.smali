.class Lcom/facebook/rti/push/service/FbnsService$7;
.super Ljava/lang/Object;
.source "system_server_anr"

# interfaces
.implements Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;


# instance fields
.field final synthetic a:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$7;->a:Lcom/facebook/rti/push/service/FbnsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 537
    const-string v0, "FbnsService"

    const-string v1, "Publish successful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$7;->a:Lcom/facebook/rti/push/service/FbnsService;

    iget-object v0, v0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->UNREGISTER_REQUEST_SENT_SUCCESS:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 545
    const-string v0, "FbnsService"

    const-string v1, "Publish failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$7;->a:Lcom/facebook/rti/push/service/FbnsService;

    iget-object v0, v0, Lcom/facebook/rti/push/service/FbnsService;->t:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->UNREGISTER_REQUEST_SENT_FAIL:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->a(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 549
    return-void
.end method
