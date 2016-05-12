.class public Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;
.super Ljava/lang/Object;
.source "MessageNotificationEvent.java"


# instance fields
.field private message:I

.field private type:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->type:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    .line 13
    sget-object v0, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->SUCCESS:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    if-ne p1, v0, :cond_0

    .line 14
    const v0, 0x7f0800bb

    iput v0, p0, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->message:I

    .line 20
    :goto_0
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->TIMEOUT_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    if-ne p1, v0, :cond_1

    .line 16
    const v0, 0x7f0800b9

    iput v0, p0, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->message:I

    goto :goto_0

    .line 18
    :cond_1
    const v0, 0x7f0800ba

    iput v0, p0, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->message:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;I)V
    .locals 0
    .param p1, "type"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;
    .param p2, "message"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p2, p0, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->message:I

    .line 24
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->type:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    .line 25
    return-void
.end method


# virtual methods
.method public getMessage()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->message:I

    return v0
.end method

.method public getType()Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->type:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    return-object v0
.end method
