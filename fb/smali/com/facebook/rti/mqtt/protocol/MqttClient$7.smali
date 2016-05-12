.class Lcom/facebook/rti/mqtt/protocol/MqttClient$7;
.super Ljava/lang/Object;
.source "s_svc_ms"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;->c:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iput p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;->a:I

    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;->c:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;->a:I

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->b(ILjava/lang/Object;)V

    .line 1372
    return-void
.end method
