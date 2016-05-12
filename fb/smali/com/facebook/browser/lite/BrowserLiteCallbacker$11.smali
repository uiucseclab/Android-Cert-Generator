.class Lcom/facebook/browser/lite/BrowserLiteCallbacker$11;
.super Ljava/lang/Object;
.source "qt  "

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$11;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$11;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$11;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$11;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d(Landroid/content/Context;)V

    .line 292
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 293
    return-void
.end method
