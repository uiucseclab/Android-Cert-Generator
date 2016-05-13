.class public Lcom/facebook/browser/lite/BrowserLiteWebView;
.super Landroid/webkit/WebView;
.source "pseudo-zip-hash-1-%s-%s-%s-%s"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

.field private c:Lcom/facebook/browser/lite/logging/NavigationTimingLogger;

.field private d:Lcom/facebook/browser/lite/BrowserLiteFragment$3;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/browser/lite/BrowserLiteWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/browser/lite/BrowserLiteWebView;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, -0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->e:Ljava/lang/String;

    .line 34
    iput-wide v2, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->f:J

    .line 35
    iput-wide v2, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->g:J

    .line 36
    iput-wide v2, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->h:J

    .line 37
    iput-wide v2, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->i:J

    .line 56
    new-instance v0, Lcom/facebook/browser/lite/logging/NavigationTimingLogger;

    invoke-direct {v0, p0}, Lcom/facebook/browser/lite/logging/NavigationTimingLogger;-><init>(Lcom/facebook/browser/lite/BrowserLiteWebView;)V

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->c:Lcom/facebook/browser/lite/logging/NavigationTimingLogger;

    .line 57
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->c()V

    .line 58
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 65
    .line 23
    sget-object v2, Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil;->b:Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil$QuoteShareJSInterface;

    if-nez v2, :cond_1

    .line 24
    new-instance v2, Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil$QuoteShareJSInterface;

    invoke-direct {v2}, Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil$QuoteShareJSInterface;-><init>()V

    sput-object v2, Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil;->b:Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil$QuoteShareJSInterface;

    .line 26
    :cond_1
    sget-object v2, Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil;->b:Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil$QuoteShareJSInterface;

    move-object v0, v2

    const-string v1, "QuoteShareInterface"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->c:Lcom/facebook/browser/lite/logging/NavigationTimingLogger;

    invoke-virtual {v0, v4}, Lcom/facebook/browser/lite/logging/NavigationTimingLogger;->a(Z)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->g:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 214
    iput-wide p1, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->g:J

    .line 215
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteWebView;->a:Ljava/lang/String;

    const-string v1, "onResponseEnd %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 188
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 193
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->c:Lcom/facebook/browser/lite/logging/NavigationTimingLogger;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/logging/NavigationTimingLogger;->a()V

    .line 199
    return-void
.end method

.method public final b(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->c:Lcom/facebook/browser/lite/logging/NavigationTimingLogger;

    invoke-virtual {v0, v4}, Lcom/facebook/browser/lite/logging/NavigationTimingLogger;->a(Z)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->h:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 227
    iput-wide p1, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->h:J

    .line 228
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteWebView;->a:Ljava/lang/String;

    const-string v1, "onDomContentLoaded %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->c:Lcom/facebook/browser/lite/logging/NavigationTimingLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/browser/lite/logging/NavigationTimingLogger;->a(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public final c(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->c:Lcom/facebook/browser/lite/logging/NavigationTimingLogger;

    invoke-virtual {v0, v4}, Lcom/facebook/browser/lite/logging/NavigationTimingLogger;->a(Z)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->i:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 239
    iput-wide p1, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->i:J

    .line 240
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteWebView;->a:Ljava/lang/String;

    const-string v1, "onLoadEventEnd %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 151
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 154
    invoke-virtual {v2, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v2, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 156
    const-string v4, "about:blank"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public getDomContentloadedTime()J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->h:J

    return-wide v0
.end method

.method public getFirstScrollReadyTime()J
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->f:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-lez v1, :cond_0

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoadEventEndTime()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->i:J

    return-wide v0
.end method

.method public getResponseEndTime()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->g:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->e:Ljava/lang/String;

    .line 108
    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 120
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getUrlLegacy()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    :cond_2
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlLegacy()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getWebChromeClient()Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->b:Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x30f9ee1a

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 261
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 262
    invoke-static {p0}, Lcom/facebook/ui/browser/common/BrowserUtil;->a(Landroid/webkit/WebView;)V

    .line 263
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x16f3a6de

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    iget-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->f:J

    .line 176
    sget-object v0, Lcom/facebook/browser/lite/BrowserLiteWebView;->a:Ljava/lang/String;

    const-string v1, "onScrollReady %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->d:Lcom/facebook/browser/lite/BrowserLiteFragment$3;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->d:Lcom/facebook/browser/lite/BrowserLiteFragment$3;

    invoke-virtual {v0, p0}, Lcom/facebook/browser/lite/BrowserLiteFragment$3;->a(Lcom/facebook/browser/lite/BrowserLiteWebView;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 143
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOnPageInteractiveListener(Lcom/facebook/browser/lite/BrowserLiteFragment$3;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->d:Lcom/facebook/browser/lite/BrowserLiteFragment$3;

    .line 72
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->e:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 114
    check-cast p1, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteWebView;->b:Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    .line 115
    return-void
.end method
