.class public Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;
.super Landroid/widget/ListPopupWindow;
.source "priority"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;",
            ">;",
            "Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->b:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->c:Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;

    .line 32
    return-void
.end method

.method private static a(III)I
    .locals 0

    .prologue
    .line 69
    if-le p0, p2, :cond_0

    .line 74
    :goto_0
    return p2

    .line 71
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 72
    goto :goto_0

    :cond_1
    move p2, p0

    .line 74
    goto :goto_0
.end method

.method private a(Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 46
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 49
    invoke-virtual {p1}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->getCount()I

    move-result v4

    move v1, v0

    .line 50
    :goto_0
    if-ge v1, v4, :cond_1

    .line 51
    invoke-virtual {p1, v1, v7, v7}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 52
    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    .line 53
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-le v6, v0, :cond_0

    .line 54
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0bcb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 60
    iget-object v2, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v2, v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0bca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 64
    invoke-static {v0, v1, v2}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->setContentWidth(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->setModal(Z)V

    .line 36
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->setInputMethodMode(I)V

    .line 39
    new-instance v0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;-><init>(Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a(Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;)V

    .line 42
    return-void
.end method
