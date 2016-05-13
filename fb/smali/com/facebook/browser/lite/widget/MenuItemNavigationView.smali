.class public Lcom/facebook/browser/lite/widget/MenuItemNavigationView;
.super Landroid/widget/LinearLayout;
.source "presentationTimeOffset"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method private a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;Landroid/widget/ImageButton;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->g()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 47
    invoke-virtual {p1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/facebook/browser/lite/widget/MenuItemNavigationView$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView$1;-><init>(Lcom/facebook/browser/lite/widget/MenuItemNavigationView;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->f()Ljava/util/ArrayList;

    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    const v1, 0x7f0e05da

    invoke-virtual {p0, v1}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;Landroid/widget/ImageButton;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    const v1, 0x7f0e05db

    invoke-virtual {p0, v1}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;Landroid/widget/ImageButton;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;)V

    .line 39
    :cond_0
    const v0, 0x7f0e05d9

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p3, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void

    .line 39
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
