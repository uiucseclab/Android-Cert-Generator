.class public Lcom/facebook/video/view/TextureViewHolder$1;
.super Ljava/lang/Object;
.source "onPageStarted %s"


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewHolder;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewHolder;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewHolder$1;->a:Lcom/facebook/video/view/TextureViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder$1;->a:Lcom/facebook/video/view/TextureViewHolder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewHolder;->a(Lcom/facebook/video/view/TextureViewHolder;Z)Z

    .line 198
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder$1;->a:Lcom/facebook/video/view/TextureViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/video/view/TextureViewHolder;->a(Lcom/facebook/video/view/TextureViewHolder;Z)Z

    .line 203
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder$1;->a:Lcom/facebook/video/view/TextureViewHolder;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder$1;->a:Lcom/facebook/video/view/TextureViewHolder;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewHolder;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewHolder$1;->a:Lcom/facebook/video/view/TextureViewHolder;

    iget-object v1, v1, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 207
    :cond_0
    return-void
.end method
