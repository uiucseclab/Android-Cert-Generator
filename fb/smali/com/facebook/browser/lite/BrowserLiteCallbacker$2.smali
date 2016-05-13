.class Lcom/facebook/browser/lite/BrowserLiteCallbacker$2;
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
    .line 90
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$2;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$2;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d(Landroid/content/Context;)V

    .line 94
    return-void
.end method
