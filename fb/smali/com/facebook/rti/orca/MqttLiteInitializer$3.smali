.class Lcom/facebook/rti/orca/MqttLiteInitializer$3;
.super Ljava/lang/Object;
.source "switch_to_full_fb"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/orca/MqttLiteInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/rti/orca/MqttLiteInitializer;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$3;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$3;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$3;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v1, v1, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/device/yearclass/YearClass;->a(Landroid/content/Context;)I

    move-result v1

    .line 51
    iput v1, v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->q:I

    .line 169
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$3;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    invoke-virtual {v0}, Lcom/facebook/rti/orca/MqttLiteInitializer;->n()V

    .line 170
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$3;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    invoke-virtual {v0}, Lcom/facebook/rti/orca/MqttLiteInitializer;->m()V

    .line 171
    return-void
.end method
