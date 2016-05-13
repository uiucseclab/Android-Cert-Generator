.class public Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;
.super Ljava/lang/Object;
.source "override-"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcom/facebook/nodex/resources/NodexResources;

.field private final d:Landroid/content/pm/PackageManager;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$EnsureDexExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/facebook/nodex/resources/NodexResources;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/nodex/resources/NodexResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->c:Lcom/facebook/nodex/resources/NodexResources;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->d:Landroid/content/pm/PackageManager;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->e:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->g:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$NoDiskSpaceDexExceptionHandler;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$NoDiskSpaceDexExceptionHandler;-><init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$PermissionDeniedDexExceptionHandler;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$PermissionDeniedDexExceptionHandler;-><init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$DataDirectoryNotOwnedByUserDexExceptionHandler;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$DataDirectoryNotOwnedByUserDexExceptionHandler;-><init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$ReadOnlyFileSystemDexExceptionHandler;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$ReadOnlyFileSystemDexExceptionHandler;-><init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedApplicationStateExceptionHandler;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedApplicationStateExceptionHandler;-><init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$UnsatisfiedLinkErrorDexExceptionHandler;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$UnsatisfiedLinkErrorDexExceptionHandler;-><init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedXzDexExceptionHandler;

    invoke-direct {v1, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$CorruptedXzDexExceptionHandler;-><init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->f:Ljava/util/List;

    .line 85
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MarketUrlsShouldUseHelper",
            "BadMethodUse-java.util.HashMap._Constructor"
        }
    .end annotation

    .prologue
    const/high16 v5, 0x10000

    .line 165
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 166
    const-string v0, "com.android.vending"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "com.google.market"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "com.amazon.venezia"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "amzn://apps/android?p="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 186
    const v1, 0x7fffffff

    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    move-object v3, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 189
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 190
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v2, :cond_2

    .line 192
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v1, v0

    move v0, v2

    :goto_2
    move v2, v0

    move-object v3, v1

    .line 194
    goto :goto_1

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method


# virtual methods
.method public final a()Lcom/facebook/nodex/startup/splashscreen/NodexError;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->g:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    .line 95
    new-instance v1, Lcom/facebook/common/dextricks/DexDiagnostics;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/common/dextricks/DexDiagnostics;-><init>(Landroid/content/Context;)V

    .line 99
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 100
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b(Landroid/content/Context;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    const-string v1, "nodex_cannot_launch_fb_app_string"

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    const-string v1, "nodex_unsupported_android_version_string"

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->c(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unsupported android version (Honeycomb 3.0)"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a()Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/DexDiagnostics;->isDirectoryOwnedByMe()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b(Landroid/content/Context;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    const-string v1, "nodex_cannot_launch_fb_app_string"

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->b(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Directory owner uid does not match process uid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->UNINSTALL:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a()Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    const/4 v1, 0x4

    .line 119
    :try_start_0
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const/4 v1, 0x5

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/facebook/common/dextricks/DexLibLoader;->loadAll(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->g:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a:Ljava/lang/String;

    const-string v2, "InitRunnable.run(): dex completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 125
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$EnsureDexExceptionHandler;

    .line 126
    invoke-interface {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$EnsureDexExceptionHandler;->a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    goto :goto_0

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Failed to ensure dexs."

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->g:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->g:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    iget-boolean v0, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->hadToGenerateDexes:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->e()Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->c:Lcom/facebook/nodex/resources/NodexResources;

    const-string v3, "nodex_uninstall_message_store_string"

    invoke-virtual {v2, v3}, Lcom/facebook/nodex/resources/NodexResources;->c(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->c:Lcom/facebook/nodex/resources/NodexResources;

    const-string v2, "nodex_uninstall_message_string"

    invoke-virtual {v1, v2}, Lcom/facebook/nodex/resources/NodexResources;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
