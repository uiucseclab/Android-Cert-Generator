.class public abstract Lcom/samsung/milk/milkvideo/validations/ValidationRule;
.super Ljava/lang/Object;
.source "ValidationRule.java"


# instance fields
.field private final eventBus:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "eventBus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/validations/ValidationRule;->eventBus:Lcom/squareup/otto/Bus;

    .line 13
    return-void
.end method


# virtual methods
.method public showErrorPane(I)V
    .locals 3
    .param p1, "message"    # I

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/validations/ValidationRule;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-direct {v1, v2, p1}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public abstract validate(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
.end method
