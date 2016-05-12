.class public Lcom/samsung/milk/milkvideo/views/VideoInfoView;
.super Landroid/widget/RelativeLayout;
.source "VideoInfoView.java"


# static fields
.field public static final YOUTUBE_VIDEO_LINK:Ljava/lang/String; = "http://www.youtube.com/watch?v="


# instance fields
.field private closeButton:Landroid/widget/ImageButton;

.field private descriptionDropDown:Landroid/widget/ImageButton;

.field private descriptionScrollView:Lcom/samsung/milk/milkvideo/views/LockableScrollView;

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private sourceText:Landroid/widget/TextView;

.field timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field videoDescription:Landroid/widget/TextView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private videoDuration:Landroid/widget/TextView;

.field private videoPosterImage:Landroid/widget/ImageView;

.field videoPresenter:Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private videoResolution:Landroid/widget/TextView;

.field private videoSourceText:Landroid/widget/TextView;

.field private videoTimeSinceCreation:Landroid/widget/TextView;

.field private videoTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)Lcom/samsung/milk/milkvideo/views/LockableScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionScrollView:Lcom/samsung/milk/milkvideo/views/LockableScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->collapseVideoDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->expandVideoDescription()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionDropDown:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private collapseVideoDescription()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionScrollView:Lcom/samsung/milk/milkvideo/views/LockableScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->setExpanded(Z)V

    .line 195
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 196
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionDropDown:Landroid/widget/ImageButton;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 198
    return-void
.end method

.method private expandVideoDescription()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionScrollView:Lcom/samsung/milk/milkvideo/views/LockableScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/LockableScrollView;->setExpanded(Z)V

    .line 188
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 189
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionDropDown:Landroid/widget/ImageButton;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 191
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030066

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    const v1, 0x7f060144

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->sourceText:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f06013d

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->closeButton:Landroid/widget/ImageButton;

    .line 125
    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoTitle:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f060135

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDuration:Landroid/widget/TextView;

    .line 127
    const v1, 0x7f060140

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoTimeSinceCreation:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f060141

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoResolution:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f060143

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    .line 130
    const v1, 0x7f06013e

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoPosterImage:Landroid/widget/ImageView;

    .line 131
    const v1, 0x7f060145

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoSourceText:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f060146

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionDropDown:Landroid/widget/ImageButton;

    .line 133
    const v1, 0x7f060142

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/views/LockableScrollView;

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionScrollView:Lcom/samsung/milk/milkvideo/views/LockableScrollView;

    .line 135
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setupListeners()V

    .line 137
    return-void
.end method

.method private setupListeners()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->closeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/samsung/milk/milkvideo/views/VideoInfoView$2;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView$2;-><init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v1, Lcom/samsung/milk/milkvideo/views/VideoInfoView$3;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView$3;-><init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    new-instance v0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$4;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView$4;-><init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V

    .line 166
    .local v0, "expandDescription":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionDropDown:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView$5;-><init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 184
    return-void
.end method


# virtual methods
.method public hideVideoInfo()V
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public redrawForOrientationChanged()V
    .locals 8

    .prologue
    .line 99
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoPosterImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .local v0, "avatarParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoPosterImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 107
    .local v1, "videoTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 108
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->descriptionDropDown:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 116
    return-void
.end method

.method public setVideoInfo(Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 4
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoPresenter:Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;->getDuration(Lcom/samsung/milk/milkvideo/models/Video;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoTimeSinceCreation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoPresenter:Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;->getTimeSinceCreation(Lcom/samsung/milk/milkvideo/models/Video;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoResolution:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoPresenter:Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/presenters/VideoPresenter;->getResolution(Lcom/samsung/milk/milkvideo/models/Video;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "youtube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoSourceText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getDisplaySourceProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoSourceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->sourceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoSourceText:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/VideoInfoView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/milk/milkvideo/views/VideoInfoView$1;-><init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getOriginalPosterImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoPosterImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 87
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->videoSourceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->sourceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showVideoInfo()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->collapseVideoDescription()V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setVisibility(I)V

    .line 92
    return-void
.end method
