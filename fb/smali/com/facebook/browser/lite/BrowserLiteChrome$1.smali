.class Lcom/facebook/browser/lite/BrowserLiteChrome$1;
.super Ljava/lang/Object;
.source "qe"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteChrome;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteChrome;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$1;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x31ca3d50

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$1;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteChrome;->m:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;

    invoke-virtual {v1}, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;->b()V

    .line 114
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x64b2d3b9

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
