.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;
.super Ljava/lang/Object;
.source "ActionContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/DismissActionsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
