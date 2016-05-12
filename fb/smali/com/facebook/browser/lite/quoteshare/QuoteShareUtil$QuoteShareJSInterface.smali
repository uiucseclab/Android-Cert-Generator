.class public Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil$QuoteShareJSInterface;
.super Ljava/lang/Object;
.source "process_labels"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportSelectedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 44
    .line 30
    invoke-static {}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a()Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 45
    return-void
.end method
