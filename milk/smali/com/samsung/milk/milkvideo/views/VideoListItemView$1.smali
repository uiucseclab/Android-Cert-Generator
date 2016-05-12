.class Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;
.super Ljava/lang/Object;
.source "VideoListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 64
    const-string v0, "---------------------------------------------------"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/milk/milkvideo/utils/Constants;->CLICK_START:J

    .line 66
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/milk/milkvideo/utils/Constants;->CLICK_START:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms - Video Clicked - EmbedCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/RefreshVideoListItemEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/RefreshVideoListItemEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
