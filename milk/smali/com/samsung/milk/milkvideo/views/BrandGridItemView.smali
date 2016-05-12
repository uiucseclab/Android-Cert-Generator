.class public Lcom/samsung/milk/milkvideo/views/BrandGridItemView;
.super Landroid/widget/LinearLayout;
.source "BrandGridItemView.java"


# instance fields
.field private icon:Landroid/widget/ImageButton;

.field private volatile user:Lcom/samsung/milk/milkvideo/models/SelectableUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->init()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)Lcom/samsung/milk/milkvideo/models/SelectableUser;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->user:Lcom/samsung/milk/milkvideo/models/SelectableUser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030055

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    const v1, 0x7f060079

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->icon:Landroid/widget/ImageButton;

    .line 37
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->setupListeners()V

    .line 38
    return-void
.end method

.method private setupListeners()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;-><init>(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public setUser(Lcom/samsung/milk/milkvideo/models/SelectableUser;)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/SelectableUser;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->user:Lcom/samsung/milk/milkvideo/models/SelectableUser;

    .line 57
    return-void
.end method
