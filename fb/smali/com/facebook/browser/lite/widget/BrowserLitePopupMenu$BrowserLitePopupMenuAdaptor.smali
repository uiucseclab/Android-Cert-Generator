.class Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;
.super Landroid/widget/BaseAdapter;
.source "priority"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;


# direct methods
.method public constructor <init>(Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v0, v0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v0, v0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v0, v0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    .line 97
    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 98
    iget-object v1, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v1, v1, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030188

    invoke-virtual {v1, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;

    .line 103
    iget-object v4, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v4, v4, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->c:Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;

    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    invoke-virtual {v1, v0, v4, v2}, Lcom/facebook/browser/lite/widget/MenuItemNavigationView;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;Z)V

    .line 112
    :goto_1
    return-object v1

    :cond_0
    move v2, v3

    .line 103
    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v1, v1, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030187

    invoke-virtual {v1, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/browser/lite/widget/MenuItemTextView;

    .line 111
    iget-object v4, p0, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v4, v4, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->c:Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;

    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu$BrowserLitePopupMenuAdaptor;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    invoke-virtual {v1, v0, v4, v2}, Lcom/facebook/browser/lite/widget/MenuItemTextView;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;Z)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method
