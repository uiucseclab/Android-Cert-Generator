.class public Lcom/samsung/milk/milkvideo/views/RainbowView;
.super Landroid/widget/FrameLayout;
.source "RainbowView.java"


# static fields
.field private static final DIAMETER:I = 0x1e0

.field private static final RADIUS:I = 0xf0


# instance fields
.field private brightener:Landroid/widget/ImageView;

.field private dropShadow:Landroid/view/View;

.field edgeBrighteningGradientBuilder:Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final isDisplayedOnEdge:Z

.field private final screenHeight:I

.field private sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;

.field private trackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDisplayedOnEdge"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean p2, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->isDisplayedOnEdge:Z

    .line 38
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->init()V

    .line 40
    invoke-static {p1}, Lcom/samsung/milk/milkvideo/utils/UiUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->screenHeight:I

    .line 41
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->brightener:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->brightener:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->edgeBrighteningGradientBuilder:Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;->build()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->brightener:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/RainbowView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/RainbowView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->trackingTouch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/milk/milkvideo/views/RainbowView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/RainbowView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->trackingTouch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/views/RainbowView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/RainbowView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->isDisplayedOnEdge:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/views/RainbowView;)Lcom/samsung/milk/milkvideo/views/SideBarView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/RainbowView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/views/RainbowView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/RainbowView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->dropShadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/views/RainbowView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/RainbowView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->brightener:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/milk/milkvideo/views/RainbowView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/RainbowView;

    .prologue
    .line 21
    iget v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->screenHeight:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030038

    invoke-static {v0, v1, p0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    const v0, 0x7f06009e

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/SideBarView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;

    .line 53
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;

    const v1, 0x7f060072

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/SideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->dropShadow:Landroid/view/View;

    .line 55
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->isDisplayedOnEdge:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;

    invoke-virtual {v0, v2}, Lcom/samsung/milk/milkvideo/views/SideBarView;->expand(Z)V

    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/SideBarView;->getSeekBar()Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    move-result-object v0

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setBackgroundResource(I)V

    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->dropShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->setupLayoutPortrait()V

    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->eventBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onPause(Lcom/samsung/milk/milkvideo/events/ActivityPauseEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ActivityPauseEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->isDisplayedOnEdge:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/milk/milkvideo/views/SideBarView;->retract(ZZ)V

    .line 127
    :cond_0
    return-void
.end method

.method public onShowRequest(Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;->show()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->setVisibility(I)V

    .line 122
    return-void

    .line 121
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setupLayoutPortrait()V
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/RainbowView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 68
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 69
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 70
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 72
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/RainbowView;->sideBar:Lcom/samsung/milk/milkvideo/views/SideBarView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/views/SideBarView;->getSeekBar()Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;

    move-result-object v3

    new-instance v4, Lcom/samsung/milk/milkvideo/views/RainbowView$1;

    invoke-direct {v4, p0}, Lcom/samsung/milk/milkvideo/views/RainbowView$1;-><init>(Lcom/samsung/milk/milkvideo/views/RainbowView;)V

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    return-void
.end method
