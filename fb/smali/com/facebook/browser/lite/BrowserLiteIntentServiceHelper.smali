.class public Lcom/facebook/browser/lite/BrowserLiteIntentServiceHelper;
.super Ljava/lang/Object;
.source "pt_PT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/browser/lite/BrowserLiteIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    const-string v1, "EXTRA_ACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 24
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ACTION_CLEAR_DATA"

    invoke-static {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteIntentServiceHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    return-void
.end method
