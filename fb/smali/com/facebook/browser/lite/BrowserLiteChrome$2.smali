.class Lcom/facebook/browser/lite/BrowserLiteChrome$2;
.super Ljava/lang/Object;
.source "qe"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lcom/facebook/browser/lite/BrowserLiteChrome;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteChrome;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$2;->b:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$2;->a:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x4f032eb1

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$2;->b:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$2;->a:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a(Landroid/app/PendingIntent;)V

    .line 167
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x44756931

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
