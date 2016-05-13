.class public Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;
.super Ljava/lang/Object;
.source "publish_result_history"


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/browser/lite/BrowserLiteFragment;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 776
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteFragment;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    const/4 v1, 0x1

    .line 61
    iput v1, v0, Lcom/facebook/browser/lite/BrowserLiteFragment;->j:I

    .line 782
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->c()V

    .line 783
    return-void
.end method
