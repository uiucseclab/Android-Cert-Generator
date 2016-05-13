.class Lcom/facebook/browser/lite/BrowserLiteChrome$3;
.super Ljava/lang/Object;
.source "qe"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/browser/lite/BrowserLiteChrome;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteChrome;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$3;->b:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x21ef806e

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$3;->b:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a(Ljava/util/ArrayList;)V

    .line 209
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x128df467

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
