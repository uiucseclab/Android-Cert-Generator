.class Lcom/samsung/milk/milkvideo/views/FacepileLayout$1;
.super Ljava/lang/Object;
.source "FacepileLayout.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/FacepileLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/FacepileLayout;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$1;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$1;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$1;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->expand()V

    .line 62
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$1;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendFacePileClickedEvent()V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
