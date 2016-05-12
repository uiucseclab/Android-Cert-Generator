.class public Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;
.super Landroid/widget/LinearLayout;
.source "MyProfileVideoTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$3;,
        Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;,
        Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
    }
.end annotation


# instance fields
.field private currentTab:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

.field private listener:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;

.field private repostsTab:Landroid/widget/TextView;

.field private starredTab:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;)Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->currentTab:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;)Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->listener:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const v0, 0x7f03005a

    invoke-static {p1, v0, p0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    const v0, 0x7f060117

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->repostsTab:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f060118

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->starredTab:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->repostsTab:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$1;-><init>(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->starredTab:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$2;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$2;-><init>(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method private selectTab(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tab"    # Landroid/widget/TextView;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    return-void
.end method

.method private unselectTab(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tab"    # Landroid/widget/TextView;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public getCurrentTab()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->currentTab:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    return-object v0
.end method

.method public performClick(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$3;->$SwitchMap$com$samsung$milk$milkvideo$views$MyProfileVideoTabs$Tab:[I

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->repostsTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->starredTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$3;->$SwitchMap$com$samsung$milk$milkvideo$views$MyProfileVideoTabs$Tab:[I

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 36
    :pswitch_0
    sget-object v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->currentTab:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .line 37
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->repostsTab:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->selectTab(Landroid/widget/TextView;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->starredTab:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->unselectTab(Landroid/widget/TextView;)V

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->currentTab:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .line 43
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->starredTab:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->selectTab(Landroid/widget/TextView;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->repostsTab:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->unselectTab(Landroid/widget/TextView;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnTabClickedListener(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->listener:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;

    .line 31
    return-void
.end method
