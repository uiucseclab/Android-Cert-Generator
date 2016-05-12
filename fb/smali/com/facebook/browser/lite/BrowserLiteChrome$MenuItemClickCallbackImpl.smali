.class public Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;
.super Ljava/lang/Object;
.source "qe"


# instance fields
.field public final synthetic a:Lcom/facebook/browser/lite/BrowserLiteChrome;


# direct methods
.method public constructor <init>(Lcom/facebook/browser/lite/BrowserLiteChrome;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a()Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->b(Ljava/util/Map;)V

    .line 497
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V
    .locals 6

    .prologue
    .line 421
    invoke-virtual {p1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {p1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->b()Landroid/app/PendingIntent;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a(Landroid/app/PendingIntent;)V

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->b()Z

    .line 450
    :cond_0
    return-void

    .line 426
    :cond_1
    const-string v1, "ACTION_GO_BACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    .line 453
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 454
    const-string v3, "action"

    const-string v4, "go_back"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {v2}, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a(Ljava/util/Map;)V

    .line 456
    .line 428
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 429
    :cond_2
    const-string v1, "ACTION_GO_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    .line 459
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 460
    const-string v3, "action"

    const-string v4, "go_forward"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {v2}, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a(Ljava/util/Map;)V

    .line 462
    .line 431
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 432
    :cond_3
    const-string v1, "ACTION_OPEN_WITH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->i()Landroid/content/Intent;

    move-result-object v0

    .line 434
    .line 465
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v2, v2, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/facebook/browser/lite/common/ContextHelper;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 466
    invoke-static {v2}, Lcom/facebook/browser/lite/common/ContextHelper;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    .line 467
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 468
    const-string v4, "action"

    const-string v5, "open_with"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v4, "destination"

    if-eqz v2, :cond_6

    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static {v3}, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a(Ljava/util/Map;)V

    .line 471
    .line 435
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/facebook/browser/lite/common/ContextHelper;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 436
    :cond_4
    const-string v1, "ACTION_LAUNCH_APP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 437
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v1, "extra_app_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 439
    .line 474
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v2, v2, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/facebook/browser/lite/common/ContextHelper;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 477
    invoke-static {v2}, Lcom/facebook/browser/lite/common/ContextHelper;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    .line 478
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 479
    const-string v4, "action"

    const-string v5, "launch_app"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v4, "destination"

    if-eqz v2, :cond_7

    :goto_2
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {v3}, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a(Ljava/util/Map;)V

    .line 482
    .line 440
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/facebook/browser/lite/common/ContextHelper;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 441
    :cond_5
    const-string v1, "ACTION_INSTALL_APP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v1, "extra_install_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 444
    .line 485
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v2, v2, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/facebook/browser/lite/common/ContextHelper;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 488
    invoke-static {v2}, Lcom/facebook/browser/lite/common/ContextHelper;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    .line 489
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 490
    const-string v4, "action"

    const-string v5, "install_app"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v4, "destination"

    if-eqz v2, :cond_8

    :goto_3
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-static {v3}, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a(Ljava/util/Map;)V

    .line 493
    .line 445
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;->a:Lcom/facebook/browser/lite/BrowserLiteChrome;

    iget-object v1, v1, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/facebook/browser/lite/common/ContextHelper;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 469
    :cond_6
    const-string v2, "unknown"

    goto/16 :goto_1

    .line 480
    :cond_7
    const-string v2, "unknown"

    goto :goto_2

    .line 491
    :cond_8
    const-string v2, "unknown"

    goto :goto_3
.end method
