.class Lcom/facebook/video/view/TextureViewHolder$Container;
.super Landroid/widget/FrameLayout;
.source "onPageStarted %s"


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewHolder;


# direct methods
.method public constructor <init>(Lcom/facebook/video/view/TextureViewHolder;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewHolder$Container;->a:Lcom/facebook/video/view/TextureViewHolder;

    .line 121
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x7d2643b4

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 128
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewHolder$Container;->a:Lcom/facebook/video/view/TextureViewHolder;

    iget-object v1, v1, Lcom/facebook/video/view/TextureViewHolder;->b:Lcom/facebook/video/engine/texview/TextureAttachManager;

    iget-object v2, p0, Lcom/facebook/video/view/TextureViewHolder$Container;->a:Lcom/facebook/video/view/TextureViewHolder;

    iget-object v2, v2, Lcom/facebook/video/view/TextureViewHolder;->f:Lcom/facebook/video/view/TextureViewHolder$1;

    invoke-virtual {v1, v2}, Lcom/facebook/video/engine/texview/TextureAttachManager;->a(Lcom/facebook/video/view/TextureViewHolder$1;)V

    .line 129
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x5096a6f1

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x1f4f20b8

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/facebook/video/view/TextureViewHolder$Container;->a:Lcom/facebook/video/view/TextureViewHolder;

    iget-object v1, v1, Lcom/facebook/video/view/TextureViewHolder;->b:Lcom/facebook/video/engine/texview/TextureAttachManager;

    iget-object v2, p0, Lcom/facebook/video/view/TextureViewHolder$Container;->a:Lcom/facebook/video/view/TextureViewHolder;

    iget-object v2, v2, Lcom/facebook/video/view/TextureViewHolder;->f:Lcom/facebook/video/view/TextureViewHolder$1;

    invoke-virtual {v1, v2}, Lcom/facebook/video/engine/texview/TextureAttachManager;->b(Lcom/facebook/video/view/TextureViewHolder$1;)V

    .line 135
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 136
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x47687894

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
