.class Lcom/facebook/browser/lite/BrowserLiteCallbacker$12;
.super Ljava/lang/Object;
.source "qt  "

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$12;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$12;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$12;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$12;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$12;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method
