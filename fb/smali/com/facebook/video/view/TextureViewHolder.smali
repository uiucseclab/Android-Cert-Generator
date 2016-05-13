.class public Lcom/facebook/video/view/TextureViewHolder;
.super Ljava/lang/Object;
.source "onPageStarted %s"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Lcom/facebook/video/engine/texview/TextureAttachManager;

.field private c:Z

.field public d:Landroid/view/TextureView;

.field private e:I

.field public f:Lcom/facebook/video/view/TextureViewHolder$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/video/engine/texview/TextureAttachManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/facebook/video/view/TextureViewHolder$1;

    invoke-direct {v0, p0}, Lcom/facebook/video/view/TextureViewHolder$1;-><init>(Lcom/facebook/video/view/TextureViewHolder;)V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->f:Lcom/facebook/video/view/TextureViewHolder$1;

    .line 67
    new-instance v0, Lcom/facebook/video/view/TextureViewHolder$Container;

    invoke-direct {v0, p0, p1}, Lcom/facebook/video/view/TextureViewHolder$Container;-><init>(Lcom/facebook/video/view/TextureViewHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->a:Landroid/widget/FrameLayout;

    .line 68
    iput-object p2, p0, Lcom/facebook/video/view/TextureViewHolder;->b:Lcom/facebook/video/engine/texview/TextureAttachManager;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/video/view/TextureViewHolder;->c:Z

    .line 72
    iput v1, p0, Lcom/facebook/video/view/TextureViewHolder;->e:I

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/facebook/video/view/TextureViewHolder;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/facebook/video/view/TextureViewHolder;->c:Z

    return p1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/video/view/TextureViewHolder;->d()V

    .line 103
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/video/view/TextureViewHolder;->e()V

    .line 83
    iget v0, p0, Lcom/facebook/video/view/TextureViewHolder;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/video/view/TextureViewHolder;->e:I

    .line 84
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/video/view/TextureViewHolder;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/video/view/TextureViewHolder;->e:I

    .line 89
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/video/view/TextureViewHolder;->e:I

    if-gtz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/facebook/video/view/TextureViewHolder;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewHolder;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/video/view/TextureViewHolder;->d:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 191
    :cond_0
    return-void
.end method
