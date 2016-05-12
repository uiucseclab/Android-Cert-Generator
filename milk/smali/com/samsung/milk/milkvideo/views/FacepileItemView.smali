.class public Lcom/samsung/milk/milkvideo/views/FacepileItemView;
.super Landroid/widget/FrameLayout;
.source "FacepileItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;
    }
.end annotation


# instance fields
.field private final expandListener:Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final reposter:Lcom/samsung/milk/milkvideo/models/FacepileReposter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/models/FacepileReposter;Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reposter"    # Lcom/samsung/milk/milkvideo/models/FacepileReposter;
    .param p3, "expandListener"    # Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->reposter:Lcom/samsung/milk/milkvideo/models/FacepileReposter;

    .line 23
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->expandListener:Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;

    .line 24
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->init()V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/FacepileItemView;)Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/FacepileItemView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->expandListener:Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/views/FacepileItemView;)Lcom/samsung/milk/milkvideo/models/FacepileReposter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/FacepileItemView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->reposter:Lcom/samsung/milk/milkvideo/models/FacepileReposter;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030059

    invoke-static {v1, v2, p0}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 30
    const v1, 0x7f060116

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .local v0, "avatar":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->reposter:Lcom/samsung/milk/milkvideo/models/FacepileReposter;

    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v1, Lcom/samsung/milk/milkvideo/views/FacepileItemView$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/FacepileItemView$1;-><init>(Lcom/samsung/milk/milkvideo/views/FacepileItemView;)V

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->reposter:Lcom/samsung/milk/milkvideo/models/FacepileReposter;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f02010a

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
