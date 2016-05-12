.class public Lcom/samsung/milk/milkvideo/views/NuxView;
.super Landroid/widget/RelativeLayout;
.source "NuxView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/NuxView$1;,
        Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;,
        Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;
    }
.end annotation


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private nuxDots:Landroid/widget/ImageView;

.field private nuxPagerAdapter:Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;

.field private nuxPages:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/NuxView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/NuxView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/NuxView;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/views/NuxView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/NuxView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxDots:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/NuxView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03005b

    invoke-static {v0, v1, p0}, Lcom/samsung/milk/milkvideo/views/NuxView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f060119

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/NuxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxPages:Landroid/support/v4/view/ViewPager;

    .line 44
    const v0, 0x7f06011a

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/NuxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxDots:Landroid/widget/ImageView;

    .line 46
    new-instance v0, Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;

    invoke-direct {v0, p0, v2}, Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;-><init>(Lcom/samsung/milk/milkvideo/views/NuxView;Lcom/samsung/milk/milkvideo/views/NuxView$1;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxPagerAdapter:Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;

    .line 47
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxPages:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxPagerAdapter:Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxPages:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;-><init>(Lcom/samsung/milk/milkvideo/views/NuxView;Lcom/samsung/milk/milkvideo/views/NuxView$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getNuxPage(I)Landroid/view/View;
    .locals 2
    .param p1, "pageNumber"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxPagerAdapter:Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/NuxView;->nuxPages:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/milk/milkvideo/views/NuxView$NuxPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
