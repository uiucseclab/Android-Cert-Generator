.class public Lcom/crashlytics/android/internal/D;
.super Lcom/crashlytics/android/internal/u;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/crashlytics/android/internal/ao;

.field private e:Lcom/crashlytics/android/internal/aJ;

.field private f:J

.field private g:Lcom/crashlytics/android/internal/av;

.field private h:Lcom/crashlytics/android/internal/O;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/crashlytics/android/internal/u;-><init>()V

    return-void
.end method

.method public static a()Lcom/crashlytics/android/internal/D;
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    const-class v1, Lcom/crashlytics/android/internal/D;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/v;->a(Ljava/lang/Class;)Lcom/crashlytics/android/internal/u;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/D;

    return-object v0
.end method

.method static synthetic a(Lcom/crashlytics/android/internal/D;)V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/crashlytics/android/internal/D;->getContext()Landroid/content/Context;

    move-result-object v13

    :try_start_0
    new-instance v0, Lcom/crashlytics/android/internal/X;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/X;-><init>()V

    new-instance v1, Lcom/crashlytics/android/internal/ah;

    invoke-direct {v1}, Lcom/crashlytics/android/internal/ah;-><init>()V

    new-instance v2, Lcom/crashlytics/android/internal/aj;

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/internal/v;->h()Ljava/io/File;

    move-result-object v3

    const-string v4, "session_analytics.tap"

    const-string v5, "session_analytics_to_send"

    invoke-direct {v2, v3, v4, v5}, Lcom/crashlytics/android/internal/aj;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/crashlytics/android/internal/K;

    invoke-direct {v9, v0, v1, v2}, Lcom/crashlytics/android/internal/K;-><init>(Lcom/crashlytics/android/internal/X;Lcom/crashlytics/android/internal/ah;Lcom/crashlytics/android/internal/aj;)V

    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->d:Lcom/crashlytics/android/internal/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ao;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->d:Lcom/crashlytics/android/internal/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ao;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->d:Lcom/crashlytics/android/internal/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ao;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->d:Lcom/crashlytics/android/internal/ao;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ao;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->d()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    new-instance v0, Lcom/crashlytics/android/internal/F;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/crashlytics/android/internal/D;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/crashlytics/android/internal/D;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/crashlytics/android/internal/D;->g:Lcom/crashlytics/android/internal/av;

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/internal/F;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Lcom/crashlytics/android/internal/av;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    :goto_0
    iget-wide v0, p0, Lcom/crashlytics/android/internal/D;->f:J

    iget-object v2, p0, Lcom/crashlytics/android/internal/D;->e:Lcom/crashlytics/android/internal/aJ;

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/aJ;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "analytics_launched"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    move v0, v11

    :goto_1
    if-eqz v0, :cond_4

    move v0, v11

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "First launch"

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/O;->b()V

    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->e:Lcom/crashlytics/android/internal/aJ;

    iget-object v1, p0, Lcom/crashlytics/android/internal/D;->e:Lcom/crashlytics/android/internal/aJ;

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/aJ;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/aJ;->a(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    iget-object v2, p0, Lcom/crashlytics/android/internal/D;->g:Lcom/crashlytics/android/internal/av;

    iget-object v3, p0, Lcom/crashlytics/android/internal/D;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/internal/D;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/crashlytics/android/internal/D;->b()Ljava/lang/String;

    move-result-object v5

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/crashlytics/android/internal/aS;->a(Landroid/content/Context;Lcom/crashlytics/android/internal/av;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aS;->c()Z

    invoke-static {}, Lcom/crashlytics/android/internal/aS;->a()Lcom/crashlytics/android/internal/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aS;->b()Lcom/crashlytics/android/internal/aX;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/crashlytics/android/internal/aX;->d:Lcom/crashlytics/android/internal/aP;

    iget-boolean v1, v1, Lcom/crashlytics/android/internal/aP;->c:Z

    if-nez v1, :cond_5

    const-string v0, "Disabling analytics collection based on settings flag value."

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/O;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_4
    return-void

    :cond_2
    :try_start_2
    new-instance v1, Lcom/crashlytics/android/internal/O;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/crashlytics/android/internal/D;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/crashlytics/android/internal/D;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/crashlytics/android/internal/D;->g:Lcom/crashlytics/android/internal/av;

    invoke-direct/range {v1 .. v10}, Lcom/crashlytics/android/internal/O;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/K;Lcom/crashlytics/android/internal/av;)V

    iput-object v1, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Crashlytics failed to initialize session analytics."

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v0, v12

    goto :goto_1

    :cond_4
    move v0, v12

    goto :goto_2

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    iget-object v0, v0, Lcom/crashlytics/android/internal/aX;->e:Lcom/crashlytics/android/internal/aK;

    invoke-direct {p0}, Lcom/crashlytics/android/internal/D;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/aK;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/crashlytics/android/internal/D;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lcom/crashlytics/android/internal/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/crashlytics/android/internal/af;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    invoke-virtual {p1}, Lcom/crashlytics/android/internal/af;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/O;->a(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public final a(Lcom/crashlytics/android/internal/ag;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/crashlytics/android/internal/D;->h:Lcom/crashlytics/android/internal/O;

    invoke-virtual {p1}, Lcom/crashlytics/android/internal/ag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/O;->b(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/internal/av;

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/internal/av;-><init>(Lcom/crashlytics/android/internal/q;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/D;->g:Lcom/crashlytics/android/internal/av;

    .line 64
    new-instance v0, Lcom/crashlytics/android/internal/aJ;

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    const-class v2, Lcom/crashlytics/android/internal/D;

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/internal/v;->a(Ljava/lang/Class;)Lcom/crashlytics/android/internal/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/internal/aJ;-><init>(Lcom/crashlytics/android/internal/u;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/D;->e:Lcom/crashlytics/android/internal/aJ;

    .line 67
    invoke-virtual {p0}, Lcom/crashlytics/android/internal/D;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 69
    new-instance v2, Lcom/crashlytics/android/internal/ao;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/internal/ao;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/crashlytics/android/internal/D;->d:Lcom/crashlytics/android/internal/ao;

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/crashlytics/android/internal/D;->a:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/crashlytics/android/internal/D;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 74
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/internal/D;->b:Ljava/lang/String;

    .line 75
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0.0"

    :goto_0
    iput-object v0, p0, Lcom/crashlytics/android/internal/D;->c:Ljava/lang/String;

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_1

    .line 79
    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/crashlytics/android/internal/D;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crashlytics/android/internal/E;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/internal/E;-><init>(Lcom/crashlytics/android/internal/D;)V

    const-string v2, "Crashlytics Initializer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/internal/D;->f:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Error setting up app properties"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
