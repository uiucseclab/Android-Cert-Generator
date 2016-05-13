.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;
.super Ljava/lang/Object;
.source "rti.mqtt.mqtt_config"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->a:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->b:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->c:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->d:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->e:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->c:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->d:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->e:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{clientIdentifier=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', willTopic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', willMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
