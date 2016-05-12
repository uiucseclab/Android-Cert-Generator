.class public Lcom/facebook/browser/lite/BrowserLiteActivity;
.super Landroid/app/Activity;
.source "quick"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field public a:Lcom/facebook/browser/lite/BrowserLiteFragment;

.field private b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

.field private c:Lcom/facebook/browser/lite/logging/TimeSpentLogger;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->d:Z

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v0, "lead_gen_continued_flow_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const v0, 0x7f0e05d7

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 82
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView;

    .line 84
    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView;->setUpView(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 214
    const-string v1, "Quote"

    invoke-interface {v0, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 215
    const v1, 0x7f02015f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 216
    new-instance v1, Lcom/facebook/browser/lite/BrowserLiteActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/browser/lite/BrowserLiteActivity$3;-><init>(Lcom/facebook/browser/lite/BrowserLiteActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_IS_RAGE_SHAKE_AVAILABLE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->c()Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;

    invoke-direct {v0}, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "rageshake_listener_fragment"

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 99
    :cond_0
    return-void
.end method

.method private c()Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;
    .locals 2
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "rageshake_listener_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 110
    check-cast v0, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 229
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "finishInputLocked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 232
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 233
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_LOCALE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 241
    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 245
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 250
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 251
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_ANIMATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 257
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->overridePendingTransition(II)V

    .line 261
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_ANIMATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 266
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->overridePendingTransition(II)V

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->d:Z

    .line 103
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v0, p1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a(I)V

    .line 104
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->finish()V

    .line 105
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.browser.lite.intent.EXTRA_KILL_ON_EXIT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c(Landroid/content/Context;)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->e()V

    .line 178
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 150
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 152
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->h()V

    .line 157
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/facebook/browser/lite/BrowserLiteActivity;->a(Landroid/view/ActionMode;)V

    .line 207
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->a(I)V

    .line 195
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x4e64304f    # -4.5347055E-9f

    invoke-static {v4, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->g()V

    .line 48
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->f()V

    .line 49
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.facebook.browser.lite.intent.EXTRA_LOGCAT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 12
    sput-boolean v0, Lcom/facebook/browser/lite/logging/Logcat;->a:Z

    .line 13
    .line 50
    const v0, 0x7f030186

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0e05d6

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/browser/lite/BrowserLiteFragment;

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    .line 53
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    new-instance v2, Lcom/facebook/browser/lite/BrowserLiteActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/browser/lite/BrowserLiteActivity$1;-><init>(Lcom/facebook/browser/lite/BrowserLiteActivity;)V

    invoke-virtual {v0, v2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(Lcom/facebook/browser/lite/BrowserLiteActivity$1;)V

    .line 60
    invoke-static {}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a()Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    .line 61
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/facebook/browser/lite/logging/TimeSpentLogger;->a()Lcom/facebook/browser/lite/logging/TimeSpentLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->c:Lcom/facebook/browser/lite/logging/TimeSpentLogger;

    .line 64
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->b()V

    .line 65
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->a()V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.facebook.browser.lite.intent.EXTRA_IS_QUOTE_SHARE_ENTRY_POINT_ENABLED"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 15
    sput-boolean v0, Lcom/facebook/browser/lite/quoteshare/QuoteShareUtil;->a:Z

    .line 16
    .line 70
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x68b5afaa

    invoke-static {v4, v0, v2, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x70f7590

    invoke-static {v6, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->c()V

    .line 128
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->c()Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->onPause()V

    .line 132
    :cond_0
    invoke-static {}, Lcom/facebook/ui/browser/common/BrowserUtil;->a()V

    .line 133
    iget-boolean v1, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->d:Z

    if-eqz v1, :cond_1

    .line 137
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/browser/lite/BrowserLiteActivity$2;

    invoke-direct {v2, p0}, Lcom/facebook/browser/lite/BrowserLiteActivity$2;-><init>(Lcom/facebook/browser/lite/BrowserLiteActivity;)V

    const-wide/16 v4, 0x1f4

    const v3, -0x29735042

    invoke-static {v1, v2, v4, v5, v3}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 145
    :cond_1
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x3ef86fc6

    invoke-static {v6, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x49eadb30

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->b:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iget-object v2, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v2}, Lcom/facebook/browser/lite/BrowserLiteFragment;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/facebook/browser/lite/BrowserLiteActivity;->c()Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Lcom/facebook/browser/lite/bugreport/RageShakeListenerFragment;->onResume()V

    .line 122
    :cond_0
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0xf7546a6

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity;->c:Lcom/facebook/browser/lite/logging/TimeSpentLogger;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/logging/TimeSpentLogger;->b()V

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 201
    return-void
.end method
