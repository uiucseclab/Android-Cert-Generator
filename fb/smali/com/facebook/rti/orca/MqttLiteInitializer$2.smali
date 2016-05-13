.class Lcom/facebook/rti/orca/MqttLiteInitializer$2;
.super Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;
.source "switch_to_full_fb"


# instance fields
.field final synthetic a:Lcom/facebook/qe/api/QeAccessor;

.field final synthetic b:Lcom/facebook/rti/orca/MqttLiteInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/rti/orca/MqttLiteInitializer;Lcom/facebook/qe/api/QeAccessor;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$2;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iput-object p2, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$2;->a:Lcom/facebook/qe/api/QeAccessor;

    invoke-direct {p0}, Lcom/facebook/rti/push/client/FbnsClientWrapper$Callbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$2;->a:Lcom/facebook/qe/api/QeAccessor;

    sget-object v1, Lcom/facebook/qe/api/Liveness;->Live:Lcom/facebook/qe/api/Liveness;

    sget v2, Lcom/facebook/rti/orca/abtest/ExperimentsForFbnsSharedExperimentModule;->a:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/qe/api/QeAccessor;->a(Lcom/facebook/qe/api/Liveness;I)V

    .line 120
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 124
    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$2;->a:Lcom/facebook/qe/api/QeAccessor;

    sget-object v2, Lcom/facebook/qe/api/Liveness;->Live:Lcom/facebook/qe/api/Liveness;

    sget-object v3, Lcom/facebook/qe/api/ExposureLogging;->Off:Lcom/facebook/qe/api/ExposureLogging;

    sget v4, Lcom/facebook/rti/orca/abtest/ExperimentsForFbnsSharedExperimentModule;->a:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/qe/api/QeAccessor;->a(Lcom/facebook/qe/api/Liveness;Lcom/facebook/qe/api/ExposureLogging;II)I

    move-result v1

    .line 129
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 132
    :cond_1
    return v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$2;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$2;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    invoke-virtual {v0}, Lcom/facebook/rti/orca/MqttLiteInitializer;->l()V

    .line 143
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$2;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/orca/MqttLiteInitializer;->a(Z)V

    .line 144
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$2;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/rti/orca/MqttLiteInitializer;->a(Z)V

    .line 149
    return-void
.end method
