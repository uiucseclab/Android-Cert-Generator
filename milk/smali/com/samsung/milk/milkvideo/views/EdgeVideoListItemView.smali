.class public Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;
.super Landroid/widget/RelativeLayout;
.source "EdgeVideoListItemView.java"


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public icon:Landroid/widget/ImageView;

.field public now:Landroid/widget/TextView;

.field public thumbnail:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03002f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->thumbnail:Landroid/widget/ImageView;

    .line 47
    const v1, 0x7f060079

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->icon:Landroid/widget/ImageView;

    .line 48
    const v1, 0x7f06007a

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->now:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->title:Landroid/widget/TextView;

    .line 50
    return-void
.end method


# virtual methods
.method public onVideoSelected(Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/VideoPlayRequestedEvent;->getRequestedVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->now:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;->now:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
