.class public Lcom/facebook/browser/lite/BrowserLiteIntentService;
.super Landroid/app/IntentService;
.source "pub"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "BrowserLiteIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteIntentService;->setIntentRedelivery(Z)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 25
    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string v0, "EXTRA_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ui/browser/common/BrowserUtil;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    :sswitch_0
    const-string v2, "ACTION_CLEAR_DATA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "ACTION_WARM_UP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x710ec3db -> :sswitch_0
        0x4b009d8c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
