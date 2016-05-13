.class public Lcom/facebook/browser/lite/BrowserLiteFragment$3;
.super Ljava/lang/Object;
.source "publish_result_history"


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteFragment;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteFragment;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$3;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/browser/lite/BrowserLiteWebView;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$3;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->h:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {p1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->b(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$3;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Lcom/facebook/browser/lite/BrowserLiteFragment;Z)Z

    .line 327
    return-void
.end method
