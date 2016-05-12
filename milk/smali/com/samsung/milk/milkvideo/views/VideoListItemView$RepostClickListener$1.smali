.class Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener$1;
.super Ljava/lang/Object;
.source "VideoListItemView.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->currentlyReposting:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->access$302(Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;Z)Z

    .line 254
    return-void
.end method

.method public reposted(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->currentlyReposting:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->access$302(Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;Z)Z

    .line 244
    return-void
.end method

.method public unreposted(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener$1;->this$1:Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->currentlyReposting:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->access$302(Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;Z)Z

    .line 249
    return-void
.end method
