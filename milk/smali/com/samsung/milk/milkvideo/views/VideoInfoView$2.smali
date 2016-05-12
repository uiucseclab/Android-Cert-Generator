.class Lcom/samsung/milk/milkvideo/views/VideoInfoView$2;
.super Ljava/lang/Object;
.source "VideoInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoInfoButtonClickedEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$2;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setVisibility(I)V

    .line 145
    return-void
.end method
