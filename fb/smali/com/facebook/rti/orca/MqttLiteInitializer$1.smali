.class Lcom/facebook/rti/orca/MqttLiteInitializer$1;
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
    .line 77
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$1;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$1;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    invoke-virtual {v0}, Lcom/facebook/rti/orca/MqttLiteInitializer;->m()V

    .line 81
    return-void
.end method
