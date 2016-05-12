.class Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;
.super Ljava/lang/Object;
.source "VideoListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/VideoListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepostClickListener"
.end annotation


# instance fields
.field private currentlyReposting:Z

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoListItemView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/VideoListItemView$1;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;
    .param p1, "x1"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->currentlyReposting:Z

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->currentlyReposting:Z

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->currentlyReposting:Z

    .line 240
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    iget-object v1, v0, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->repostService:Lcom/samsung/milk/milkvideo/services/RepostService;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/VideoListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/VideoListItemView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v2}, Lcom/samsung/milk/milkvideo/views/VideoListItemView;->access$000(Lcom/samsung/milk/milkvideo/views/VideoListItemView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener$1;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener$1;-><init>(Lcom/samsung/milk/milkvideo/views/VideoListItemView$RepostClickListener;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/milk/milkvideo/services/RepostService;->dispatchRepostRequest(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V

    goto :goto_0
.end method
