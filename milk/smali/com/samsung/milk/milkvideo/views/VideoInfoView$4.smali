.class Lcom/samsung/milk/milkvideo/views/VideoInfoView$4;
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
    .line 155
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$4;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$4;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionScrollView:Lcom/samsung/milk/milkvideo/views/LockableScrollView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)Lcom/samsung/milk/milkvideo/views/LockableScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$4;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    # invokes: Lcom/samsung/milk/milkvideo/views/VideoInfoView;->collapseVideoDescription()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->access$100(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$4;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    # invokes: Lcom/samsung/milk/milkvideo/views/VideoInfoView;->expandVideoDescription()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->access$200(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V

    goto :goto_0
.end method
