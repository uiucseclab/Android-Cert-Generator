.class public Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "pssh"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private c:Landroid/widget/VideoView;

.field private d:Lcom/facebook/browser/lite/BrowserLiteWebView;

.field private e:Lcom/facebook/browser/lite/BrowserLiteFragment;

.field private f:Landroid/widget/FrameLayout;

.field private g:Lcom/facebook/browser/lite/BrowserLiteProgressBar;

.field private h:I

.field private i:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/browser/lite/BrowserLiteWebView;Lcom/facebook/browser/lite/BrowserLiteFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 42
    iput v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->h:I

    .line 50
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->d:Lcom/facebook/browser/lite/BrowserLiteWebView;

    .line 51
    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->e:Lcom/facebook/browser/lite/BrowserLiteFragment;

    .line 52
    const v0, 0x7f0e05c7

    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->f:Landroid/widget/FrameLayout;

    .line 54
    const v0, 0x7f0e0357

    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/BrowserLiteProgressBar;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->g:Lcom/facebook/browser/lite/BrowserLiteProgressBar;

    .line 55
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->g:Lcom/facebook/browser/lite/BrowserLiteProgressBar;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteProgressBar;->setProgress(I)V

    .line 56
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->e:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->c:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 138
    iput-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->c:Landroid/widget/VideoView;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    :goto_0
    iput-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->f:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 163
    :try_start_2
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 167
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->g:Lcom/facebook/browser/lite/BrowserLiteProgressBar;

    iget v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->h:I

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteProgressBar;->setProgress(I)V

    .line 189
    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 204
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->i:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    .line 205
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->i:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 208
    iput-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->i:Landroid/webkit/ValueCallback;

    move v0, v2

    .line 217
    :goto_1
    return v0

    :cond_0
    move-object v0, v1

    .line 205
    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->j:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 212
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 213
    iget-object v3, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->j:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 214
    iput-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->j:Landroid/webkit/ValueCallback;

    move v0, v2

    .line 215
    goto :goto_1

    .line 217
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->onHideCustomView()V

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->e:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Landroid/webkit/WebView;)V

    .line 70
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->onHideCustomView()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 268
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    :goto_0
    return v3

    .line 272
    :cond_0
    sget-object v1, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient$1;->a:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 274
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->d:Lcom/facebook/browser/lite/BrowserLiteWebView;

    invoke-virtual {v1, v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->e:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0, p1, p3, p4}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Landroid/webkit/WebView;ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->onHideCustomView()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 179
    iput p2, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->h:I

    .line 180
    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->g:Lcom/facebook/browser/lite/BrowserLiteProgressBar;

    invoke-virtual {v0, p2}, Lcom/facebook/browser/lite/BrowserLiteProgressBar;->setProgress(I)V

    .line 184
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->d:Lcom/facebook/browser/lite/BrowserLiteWebView;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebView;->b()V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    if-eqz p2, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 100
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_1

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/facebook/browser/lite/BrowserLiteWebView;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->setTitle(Ljava/lang/String;)V

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->e:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Ljava/lang/String;)V

    .line 106
    :cond_2
    return-void

    .line 97
    :cond_3
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0, p1, p3}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 133
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 115
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 116
    instance-of v1, v0, Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->c:Landroid/widget/VideoView;

    .line 118
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 5
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 250
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->j:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->j:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 252
    iput-object v4, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->j:Landroid/webkit/ValueCallback;

    .line 254
    :cond_0
    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->j:Landroid/webkit/ValueCallback;

    .line 255
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v1

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->e:Lcom/facebook/browser/lite/BrowserLiteFragment;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/facebook/browser/lite/BrowserLiteFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 259
    :catch_0
    move-exception v1

    sget-object v1, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->a:Ljava/lang/String;

    const-string v2, "failed to resolve activity"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/facebook/browser/lite/logging/Logcat;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iput-object v4, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->j:Landroid/webkit/ValueCallback;

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->i:Landroid/webkit/ValueCallback;

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->e:Lcom/facebook/browser/lite/BrowserLiteFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
