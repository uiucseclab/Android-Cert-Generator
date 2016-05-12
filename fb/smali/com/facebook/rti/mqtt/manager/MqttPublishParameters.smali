.class public Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;
.super Ljava/lang/Object;
.source "optsvc being shut down"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

.field public final d:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

.field public final e:I

.field public final f:J

.field public final g:Lcom/facebook/rti/mqtt/manager/MqttOperation;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;IJLcom/facebook/rti/mqtt/manager/MqttOperation;)V
    .locals 0
    .param p4    # Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->b:[B

    .line 32
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->c:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 33
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->d:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

    .line 34
    iput p5, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->e:I

    .line 35
    iput-wide p6, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->f:J

    .line 36
    iput-object p8, p0, Lcom/facebook/rti/mqtt/manager/MqttPublishParameters;->g:Lcom/facebook/rti/mqtt/manager/MqttOperation;

    .line 37
    return-void
.end method
