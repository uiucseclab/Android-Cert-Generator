.class public abstract Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;
.super Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;
.source "pitch"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/os/Handler;

.field protected c:Lcom/facebook/nodex/resources/NodexResources;

.field protected d:Ljava/util/concurrent/ExecutorService;

.field protected e:Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

.field public f:Lcom/facebook/nodex/startup/crashloop/CrashLoop;

.field private g:Landroid/content/ContentResolver;

.field public h:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

.field private i:Z

.field private j:Z

.field public k:Ljava/lang/String;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Ljava/lang/Runnable;

.field public o:Landroid/widget/TextView;

.field public p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;-><init>()V

    .line 397
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ImprovedNewApi",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 319
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 320
    const-string v1, "rotationX"

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 321
    const-string v2, "scaleX"

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 322
    const-string v3, "scaleY"

    new-array v4, v8, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 323
    const-string v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_3

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 324
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    const-wide/16 v6, 0x258

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 326
    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 327
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v8

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 328
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 330
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 331
    const-string v2, "scaleX"

    new-array v3, v8, [F

    fill-array-data v3, :array_4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 332
    const-string v3, "scaleY"

    new-array v4, v8, [F

    fill-array-data v4, :array_5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 333
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 334
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 335
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 320
    nop

    :array_0
    .array-data 4
        -0x3dcc0000    # -45.0f
        0x0
    .end array-data

    .line 321
    :array_1
    .array-data 4
        0x40200000    # 2.5f
        0x3f59999a    # 0.85f
    .end array-data

    .line 322
    :array_2
    .array-data 4
        0x40200000    # 2.5f
        0x3f59999a    # 0.85f
    .end array-data

    .line 323
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 331
    :array_4
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    .line 332
    :array_5
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private o()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/resources/NodexResources;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->setContentView(I)V

    .line 184
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->p()V

    .line 185
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 229
    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {v1, v0}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->l:Landroid/view/View;

    .line 234
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$1;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Ljava/lang/Runnable;

    .line 241
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d()Ljava/lang/String;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {v1, v0}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Landroid/widget/TextView;

    .line 249
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$2;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->p:Ljava/lang/Runnable;

    .line 256
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->q()V

    goto :goto_0
.end method

.method private q()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c()Ljava/lang/String;

    move-result-object v2

    .line 261
    if-nez v2, :cond_0

    .line 305
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 266
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const-wide/16 v0, 0x3e8

    .line 269
    :goto_1
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 270
    const-wide/16 v4, 0x258

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 271
    invoke-virtual {v3, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 272
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 273
    new-instance v4, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$3;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;J)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 293
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    invoke-virtual {v0, v2}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m:Landroid/view/View;

    .line 294
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$4;

    invoke-direct {v0, p0, v3}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$4;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Ljava/lang/Runnable;

    .line 301
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a(Landroid/view/View;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->p:Ljava/lang/Runnable;

    goto :goto_0

    .line 266
    :cond_1
    if-le v0, v6, :cond_2

    const-wide/16 v0, 0x7d0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x1388

    goto :goto_1
.end method

.method private r()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 379
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v1, "startRemoteProcessTargetActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput-boolean v3, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->i:Z

    .line 529
    iput-boolean v3, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->j:Z

    .line 532
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n()V

    .line 536
    invoke-virtual {p0, v2, v2}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->overridePendingTransition(II)V

    .line 537
    return-void
.end method

.method private u()Z
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 607
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 609
    if-eqz v0, :cond_1

    .line 610
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 611
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Lcom/facebook/nodex/startup/splashscreen/NodexError;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.content.Context.startActivity"
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 657
    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 658
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 659
    return-void
.end method

.method protected final a(Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;)V
    .locals 7

    .prologue
    .line 463
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v6

    .line 466
    if-eqz v6, :cond_0

    .line 468
    invoke-static {}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a()Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-virtual {v1}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b()Z

    move-result v1

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->c()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f()Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->a(Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;ZJLcom/facebook/common/udppriming/client/UDPPrimingStatus;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    .line 502
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 491
    :try_start_1
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v2, "Remote exception from main process."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    throw v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v1, "Failed to acquire provider to warmup the main process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Ljava/lang/String;)V

    const v2, 0x1051691d

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/lang/String;
.end method

.method protected abstract h()Landroid/net/Uri;
.end method

.method protected abstract i()Landroid/content/ComponentName;
.end method

.method protected abstract j()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected k()V
    .locals 3

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 207
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->l()V

    .line 202
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n()V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$InitRunnable;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    const v2, 0x62f5e415

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method protected l()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method protected m()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 631
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 632
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->j()Ljava/util/Set;

    move-result-object v0

    .line 633
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->i()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 637
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    return-object v1
.end method

.method protected n()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.content.Context.startActivity"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->e:Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;->b()Z

    .line 650
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 651
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 652
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x5bec4cca

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    .line 167
    new-instance v1, Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/nodex/startup/crashloop/CrashLoop;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->f:Lcom/facebook/nodex/startup/crashloop/CrashLoop;

    .line 168
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->g:Landroid/content/ContentResolver;

    .line 169
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->h:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    .line 170
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    .line 171
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d:Ljava/util/concurrent/ExecutorService;

    .line 172
    new-instance v1, Lcom/facebook/nodex/resources/NodexResources;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/resources/NodexResources;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    .line 173
    new-instance v1, Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->e:Lcom/facebook/nodex/startup/signal/DialtoneSignalFile;

    .line 175
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o()V

    .line 176
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k()V

    .line 177
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x11024dee

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x2f63e288

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onDestroy()V

    .line 218
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->p:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->p:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 225
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x7988757a

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x3e7eeab4

    invoke-static {v6, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-super {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onPause()V

    .line 559
    iget-boolean v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->i:Z

    if-eqz v1, :cond_0

    .line 561
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;-><init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V

    .line 575
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    const v3, 0x5cbe1e52

    invoke-static {v2, v1, v4, v5, v3}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 579
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->j:Z

    .line 581
    :cond_0
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x87cff29

    invoke-static {v6, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0xdd16079

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 588
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-super {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onResume()V

    .line 590
    iget-boolean v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->j:Z

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v2, "onResume() - finishing the activity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 603
    :cond_0
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x1f9bbd2c

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v1, "onRemoteProcessInitialized()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->t()V

    .line 521
    :cond_0
    return-void
.end method
