.class Lcom/facebook/browser/lite/widget/MenuItemNavigationView$1;
.super Ljava/lang/Object;
.source "presentationTimeOffset"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;

.field final synthetic b:Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

.field final synthetic c:Lcom/facebook/browser/lite/widget/MenuItemNavigationView;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/widget/MenuItemNavigationView;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/browser/lite/widget/MenuItemNavigationView$1;->c:Lcom/facebook/browser/lite/widget/MenuItemNavigationView;

    iput-object p2, p0, Lcom/facebook/browser/lite/widget/MenuItemNavigationView$1;->a:Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;

    iput-object p3, p0, Lcom/facebook/browser/lite/widget/MenuItemNavigationView$1;->b:Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x4ae6a823

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/facebook/browser/lite/widget/MenuItemNavigationView$1;->a:Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;

    iget-object v2, p0, Lcom/facebook/browser/lite/widget/MenuItemNavigationView$1;->b:Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    invoke-virtual {v1, v2}, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V

    .line 52
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x7612fb3

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
