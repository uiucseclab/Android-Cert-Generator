.class Lcom/facebook/browser/lite/BrowserLiteCallbacker$4;
.super Ljava/lang/Object;
.source "qt  "

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$4;->a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$4;->a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/browser/lite/logging/TimeSpentLogger;->a()Lcom/facebook/browser/lite/logging/TimeSpentLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/browser/lite/logging/TimeSpentLogger;->c()[J

    move-result-object v0

    .line 151
    array-length v1, v0

    if-lez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$4;->a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    invoke-interface {v1, v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->a([J)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$4;->a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    invoke-interface {v0}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method
