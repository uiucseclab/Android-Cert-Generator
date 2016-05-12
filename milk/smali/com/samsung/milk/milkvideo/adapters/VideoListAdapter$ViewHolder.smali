.class public Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public actionContainerView:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

.field public brandLogo:Landroid/widget/ImageView;

.field public dismissVideoText:Landroid/widget/TextView;

.field public duration:Landroid/widget/TextView;

.field public facepileLayout:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

.field public iconNoReposts:Landroid/widget/ImageView;

.field public repostCount:Landroid/widget/TextView;

.field public repostIcon:Landroid/widget/ImageView;

.field public repostInfoLayout:Landroid/view/View;

.field public starView:Landroid/widget/TextView;

.field public thumbnail:Landroid/widget/ImageView;

.field public timeSincePost:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f060134

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const v0, 0x7f0600d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->actionContainerView:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    .line 73
    const v0, 0x7f06013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->facepileLayout:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    .line 74
    const v0, 0x7f06013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->iconNoReposts:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f060139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostCount:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f060106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->starView:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f06007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f06007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->brandLogo:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f060135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f060137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostInfoLayout:Landroid/view/View;

    .line 82
    const v0, 0x7f060136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->timeSincePost:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f060133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->dismissVideoText:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f060138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->repostIcon:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/VideoListAdapter$ViewHolder;->brandLogo:Landroid/widget/ImageView;

    .line 86
    return-void
.end method
