.class public Lcom/facebook/browser/lite/BrowserLiteChrome;
.super Landroid/widget/RelativeLayout;
.source "qe"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field public f:Landroid/webkit/WebView;

.field private g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ImageView;

.field public k:Landroid/content/Intent;

.field private l:Landroid/view/View$OnClickListener;

.field public m:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/facebook/browser/lite/BrowserLiteChrome;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/browser/lite/BrowserLiteChrome;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->c()V

    .line 61
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/browser/lite/BrowserLiteChrome;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    invoke-direct {v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;-><init>()V

    .line 278
    invoke-virtual {p1, v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V

    .line 279
    new-instance v1, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    const-string v2, "ACTION_GO_BACK"

    invoke-direct {v1, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Z)Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V

    .line 282
    new-instance v1, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    const-string v2, "ACTION_GO_FORWARD"

    invoke-direct {v1, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Z)Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V

    .line 286
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 290
    const-string v1, "KEY_PENDING_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 292
    const-string v2, "KEY_LABEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    const/4 v2, 0x0

    .line 294
    if-nez v1, :cond_1

    .line 296
    const-string v0, "MENU_OPEN_WITH"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->getOpenWithMenuItem()Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    move-result-object v0

    .line 307
    :goto_1
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p1, v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V

    .line 289
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 300
    :cond_1
    new-instance v2, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    invoke-direct {v2, v1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;-><init>(Landroid/app/PendingIntent;)V

    .line 301
    invoke-virtual {v2, v5}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Ljava/lang/String;)V

    .line 302
    const-string v1, "KEY_ICON_RES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 303
    if-lez v0, :cond_2

    .line 304
    invoke-virtual {v2, v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(I)V

    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 312
    :cond_3
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->getAppInstallMenuItem()Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {p1, v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V

    .line 316
    :cond_4
    return-void

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v2, "com.facebook.browser.lite.intent.EXTRA_ACTION_BUTTON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 95
    const-string v2, "KEY_BLACKLIST_DOMAIN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ui/browser/common/BrowserURLUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030182

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    const v0, 0x7f0e05b6

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->c:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0e05b7

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->d:Landroid/widget/TextView;

    .line 110
    new-instance v0, Lcom/facebook/browser/lite/BrowserLiteChrome$1;

    invoke-direct {v0, p0}, Lcom/facebook/browser/lite/BrowserLiteChrome$1;-><init>(Lcom/facebook/browser/lite/BrowserLiteChrome;)V

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->l:Landroid/view/View$OnClickListener;

    .line 116
    const v0, 0x7f0e05cf

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->i:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0e05d0

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->j:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0e05cd

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->e:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0e05ce

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->h:Landroid/view/View;

    .line 121
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->d()V

    .line 122
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->f()V

    .line 124
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->e()V

    .line 125
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_ACTION_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 151
    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string v1, "KEY_LABEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v2, "KEY_PENDING_INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->e:Landroid/widget/TextView;

    new-instance v2, Lcom/facebook/browser/lite/BrowserLiteChrome$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome$2;-><init>(Lcom/facebook/browser/lite/BrowserLiteChrome;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 185
    const-string v0, "THEME_MESSENGER"

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v2, "com.facebook.browser.lite.intent.EXTRA_THEME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 193
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_MENU_ITEMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->h:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->h:Landroid/view/View;

    new-instance v2, Lcom/facebook/browser/lite/BrowserLiteChrome$3;

    invoke-direct {v2, p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome$3;-><init>(Lcom/facebook/browser/lite/BrowserLiteChrome;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->h()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private getAppInstallMenuItem()Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;
    .locals 6

    .prologue
    .line 319
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v1, "extra_install_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 321
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    .line 325
    :cond_1
    const-string v1, "extra_app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    new-instance v0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    const-string v2, "ACTION_INSTALL_APP"

    invoke-direct {v0, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;-><init>(Ljava/lang/String;)V

    .line 327
    const v2, 0x7f02015b

    invoke-virtual {v0, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(I)V

    .line 328
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f091307

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f091308

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOpenInSpecificAppMenuItem()Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;
    .locals 7

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v1, "extra_app_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 341
    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 356
    :goto_0
    return-object v0

    .line 345
    :cond_0
    const v1, 0x7f020161

    .line 346
    const-string v2, "extra_app_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    new-instance v0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    const-string v3, "ACTION_LAUNCH_APP"

    invoke-direct {v0, v3}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f091309

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Ljava/lang/String;)V

    .line 355
    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(I)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09130a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getOpenWithMenuItem()Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->getOpenInSpecificAppMenuItem()Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-object v0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->i()Landroid/content/Intent;

    move-result-object v0

    .line 375
    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/facebook/browser/lite/common/ContextHelper;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 378
    if-nez v0, :cond_1

    move-object v0, v1

    .line 380
    goto :goto_0

    .line 381
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_3

    .line 382
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    const v1, 0x7f09130b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_1
    new-instance v1, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    const-string v2, "ACTION_OPEN_WITH"

    invoke-direct {v1, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1, v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(Ljava/lang/String;)V

    .line 397
    const v0, 0x7f020162

    invoke-virtual {v1, v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a(I)V

    move-object v0, v1

    .line 398
    goto :goto_0

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    const v2, 0x7f091309

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 393
    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 402
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->m:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->m:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;

    invoke-virtual {v1}, Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/browser/lite/BrowserLiteWebView;)V
    .locals 3

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    .line 65
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->setTitle(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/facebook/browser/lite/BrowserLiteWebView;->getWebChromeClient()Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteWebChromeClient;->a()V

    .line 68
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_SHOW_DOMAIN_NAME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->setDomain(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    new-instance v0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;

    invoke-direct {v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;-><init>()V

    .line 240
    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V

    .line 241
    invoke-direct {p0, v0, p1}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;Ljava/util/ArrayList;)V

    .line 242
    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->f()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;

    invoke-direct {v3, p0}, Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;-><init>(Lcom/facebook/browser/lite/BrowserLiteChrome;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/facebook/browser/lite/BrowserLiteChrome$MenuItemClickCallbackImpl;)V

    iput-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    .line 250
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->a()V

    .line 251
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->setAnchorView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteChrome$4;

    invoke-direct {v1, p0}, Lcom/facebook/browser/lite/BrowserLiteChrome$4;-><init>(Lcom/facebook/browser/lite/BrowserLiteChrome;)V

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->show()V

    .line 260
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 261
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteChrome$5;

    invoke-direct {v1, p0}, Lcom/facebook/browser/lite/BrowserLiteChrome$5;-><init>(Lcom/facebook/browser/lite/BrowserLiteChrome;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->k:Landroid/content/Intent;

    const-string v2, "com.facebook.browser.lite.intent.EXTRA_MENU_ITEMS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-virtual {p0, v1}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a(Ljava/util/ArrayList;)V

    .line 223
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;->dismiss()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->g:Lcom/facebook/browser/lite/widget/BrowserLitePopupMenu;

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 415
    return-object v0
.end method

.method public setBrowserChromeDelegate(Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->m:Lcom/facebook/browser/lite/BrowserLiteFragment$BrowserChromeDelegateImpl;

    .line 147
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p1, :cond_0

    move-object v0, v1

    .line 75
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteChrome;->a(Landroid/net/Uri;)V

    .line 76
    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/browser/lite/BrowserLiteChrome;->setSubtitle(Ljava/lang/String;)V

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteChrome;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
