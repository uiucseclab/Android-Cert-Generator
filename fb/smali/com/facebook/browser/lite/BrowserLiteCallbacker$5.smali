.class Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;
.super Ljava/lang/Object;
.source "qt  "

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/browser/lite/BrowserLiteCallbacker;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;->c:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;->c:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;->c:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method
