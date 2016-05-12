.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;
.super Ljava/lang/Object;
.source "rti.mqtt.registrations"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:Z

.field public final h:I


# direct methods
.method public constructor <init>(IZZZI)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->a:I

    .line 76
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->b:Z

    .line 77
    iput-boolean p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->c:Z

    .line 78
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->d:Z

    .line 79
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->e:Z

    .line 80
    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->f:I

    .line 81
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->g:Z

    .line 82
    iput p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->h:I

    .line 83
    return-void
.end method

.method public constructor <init>(IZZZZIZI)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->a:I

    .line 60
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->b:Z

    .line 61
    iput-boolean p3, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->c:Z

    .line 62
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->d:Z

    .line 63
    iput-boolean p5, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->e:Z

    .line 64
    iput p6, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->f:I

    .line 65
    iput-boolean p7, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->g:Z

    .line 66
    iput p8, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->h:I

    .line 67
    return-void
.end method
