.class public Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;
.super Ljava/lang/Object;
.source "rti.mqtt.retry"


# instance fields
.field public final a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

.field public final b:Z

.field public final c:I

.field public d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 50
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->b:Z

    .line 51
    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    .line 52
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->e:Z

    .line 53
    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->d:I

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 58
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->b:Z

    .line 59
    iput p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    .line 60
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->e:Z

    .line 61
    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->d:I

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;ZIZI)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->a:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 42
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->b:Z

    .line 43
    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->c:I

    .line 44
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->e:Z

    .line 45
    iput p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->d:I

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->e:Z

    .line 70
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->e:Z

    return v0
.end method
