.class public final Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
.super Ljava/lang/Object;
.source "publishAndWait"


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_MENU_ITEMS"

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(IIII)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_ANIMATION"

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x2

    aput p3, v2, v3

    const/4 v3, 0x3

    aput p4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 126
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 104
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a(Ljava/lang/String;ILandroid/app/PendingIntent;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;

    .line 105
    return-object p0
.end method

.method public final a(Ljava/lang/String;ILandroid/app/PendingIntent;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->b:Ljava/util/ArrayList;

    .line 85
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v1, "KEY_LABEL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "KEY_ICON_RES"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "KEY_PENDING_INTENT"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v1, "KEY_LABEL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz p3, :cond_0

    .line 149
    const-string v1, "KEY_BLACKLIST_DOMAIN"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    const-string v1, "KEY_PENDING_INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v2, "com.facebook.browser.lite.intent.EXTRA_ACTION_BUTTON"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 3

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object p0

    .line 178
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    const-string v1, "KEY_PREFETCH_FINAL_URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "KEY_PREFETCH_FILE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "KEY_PREFETCH_MIME_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "KEY_PREFETCH_ENCODING"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v2, "com.facebook.browser.lite.intent.EXTRA_PREFETCH_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;"
        }
    .end annotation

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_COOKIES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 112
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/Locale;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_LOCALE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 210
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_IS_RAGE_SHAKE_AVAILABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_THEME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    return-object p0
.end method

.method public final b(Z)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_KILL_ON_EXIT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_UA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    return-object p0
.end method

.method public final c(Z)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_SHOW_DOMAIN_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_POST_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    return-object p0
.end method

.method public final d(Z)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_LOGCAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    return-object p0
.end method

.method public final e(Z)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_IS_IN_APP_BROWSER_PROFILING_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    return-object p0
.end method

.method public final f(Z)Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntent$Builder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_IS_QUOTE_SHARE_ENTRY_POINT_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    return-object p0
.end method
