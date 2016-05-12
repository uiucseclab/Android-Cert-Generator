.class Lcom/samsung/milk/milkvideo/views/VideoInfoView$1;
.super Ljava/lang/Object;
.source "VideoInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setVideoInfo(Lcom/samsung/milk/milkvideo/models/Video;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

.field final synthetic val$video:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->isYoutube()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$1;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.youtube.com/watch?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_0
    return-void
.end method
