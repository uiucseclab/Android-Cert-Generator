.class Lcom/samsung/milk/milkvideo/views/VideoListItemView$3;
.super Ljava/lang/Object;
.source "VideoListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoListItemView;->setupElementListeners()V
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
    .line 90
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$3;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$3;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$3;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$3;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$3;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method
