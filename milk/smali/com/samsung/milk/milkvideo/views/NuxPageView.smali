.class public Lcom/samsung/milk/milkvideo/views/NuxPageView;
.super Landroid/widget/RelativeLayout;
.source "NuxPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private background:Landroid/widget/ImageView;

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private legalLinksHeader:Landroid/widget/TextView;

.field private legalLinksView:Landroid/widget/TextView;

.field private startLink:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03005c

    invoke-static {v0, v1, p0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    const v0, 0x7f06011b

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->background:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f06011f

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->startLink:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f06011e

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->legalLinksView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f06011d

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->legalLinksHeader:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method private setupLegalTextListeners()V
    .locals 13

    .prologue
    const/16 v12, 0x12

    .line 93
    iget-object v9, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->legalLinksView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 94
    .local v5, "resources":Landroid/content/res/Resources;
    const v9, 0x7f080092

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "privacyPolicy":Ljava/lang/String;
    const v9, 0x7f080091

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "terms":Ljava/lang/String;
    const v9, 0x7f080093

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "copyright":Ljava/lang/String;
    const v9, 0x7f08005a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "legalText":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    .local v6, "spannableText":Landroid/text/SpannableString;
    new-instance v4, Lcom/samsung/milk/milkvideo/views/NuxPageView$1;

    invoke-direct {v4, p0, v5}, Lcom/samsung/milk/milkvideo/views/NuxPageView$1;-><init>(Lcom/samsung/milk/milkvideo/views/NuxPageView;Landroid/content/res/Resources;)V

    .line 114
    .local v4, "privacySpan":Landroid/text/style/ClickableSpan;
    new-instance v8, Lcom/samsung/milk/milkvideo/views/NuxPageView$2;

    invoke-direct {v8, p0, v5}, Lcom/samsung/milk/milkvideo/views/NuxPageView$2;-><init>(Lcom/samsung/milk/milkvideo/views/NuxPageView;Landroid/content/res/Resources;)V

    .line 127
    .local v8, "termsSpan":Landroid/text/style/ClickableSpan;
    new-instance v1, Lcom/samsung/milk/milkvideo/views/NuxPageView$3;

    invoke-direct {v1, p0, v5}, Lcom/samsung/milk/milkvideo/views/NuxPageView$3;-><init>(Lcom/samsung/milk/milkvideo/views/NuxPageView;Landroid/content/res/Resources;)V

    .line 140
    .local v1, "copyrightSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6, v4, v9, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 141
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6, v8, v9, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6, v1, v9, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 144
    iget-object v9, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->legalLinksView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v9, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->legalLinksView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 146
    iget-object v9, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->legalLinksView:Landroid/widget/TextView;

    const v10, 0x106000d

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 147
    return-void
.end method


# virtual methods
.method public drawForPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 61
    packed-switch p1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->background:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->legalLinksView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->legalLinksHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/NuxPageView;->setupLegalTextListeners()V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->background:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->background:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->background:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->background:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->startLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->startLink:Landroid/widget/TextView;

    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->startLink:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/ShowRainbowFragmentEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxPageView;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/NuxCompletedEvent;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/events/NuxCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
